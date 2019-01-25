package com.msp.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.Collection;

@Entity
@Table(name = "orders")
public class Order implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "phone")
    private String phone;

    @Column(name = "address")
    private String address;

    @Column(name = "order_date")
    private Date orderDate;

    @Column(name = "receive_date")
    private Date receiveDate;

    @Column(name = "active")
    private byte active;

    @Column(name = "doctor_id")
    private int doctorId;

    /*----------------------- RELATIONSHIP TABLE -----------------------*/
    //For - User
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    //For - OrderDetail
    @OneToMany(mappedBy = "order")
    private Collection<OrderDetail> orderDetails;

    //For - Device
    @ManyToMany
    @JoinTable(name = "order_device",
            joinColumns = @JoinColumn(name = "order_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "device_id", referencedColumnName = "id")
    )
    private Collection<Device> devices;
}
