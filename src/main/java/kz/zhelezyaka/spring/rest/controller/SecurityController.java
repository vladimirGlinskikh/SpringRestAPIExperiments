package kz.zhelezyaka.spring.rest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SecurityController {

    @GetMapping("/")
    public String getInfoForAllEmployees() {
        return "viewForAllEmployees";
    }

    @GetMapping("/hrInfo")
    public String getInfoOnlyForHR(){
        return "viewForHR";
    }

    @GetMapping("/managerInfo")
    public String getInfoOnlyForManagers(){
        return "viewForManagers";
    }
}
