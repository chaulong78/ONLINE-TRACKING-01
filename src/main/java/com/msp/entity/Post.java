package com.msp.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "post")
public class Post implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "active")
    private boolean active;

    @Column(name = "title")
    private String title;

    @Column(name = "content")
    private String content;

    @Column(name = "views")
    private int views;

    /*----------------------- RELATIONSHIP TABLE -----------------------*/
    //For - User
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
}
