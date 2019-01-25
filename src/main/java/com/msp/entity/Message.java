package com.msp.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@Entity
@Table(name = "message")
public class Message implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "content")
    private String content;

    @Column(name = "send_date")
    private Date sendDate;

    @Column(name = "has_read")
    private boolean hasRead;

    @Column(name = "to_id")
    private int toId;

    /*----------------------- RELATIONSHIP TABLE -----------------------*/
    //For - User
    @ManyToOne
    @JoinColumn(name = "from_id")
    private User user;
}
