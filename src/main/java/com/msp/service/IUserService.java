package com.msp.service;

import com.msp.dto.UserDTO;
import com.msp.entity.User;
import com.msp.exception.EmailExistsException;
import com.msp.exception.UserNameExistException;
import org.springframework.validation.BindingResult;

import java.util.List;

public interface IUserService {

    List<User> findAll();

    User findById(int id);

    User save(User user);

    void deleteById(int id);


    User registerNewUserAccount(UserDTO userDTO) throws EmailExistsException, UserNameExistException, Exception;

    User createUser(UserDTO userDTO);

    User findByEmail(String email);

    User findByUserName(String userName);
}
