<%@ page contentType="text/html;charset=UTF-8" %>


<!DOCTYPE html>
<html lang="en">

   <%@ include file="html_head.jsp" %>

   <body>

      <%@ include file="header.jsp" %>


      <div class="page-header">
         <c:if test="${state != null}">
            <p><c:out value="${state}"/></p>
         </c:if>
      </div>
      <div class="container">
         <div class="hero-unit">
            <div class="row">
               <div class="offset2 span6">
                  <form action="add" class="form-horizontal my-center">
                     <div class="control-group">
                        <label class="control-label for="inputQuote">Quote</label>
                        <div class="controls">
                           <input type="text" placeholder="Enter quote" id="inputQuote" name="quote">
                        </div>
                     </div>
                     <div class="control-group">
                        <label class="control-label for="inputAuthor">Author</label>
                        <div class="controls">
                           <input type="text" placeholder="Enter author" id="inputAuthor" name="author">
                        </div>
                     </div>
                     <div class="control-group">
                        <div class="controls">
                           <button class="btn btn-primary" type="submit">Add Quote</button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>

      <!-- Scripts placed at the end of the document so that the pages load faster -->
      <!--script src=""></script-->
   </body>

</html>
