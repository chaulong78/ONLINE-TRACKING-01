package com.msp.service.impl;

import com.msp.dao.RoleFunctionRepository;
import com.msp.entity.RoleFunction;
import com.msp.service.IRoleFunctionService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

@Service
public class RoleFunctionImpl implements IRoleFunctionService {

    @Autowired
    private RoleFunctionRepository roleFunctionRepository;

    @Override
    public List<RoleFunction> findAll() {
        return roleFunctionRepository.findAll();
    }

    @Override
    public RoleFunction findById(int id) {
        Optional<RoleFunction> result = roleFunctionRepository.findById(id);

        RoleFunction roleFunction = null;

        if (result.isPresent()) {
            roleFunction = result.get();
        } else {
            throw new RuntimeException("Role id not found - " + id);
        }

        return roleFunction;
    }

    @Override
    public RoleFunction save(RoleFunction roleFunction) {
        roleFunctionRepository.save(roleFunction);

        return roleFunction;
    }

    @Override
    public void deleteById(int id) {
        roleFunctionRepository.deleteById(id);
    }
}
