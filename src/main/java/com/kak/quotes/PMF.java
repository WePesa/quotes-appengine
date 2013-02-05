package com.kak.quotes;

import javax.jdo.JDOHelper;
import javax.jdo.PersistenceManagerFactory;

public final class PMF {
    private static final PersistenceManagerFactory pmfInstance =
        JDOHelper.getPersistenceManagerFactory("default");

    private PMF() {}

    public static PersistenceManagerFactory get() {
        return pmfInstance;
    }
}

