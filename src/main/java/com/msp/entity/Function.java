package com.msp.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "functions")
@Data
public class Function implements Serializable {

    @Id
    @Column(name = "id")
    private String id;

    @Column(name = "enabled")
    private boolean enabled;

    @Column(name = "name")
    private String name;

    @Column(name = "url")
    private String url;

    /*----------------------- RELATIONSHIP TABLE -----------------------*/
    //For - Function
    @OneToMany(mappedBy = "function")
    private List<RoleFunction> functions;

    @Override
    public String toString() {
        return "Function{" +
                "id=" + id +
                ", enabled=" + enabled +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
