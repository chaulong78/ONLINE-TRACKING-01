package com.msp.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.Collection;

@Entity
@Table(name = "users")
@Data
@AllArgsConstructor
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "enabled")
    private boolean enabled;

    @Column(name = "doctor_active")
    private int doctorActive;

    @Column(name = "user_name", nullable = false, unique = true)
    private String userName;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "email", nullable = false, unique = true)
    private String email;

    @Column(name = "avatar")
    private String avatar;

    @Column(name = "full_name")
    private String fullName;

    @Column(name = "birth_day")
    private Date birthDay;

    @Column(name = "gender")
    private String gender;

    @Column(name = "phone")
    private String phone;

    @Column(name = "address")
    private String address;

    @Column(name = "job")
    private String job;

    @Column(name = "major")
    private String major;

    @Column(name = "company")
    private String company;

    @Column(name = "health_status")
    private String healthStatus;

    @Column(name = "certs")
    private String certs;

    @Column(name = "cert_image")
    private String certImage;

    public User() {
        this.enabled = false;
    }

    /*----------------------- RELATIONSHIP TABLE -----------------------*/
    //For - Role
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "user_role",
            joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id")
    )
    @JsonIgnore
    private Collection<Role> roles;

    //For - Post
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    @JsonIgnore
    private Collection<Post> posts;

    //For - Order
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    @JsonIgnore
    private Collection<Order> orders;

    //For - Message
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    @JsonIgnore
    private Collection<Message> messages;

    @OneToOne(mappedBy = "user", fetch = FetchType.LAZY)
    @JsonIgnore
    private PasswordToken passwordToken;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", enabled=" + enabled +
                ", doctorActive=" + doctorActive +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", avatar='" + avatar + '\'' +
                ", fullName='" + fullName + '\'' +
                ", birthDay=" + birthDay +
                ", gender='" + gender + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", job='" + job + '\'' +
                ", major='" + major + '\'' +
                ", company='" + company + '\'' +
                ", healthStatus='" + healthStatus + '\'' +
                ", certs='" + certs + '\'' +
                '}';
    }
}
