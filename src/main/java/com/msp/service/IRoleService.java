package com.msp.service;

import com.msp.entity.Role;

import java.util.List;

public interface IRoleService {
    public List<Role> findAll();

    public Role findById(int id);

    public Role save(Role role );

    public void deleteById(int id);

    public Role findByName(String name);
}
