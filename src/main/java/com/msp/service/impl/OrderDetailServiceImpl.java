package com.msp.service.impl;

import com.msp.dao.OrderDetailRepository;
import com.msp.entity.OrderDetail;
import com.msp.service.IOrderDetailService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

@Service
public class OrderDetailServiceImpl implements IOrderDetailService {

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Override
    public List<OrderDetail> findAll() {
        return orderDetailRepository.findAll();
    }

    @Override
    public OrderDetail findById(int id) {
        Optional<OrderDetail> result = orderDetailRepository.findById(id);

        OrderDetail orderDetail = null;

        if (result.isPresent()) {
            orderDetail = result.get();
        } else {
            throw new RuntimeException("Order detail id not found - " + id);
        }

        return orderDetail;
    }

    @Override
    public OrderDetail save(OrderDetail orderDetail) {
        orderDetailRepository.save(orderDetail);

        return orderDetail;
    }

    @Override
    public void deleteById(int id) {
        orderDetailRepository.deleteById(id);
    }
}
