package com.msp.service;

import com.msp.entity.Function;

import java.util.List;

public interface IFunctionService {
    public List<Function> findAll();

    public Function findById(int id);

    public Function save(Function function);

    public void deleteById(int id);
}
