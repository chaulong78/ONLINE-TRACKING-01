package com.msp.service.impl;

import com.msp.dao.MessageRepository;
import com.msp.entity.Message;
import com.msp.service.IMessageService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

@Service
public class MessageServiceImpl implements IMessageService {

    @Autowired
    private MessageRepository messageRepository;

    @Override
    public List<Message> findAll() {
        return messageRepository.findAll();
    }

    @Override
    public Message findById(int id) {
        Optional<Message> result = messageRepository.findById(id);

        Message message = null;

        if (result.isPresent()) {
            message = result.get();
        } else {
            throw new RuntimeException("Message id not found - " + id);
        }

        return message;
    }

    @Override
    public Message save(Message message) {
        messageRepository.save(message);

        return message;
    }

    @Override
    public void deleteById(int id) {
        messageRepository.deleteById(id);
    }
}
