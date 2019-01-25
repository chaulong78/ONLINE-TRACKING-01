package com.msp.dao;

import com.msp.entity.PasswordToken;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PasswordTokenRepository extends JpaRepository<PasswordToken, Integer> {

    void deleteByUserId(int userId);

    void deleteById(long id);

    PasswordToken findByToken(String token);
}
