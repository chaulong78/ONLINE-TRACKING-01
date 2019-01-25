package com.msp.service;

import com.msp.entity.User;
import com.msp.entity.PasswordToken;

public interface IPasswordService {

    PasswordToken generatePasswordResetToken(User user);

    void deleteByUserId(int userId);

    void save(PasswordToken passwordToken);

    PasswordToken findByToken(String token);

    void deleteById(long tokenId);
}
