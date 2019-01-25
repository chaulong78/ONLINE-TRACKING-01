package com.msp.service.impl;

import com.msp.dao.UserRepository;
import com.msp.entity.Role;
import com.msp.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserDetailServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    /*Check if User is enabled*/
    @Override
    @Transactional
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        boolean enabled = true;
        boolean accountNonExpired = true;
        boolean credentialsNonExpired = true;
        boolean accountNonLocked = true;

        User user = userRepository.findByUserName(userName);

        if (user == null) {
            throw new UsernameNotFoundException("User not found!");
        }

        /* Get role */
        List<Role> roles = (List<Role>) user.getRoles();
        List<GrantedAuthority> authorityList = new ArrayList<>();

        for (Role role : roles) {
            authorityList.add(new SimpleGrantedAuthority(role.getName()));
        }

        return new org.springframework.security.core.userdetails.User
                (userName, user.getPassword()
                        , user.isEnabled(), accountNonExpired
                        , credentialsNonExpired, accountNonLocked,
                        authorityList);
    }
}
