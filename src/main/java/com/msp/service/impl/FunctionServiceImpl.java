package com.msp.service.impl;

import com.msp.dao.FunctionRepository;
import com.msp.entity.Function;
import com.msp.service.IFunctionService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

@Service
public class FunctionServiceImpl implements IFunctionService {

    @Autowired
    private FunctionRepository functionRepository;

    @Override
    public List<Function> findAll() {
        return functionRepository.findAll();
    }

    @Override
    public Function findById(int id) {
        Optional<Function> result = functionRepository.findById(id);

        Function function = null;

        if (result.isPresent()) {
            function = result.get();
        } else {
            throw new RuntimeException("Function id not found - " + id);
        }

        return function;
    }

    @Override
    public Function save(Function function) {
        functionRepository.save(function);

        return function;
    }

    @Override
    public void deleteById(int id) {
        functionRepository.deleteById(id);
    }
}
