package com.msp.service.impl;

import com.msp.service.IMailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailServiceImpl implements IMailService {

    @Autowired
    private JavaMailSender mailSender;

    @Override
    public void createConfirmRegistration(String token, String toAddress) throws MailException {
        String subject = "Xác nhận địa chỉ email của bạn";
        String text = "Hãy chắc chắn đây là địa chỉ email đúng của bạn. " +
                "Vui lòng nhập mã xác nhận này để tiếp tục sử dụng ứng dụng:\n" + token
                + "\n Mã sẽ hết hạn sau hai giờ.\n Xin cảm ơn.";

        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(toAddress);
        email.setSubject(subject);
        email.setText(text);

        mailSender.send(email);
    }

    @Override
    public void createResetPassword(String token, String toAddress) throws MailException {
        String subject = "Reset Password Confirmation";
        String text = "Click to this link to confirm you reset password request\n"
                + "http://localhost:8080/forgot-password/confirm?token=" + token
                + "\n Thank you!";

        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(toAddress);
        email.setSubject(subject);
        email.setText(text);

        mailSender.send(email);
    }
}
