package com.msp.service;

import com.msp.entity.Message;

import java.util.List;

public interface IMessageService {
    public List<Message> findAll();

    public Message findById(int id);

    public Message save(Message message);

    public void deleteById(int id);
}
