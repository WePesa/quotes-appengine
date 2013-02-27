/**
 * Copyright
 */

package com.kak.quotes;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;

import com.kak.quotes.daos.QuoteDAO;
import com.kak.quotes.entities.Quote;


public class SearchServlet extends HttpServlet {
  @Override
  public void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws IOException, ServletException {

    // get search parameter
    String searchString = req.getParameter("string");
    if(searchString != null && searchString != "") {
      // query for it
      QuoteDAO qDAO = new QuoteDAO();
      List<Quote> quotes = qDAO.findQuotes(searchString);

      req.setAttribute("quotes", quotes);
    }


    // and forward the results to JSP
    //resp.sendRedirect("/welcome.jsp");
    req.getRequestDispatcher("/welcome.jsp").forward(req, resp);


 }
}
