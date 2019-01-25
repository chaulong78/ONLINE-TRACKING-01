package com.msp.service;

import com.msp.entity.Parameter;

import java.util.List;

public interface IParameterService {
    public List<Parameter> findAll();

    public Parameter findById(int id);

    public Parameter save(Parameter parameter);

    public void deleteById(int id);
}
