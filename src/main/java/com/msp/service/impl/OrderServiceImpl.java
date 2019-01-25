package com.msp.service.impl;

import com.msp.dao.OrderRepository;
import com.msp.entity.Order;
import com.msp.service.IOrderService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

@Service
public class OrderServiceImpl implements IOrderService {

    @Autowired
    private OrderRepository orderRepository;

    @Override
    public List<Order> findAll() {
        return orderRepository.findAll();
    }

    @Override
    public Order findById(int id) {
        Optional<Order> result = orderRepository.findById(id);

        Order order = null;

        if (result.isPresent()) {
            order = result.get();
        } else {
            throw new RuntimeException("Order id not found - " + id);
        }

        return order;
    }

    @Override
    public Order save(Order order) {
        orderRepository.save(order);

        return order;
    }

    @Override
    public void deleteById(int id) {
        orderRepository.deleteById(id);
    }
}
