package com.msp.service.impl;

import com.msp.dao.DeviceRepository;
import com.msp.entity.Device;
import com.msp.service.IDeviceService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

@Service
public class DeviceServiceImpl implements IDeviceService {

    @Autowired
    private DeviceRepository deviceRepository;

    @Override
    public List<Device> findAll() {
        return deviceRepository.findAll();
    }

    @Override
    public Device findById(int id) {
        Optional<Device> result = deviceRepository.findById(id);

        Device device = null;

        if (result.isPresent()) {
            device = result.get();
        } else {
            throw new RuntimeException("Device id not found - " + id);
        }

        return device;
    }

    @Override
    public Device save(Device device) {
        deviceRepository.save(device);

        return device;
    }

    @Override
    public void deleteById(int id) {
        deviceRepository.deleteById(id);
    }
}
