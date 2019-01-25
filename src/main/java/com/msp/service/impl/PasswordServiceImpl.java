package com.msp.service.impl;

import com.msp.dao.PasswordTokenRepository;
import com.msp.entity.User;
import com.msp.entity.PasswordToken;
import com.msp.service.IPasswordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Service
public class PasswordServiceImpl implements IPasswordService {

    @Autowired
    private PasswordTokenRepository passwordRepository;

    @Override
    @Transactional
    public PasswordToken generatePasswordResetToken(User user) {
        String token = UUID.randomUUID().toString();
        PasswordToken passwordToken = new PasswordToken(token, user);

        return passwordToken;
    }

    @Override
    @Transactional
    public void deleteByUserId(int userId) {
        passwordRepository.deleteByUserId(userId);
    }

    @Override
    public void save(PasswordToken passwordToken) {
        passwordRepository.save(passwordToken);
    }

    @Override
    @Transactional
    public PasswordToken findByToken(String token) {
        return passwordRepository.findByToken(token);
    }

    @Override
    @Transactional
    public void deleteById(long tokenId) {
        passwordRepository.deleteById(tokenId);
    }

}
