<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
    String firstName = request.getParameter("firstName");
    if (firstName == null) {
        firstName = "default";
    }
    pageContext.setAttribute("firstName", firstName);
    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
    if (user != null) {
        pageContext.setAttribute("user", user);
    }
%>

<!DOCTYPE html>
<html lang="en">

   <head>
      <meta charset="utf-8">
      <title>&ldquo;γνωμικά&rdquo;</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="">
      <meta name="author" content="">
      <link type="text/css" rel="stylesheet" href="/assets/css/main.css"/>
      <link type="text/css" rel="stylesheet" href="/assets/css/bootstrap.css"/>
      <link type="text/css" rel="stylesheet" href="/assets/css/bootstrap-responsive.css"/>
   </head>

   <body>

      <div class="navbar navbar-inverse navbar-fixed-top">
         <div class="navbar-inner">
            <div class="container">
               <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
               </a>
               <a class="brand" href="#"><em>&ldquo;γνωμικά&rdquo;</em></a>
               <div class="nav-collapse collapse">
                  <ul class="nav">
                     <li class="active"><a href="#">Home</a></li>
                     <li><a href="#about">About</a></li>
                     <li><a href="#contact">Contact</a></li>
                  </ul>

                  <p class="navbar-text pull-right">
                     <c:choose>
                        <c:when test="${user != null}">
                           <c:set var="user" scope="page" value="${user}"/>
                           Welcome ${fn:escapeXml(user.nickname)}!
                           <a href="<%= userService.createLogoutURL(request.getRequestURI()) %>">Sign out</a>
                        </c:when>
                        <c:otherwise>
                           Welcome anonymous!
                           <a href="<%= userService.createLoginURL(request.getRequestURI()) %>">Sign in</a>
                        </c:otherwise>
                     </c:choose>
                  </p>

               </div><!--/.nav-collapse -->
            </div>
         </div>
      </div>

      <div class="container">
         <h1>Hello!</h1>
         <p><a href="/guestbook.jsp">Guest Book</a></p>
      </div>

      <!-- Scripts placed at the end of the document so that the pages load faster -->
      <!--script src=""></script-->
   </body>

</html>
