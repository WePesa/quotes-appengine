/**
 * Copyright
 */

package com.kak.quotes;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kak.quotes.daos.QuoteDAO;
import com.kak.quotes.entities.Quote;


public class SearchServlet extends HttpServlet {
  @Override
  public void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws IOException {

    // get search parameter
    String searchString = req.getParameter("string");

    // query for it
    QuoteDAO qDAO = new QuoteDAO();
    List<Quote> quotes = qDAO.findQuotes(searchString);

    req.setAttribute("quotes", quotes);

    // and redirect the results to JSP
    resp.sendRedirect("/welcome.jsp");

 }
}
