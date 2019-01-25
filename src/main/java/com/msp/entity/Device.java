package com.msp.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;

@Entity
@Table(name = "device")
@Data
public class Device implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "enabled")
    private boolean enabled;

    @Column(name = "name")
    private String name;

    @Column(name = "version")
    private String version;

    @Column(name = "firmware")
    private String firmware;

    @Column(name = "price")
    private double price;

    /*----------------------- RELATIONSHIP TABLE -----------------------*/
    //For - Order
    @ManyToMany(mappedBy = "devices")
    private Collection<Order> orders;

    //For - Parameter
    @OneToMany(mappedBy = "device")
    private Collection<Parameter> parameters;

    @Override
    public String toString() {
        return "Device{" +
                "id=" + id +
                ", enabled=" + enabled +
                ", name='" + name + '\'' +
                ", version='" + version + '\'' +
                ", firmware='" + firmware + '\'' +
                ", price=" + price +
                '}';
    }
}
