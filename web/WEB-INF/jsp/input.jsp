<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
     <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Input Info</title>
     </head>
     <body>
          <form:form action="${pageContext.request.contextPath }/emp" method="POST" modelAttribute="employee">

              <c:if test="${employee.id == null}">

                  LastName: <form:input path="lastName"/><br>
              </c:if>
              <c:if test="${employee.id != null }">
                  <!--意思应该就是把这个ID留下来，防止重新提交-->
                  <form:hidden path="id"/>
                  <input type="hidden" name="_method" value="PUT"/>
                  <%-- 对于 _method 不能使用 form:hidden 标签, 因为 modelAttribute 对应的 bean 中没有 _method 这个属性 --%>
                  <%-- 
                  <form:hidden path="_method" value="PUT"/>
                  --%>
              </c:if>
              Email:<form:input path="email"/><br>
              <%
                  Map<String, String> genders = new HashMap();
                  genders.put("1", "Male");
                  genders.put("0", "Female");
                  request.setAttribute("genders", genders);


              %>
              Gender:<form:radiobuttons path="gender" items="${genders}" delimiter="<br>"/><br>
              Department:<form:select path="department.id" items="${departments}" itemLabel="departmentName" itemValue="id"></form:select><br>
                  <input type="submit" value="Submit"/>
          </form:form>
     </body>
</html>
