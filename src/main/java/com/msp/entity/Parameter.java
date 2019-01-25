package com.msp.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@Entity
@Table(name = "parameter")
public class Parameter implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "upload_date")
    private Date uploadDate;

    @Column(name = "heart_rate")
    private int heartRate;

    @Column(name = "oxy")
    private int oxy;

    /*----------------------- RELATIONSHIP TABLE -----------------------*/
    //For - Device
    @ManyToOne
    @JoinColumn(name = "device_id")
    private Device device;
}
