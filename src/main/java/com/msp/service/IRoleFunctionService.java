package com.msp.service;

import com.msp.entity.RoleFunction;

import java.util.List;

public interface IRoleFunctionService {
    List<RoleFunction> findAll();

    RoleFunction findById(int id);

    RoleFunction save(RoleFunction roleFunction);

    void deleteById(int id);
}
