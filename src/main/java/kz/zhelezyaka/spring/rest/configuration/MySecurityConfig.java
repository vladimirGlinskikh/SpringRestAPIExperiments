package kz.zhelezyaka.spring.rest.configuration;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;

import static org.springframework.security.core.userdetails.User.*;

@EnableWebSecurity
public class MySecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        UserBuilder userBuilder = User.withDefaultPasswordEncoder();
        auth.inMemoryAuthentication()
                .withUser(userBuilder.username("Vladimir")
                        .password("vl")
                        .roles("DEVELOPER"))
                .withUser(userBuilder.username("Svetlana")
                        .password("sv")
                        .roles("HR"))
                .withUser(userBuilder.username("Aleksandr")
                        .password("al")
                        .roles("SOUL, DEVELOPER"));
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/")
                .hasAnyRole("DEVELOPER", "HR", "SOUL")
                .antMatchers("/hrInfo").hasRole("DEVELOPER")
                .antMatchers("/managerInfo/**").hasRole("HR")
                .and()
                .formLogin()
                .permitAll();

    }
}
