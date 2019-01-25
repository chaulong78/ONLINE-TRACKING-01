package com.msp.service.impl;

import com.msp.dao.RoleRepository;
import com.msp.entity.Role;
import com.msp.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class RoleServiceImpl implements IRoleService {

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public List<Role> findAll() {
        return roleRepository.findAll();
    }

    @Override
    public Role findById(int id) {
        Optional<Role> result = roleRepository.findById(id);

        Role role = null;

        if (result.isPresent()) {
            role = result.get();
        } else {
            throw new RuntimeException("Role id not found - " + id);
        }

        return role;
    }

    @Override
    public Role save(Role role) {
        roleRepository.save(role);

        return role;
    }

    @Override
    public void deleteById(int id) {
        roleRepository.deleteById(id);
    }

    @Override
    @Transactional
    public Role findByName(String name) {
        return roleRepository.findByName(name);
    }
}
