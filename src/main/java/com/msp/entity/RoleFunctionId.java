package com.msp.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RoleFunctionId implements Serializable {

    @Column(name = "role_id")
    private int roleId;

    @Column(name = "function_id")
    private String functionId;
}
