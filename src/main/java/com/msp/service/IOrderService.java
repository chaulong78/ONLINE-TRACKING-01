package com.msp.service;

import com.msp.entity.Order;

import java.util.List;

public interface IOrderService {
    public List<Order> findAll();

    public Order findById(int id);

    public Order save(Order function);

    public void deleteById(int id);
}
