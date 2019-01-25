package com.msp.service;

import com.msp.entity.Device;

import java.util.List;

public interface IDeviceService {
    public List<Device> findAll();

    public Device findById(int id);

    public Device save(Device device);

    public void deleteById(int id);
}
