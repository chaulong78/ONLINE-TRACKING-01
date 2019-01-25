package com.msp.service;

import com.msp.entity.OrderDetail;

import java.util.List;

public interface IOrderDetailService {
    public List<OrderDetail> findAll();

    public OrderDetail findById(int id);

    public OrderDetail save(OrderDetail orderDetail);

    public void deleteById(int id);
}
