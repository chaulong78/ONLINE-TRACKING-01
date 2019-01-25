package com.msp.service.impl;

import com.msp.dao.RoleRepository;
import com.msp.dao.UserRepository;
import com.msp.dto.UserDTO;
import com.msp.entity.Role;
import com.msp.entity.User;
import com.msp.service.IUserService;
import com.msp.exception.EmailExistsException;
import com.msp.exception.UserNameExistException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    /* Không cần Transactional */
    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public User findById(int id) {
        Optional<User> result = userRepository.findById(id);

        User user = null;

        if (result.isPresent()) {
            user = result.get();
        } else {
            throw new RuntimeException("User id not found - " + id);
        }

        return user;
    }

    @Override
    public User save(User user) {
        userRepository.save(user);

        return user;
    }

    @Override
    public void deleteById(int id) {
        userRepository.deleteById(id);
    }


    /* Custom method, cần Transactional */
    @Override
    @Transactional
    public User registerNewUserAccount(UserDTO userDTO) throws EmailExistsException, UserNameExistException, Exception {

        if (emailExist(userDTO.getEmail())) {
            throw new EmailExistsException("There is an account with that email address: " + userDTO.getEmail());
        } else if (userNameExist(userDTO.getUserName())) {
            throw new UserNameExistException("There is a account with that username: " + userDTO.getUserName());
        }

        User user = new User();
        user.setUserName(userDTO.getUserName());
        user.setEmail(userDTO.getEmail());
        user.setEnabled(true);

        PasswordEncoder encoder = new BCryptPasswordEncoder();
        user.setPassword(encoder.encode(userDTO.getPassword()));

        List<Role> roleList = new ArrayList<>();
        Role role = roleRepository.findByName(userDTO.getRole());
        roleList.add(role);

        user.setRoles(roleList);

        return userRepository.save(user);
    }

    @Override
    @Transactional
    public User createUser(UserDTO userDTO) {
        User registeredUser = null;

        try {
            registeredUser = registerNewUserAccount(userDTO);
        } catch (EmailExistsException | UserNameExistException | Exception e) {
            e.printStackTrace();
        }

        return registeredUser;
    }

    private boolean emailExist(String email) {
        User user = userRepository.findByEmail(email);
        if (user != null) {
            return true;
        }

        return false;
    }

    private boolean userNameExist(String userName) {
        User user = userRepository.findByUserName(userName);
        if (user != null) {
            return true;
        }

        return false;
    }

    @Override
    @Transactional
    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    @Transactional
    public User findByUserName(String userName) {
        return userRepository.findByUserName(userName);
    }
}
