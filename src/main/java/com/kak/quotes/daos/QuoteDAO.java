package com.kak.quotes.daos;

import javax.jdo.PersistenceManager;
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

}

