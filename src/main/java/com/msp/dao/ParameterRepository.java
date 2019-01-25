package com.msp.dao;

import com.msp.entity.Parameter;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ParameterRepository extends JpaRepository<Parameter, Integer> {
}
