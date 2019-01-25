package com.msp.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "order_detail")
public class OrderDetail implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "device_name")
    private String deviceName;

    @Column(name = "quantity")
    private int quantity;

    @Column(name = "price")
    private double price;

    @Column(name = "discount")
    private double discount;

    @Column(name = "ship_fee")
    private double shipFee;

    @Column(name = "total")
    private double total;

    /*----------------------- RELATIONSHIP TABLE -----------------------*/
    //For - Order
    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;
}
