<%@ page contentType="text/html;charset=UTF-8" %>


<!DOCTYPE html>
<html lang="en">

   <jsp:include page="html_head.jsp"/>

   <body>

      <jsp:include page="header.jsp"/>

      <div class="container">
         <div class="hero-unit"
            <c:choose>
               <c:when test="${user != null}">
                  <h1> AAAA </h1>
               </c:when>
               <c:otherwise>

                  <h1>Hello!</h1>
                  <p><a href="/guestbook.jsp">Guest Book</a></p>

               </c:otherwise>
            </c:choose>
         </div>
      </div>

      <!-- Scripts placed at the end of the document so that the pages load faster -->
      <!--script src=""></script-->
   </body>

</html>
