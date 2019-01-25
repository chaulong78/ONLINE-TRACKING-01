package com.msp.service;

public interface IMailService {

    void createConfirmRegistration(String token, String toAddress);

    void createResetPassword(String token, String toAddress);
}
