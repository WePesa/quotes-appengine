<%@ page contentType="text/html;charset=UTF-8" %>


<!DOCTYPE html>
<html lang="en">

   <%@ include file="html_head.jsp" %>

   <body>

      <%@ include file="header.jsp" %>

      <div class="container">
         <div class="hero-unit">
            <div class="row">
               <div class="offset2 span6">
                  <form action="search" class="form-search my-center">
                     <div class="input-append">
                        <input type="text" placeholder="Enter keywords..." name="string" class="span3 search-query">
                        <button type="submit" class="btn">Search</button>
                     </div>
                  </form>
               </div>
               <c:if test="${user != null}">
                  <div class="span2">
                     <a href="add.jsp" class="btn btn-primary" type="button">Add New</a>
                  </div>
               </c:if>
            </div>
            <c:if test="${quotes != null}">
               <div class="row">
                  <div class="offset2 span8">
                     <c:forEach var="q" items="${quotes}">
                        <blockquote class="pull-right">
                           <p><c:out value="${q.quote}"/></p>
                           <small><c:out value="${q.author}"/></small>
                        </blockquote>
                     </c:forEach>
                  </div>
               </div>
            </c:if>
         </div>
      </div>

      <!-- Scripts placed at the end of the document so that the pages load faster -->
      <!--script src=""></script-->
   </body>

</html>
