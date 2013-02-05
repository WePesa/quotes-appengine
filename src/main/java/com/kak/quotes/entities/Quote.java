package com.kak.quotes.entities;

import com.google.appengine.api.datastore.Key;

import java.util.Set;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Quote {
    @PrimaryKey
    @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
    private Key key;

    @Persistent
    private String quote;

    @Persistent
    private String author;
/*
    @Persistent
    private Set<String> tags;

    @Persistent
    private int likes;
*/
    @Persistent
    private String user;

    public Quote(String quote, String author, /*Set<String> tags, int likes,*/ String user) {
        this.quote = quote;
        this.author = author;
/*        this.tags = tags;
        this.likes = likes;*/
        this.user = user;
    }

    // Accessors for the fields. JDO doesn't use these, but your application does.
    public Key getKey() {
        return key;
    }

    public String getQuote() {
        return quote;
    }
    public void setQuote(String quote) {
        this.quote = quote;
    }

    public String getAruthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
/*
    public Set<String> getTags() {
        return tags;
    }

    public void setTags(Set<String> tags) {
        this.tags = tags;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }
*/
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

}

