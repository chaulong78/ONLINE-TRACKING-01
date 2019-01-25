package com.msp.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "RoleFunction")
@Data
public class RoleFunction implements Serializable {

    @EmbeddedId
    private RoleFunctionId roleFunctionId;

    @ManyToOne
    @MapsId("roleId")
    private Role role;

    @ManyToOne
    @MapsId("functionId")
    private Function function;

    @Column(name = "can_create")
    private boolean canCreate;

    @Column(name = "can_read")
    private boolean canRead;

    @Column(name = "can_update")
    private boolean canUpdate;

    @Column(name = "can_delete")
    private boolean canDelete;

    @Override
    public String toString() {
        return "RoleFunction{" +
                "role=" + role +
                ", function=" + function +
                ", canCreate=" + canCreate +
                ", canRead=" + canRead +
                ", canUpdate=" + canUpdate +
                ", canDelete=" + canDelete +
                '}';
    }
}
