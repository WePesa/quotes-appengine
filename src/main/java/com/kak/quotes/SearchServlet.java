/**
 * Copyright
 */

package com.kak.quotes;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchServlet extends HttpServlet {
  @Override
  public void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws IOException {

    // get search parameter
    String searchString = req.getParameter("string");

      resp.setContentType("text/plain");
      resp.getWriter().println("Hello, " + searchString);
    // query for it

    // and redirect the results to JSP
 }
}
