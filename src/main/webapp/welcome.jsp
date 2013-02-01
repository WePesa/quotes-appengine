<%@ page contentType="text/html;charset=UTF-8" %>


<!DOCTYPE html>
<html lang="en">

   <%@ include file="html_head.jsp" %>

   <body>

      <%@ include file="header.jsp" %>

      <div class="container">
         <div class="hero-unit"
            <c:choose>
               <c:when test="${user != null}">
                  <h1> AAAA -- Can also add new quote now! </h1>
               </c:when>
               <c:otherwise>
                  <div class="row">
                     <div class="offset3 span6">
                        <form action="search" class="form-search my-center">
                           <input type="text" name="string" class="input-xlarge search-query">
                           <button type="submit" class="btn">Search</button>
                        </form>
                     </div>
                  </div>
                  <c:if test="${quotes != null}">
                     <div class="row">
                        <div class="offset2 span8">
                           <c:forEach var="quote" items="quotes">
                              <p>${quote.quote} -- ${quote.author}</p>
                           </c:forEach>
                        </div>
                     </div>
                  </c:if>
               </c:otherwise>
            </c:choose>
         </div>
      </div>

      <!-- Scripts placed at the end of the document so that the pages load faster -->
      <!--script src=""></script-->
   </body>

</html>
