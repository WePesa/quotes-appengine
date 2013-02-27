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
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

import com.kak.quotes.daos.QuoteDAO;
import com.kak.quotes.entities.Quote;


public class AddServlet extends HttpServlet {
  @Override
  public void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws IOException, ServletException {

    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();

    // get search parameters
    String quote = req.getParameter("quote");
    String author = req.getParameter("author");

    Quote q = new Quote(quote, author, user.getEmail());

    // query for it
    QuoteDAO qDAO = new QuoteDAO();
    qDAO.saveQuote(q);

    req.setAttribute("state", "Quote added successfully!");

    // and redirect the results to JSP
    //resp.sendRedirect("/add.jsp");
    req.getRequestDispatcher("/add.jsp").forward(req, resp);


 }
}
