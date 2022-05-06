<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link href="http://cdn.jsdelivr.net/webjars/bootstrap/5.1.3/css/bootstrap.min.css"
        th:href="@{/webjars/bootstrap/5.1.3/css/bootstrap.min.css}"
        rel="stylesheet" media="screen"/>
</head>
<body>
<div class="container">
  <div class="panel-heading">
    <h2 class="panel-title">Employee Info</h2>
  </div>
  <div class="input-group">
    <form:form action="saveEmployee" modelAttribute="employee">
      <form:hidden path="id"/>
      <table>
        <tr>
          <td><form:label path="name">Name</form:label></td>
          <td><form:input path="name"/></td>
        </tr>
        <tr>
          <td><form:label path="surname">Surname</form:label></td>
          <td><form:input path="surname"/></td>
        </tr>
        <tr>
          <td><form:label path="department">Department</form:label></td>
          <td><form:input path="department"/></td>
        </tr>
        <tr>
          <td><form:label path="salary">Salary</form:label></td>
          <td><form:input path="salary"/></td>
        </tr>
        <tr>
          <td><input class="btn btn-primary" type="submit" value="OK"/></td>
        </tr>
      </table>
    </form:form>
  </div>
</div>
<script src="http://cdn.jsdelivr.net/webjars/jquery/3.5.1/jquery.min.js"
        th:src="@{/webjars/jquery/3.5.1/jquery.min.js}"></script>
</body>
</html>