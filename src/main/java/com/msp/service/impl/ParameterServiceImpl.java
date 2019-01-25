package com.msp.service.impl;

import com.msp.dao.ParameterRepository;
import com.msp.entity.Parameter;
import com.msp.service.IParameterService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

@Service
public class ParameterServiceImpl implements IParameterService {

    @Autowired
    private ParameterRepository parameterRepository;

    @Override
    public List<Parameter> findAll() {
        return parameterRepository.findAll();
    }

    @Override
    public Parameter findById(int id) {
        Optional<Parameter> result = parameterRepository.findById(id);

        Parameter parameter = null;

        if (result.isPresent()) {
            parameter = result.get();
        } else {
            throw new RuntimeException("Parameter id not found - " + id);
        }

        return parameter;
    }

    @Override
    public Parameter save(Parameter parameter) {
        parameterRepository.save(parameter);

        return parameter;
    }

    @Override
    public void deleteById(int id) {
        parameterRepository.deleteById(id);
    }
}
