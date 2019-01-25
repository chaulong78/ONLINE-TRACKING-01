package com.msp.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;

@Entity
@Table(name = "role")
@Data
public class Role implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "enabled")
    private boolean enabled;

    @Column(name = "name", nullable = false, unique = true)
    private String name;

    @Column(name = "description")
    private String description;

    /*----------------------- RELATIONSHIP TABLE -----------------------*/
    //For - User
    @ManyToMany(mappedBy = "roles")
    private Collection<User> users;

    //For - Function
    @OneToMany(mappedBy = "role", fetch = FetchType.EAGER)
    private List<RoleFunction> roles;

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", enabled=" + enabled +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
