package com.kak.quotes.daos;

import java.util.List;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import com.kak.quotes.entities.Quote;
import com.kak.quotes.PMF;

public class QuoteDAO {

   public void saveQuote(Quote q) {

      PersistenceManager pm = PMF.get().getPersistenceManager();
      try {
         pm.makePersistent(q);
      } finally {
         pm.close();
      }

   }

   public List<Quote> findQuotes(String searchString) {

      PersistenceManager pm = PMF.get().getPersistenceManager();
      Query q = pm.newQuery(Quote.class);
      q.setFilter("quote.startsWith(\"" + searchString + "\")");
      //q.setFilter("quote.matches(\".*" + searchString + ".*\")");
      //q.setFilter("quote.indexOf(\"" + searchString + "\") >= 0");

      List<Quote> results = (List<Quote>) q.execute();
System.out.println("123456");
//System.out.println(results.toString());
      return results;

   }

}

