package com.msp.aspect;

import com.msp.dto.FunctionDTO;
import com.msp.entity.Role;
import com.msp.entity.RoleFunction;
import com.msp.service.IRoleService;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Aspect
@Component
public class LoginAspect {

    @Autowired
    private HttpSession session;

    @Autowired
    private IRoleService roleService;

    @AfterReturning(pointcut = "execution(* org.springframework.security.authentication.AuthenticationManager.authenticate(..))"
            , returning = "auth")
    public void getRoleFunction(Authentication auth) throws Throwable {
        List<GrantedAuthority> listRole = (List<GrantedAuthority>) auth.getAuthorities();
        Role role = roleService.findByName(listRole.get(0).toString());

        List<RoleFunction> roleFunctionList = role.getRoles();
        List<FunctionDTO> functionDTOList = getFunctionList(roleFunctionList);

        session.setAttribute("functionList", functionDTOList);
    }

    private List<FunctionDTO> getFunctionList(List<RoleFunction> roleFunctionList) {
        List<FunctionDTO> functionDTOList = new ArrayList<>();

        FunctionDTO functionDTO = null;

        for (RoleFunction rf : roleFunctionList) {
            functionDTO = new FunctionDTO();

            functionDTO.setId(rf.getFunction().getId());
            functionDTO.setUrl(rf.getFunction().getUrl());

            functionDTO.setCanCreate(rf.isCanCreate());
            functionDTO.setCanRead(rf.isCanRead());
            functionDTO.setCanUpdate(rf.isCanUpdate());
            functionDTO.setCanDelete(rf.isCanDelete());

            functionDTOList.add(functionDTO);
        }

        return functionDTOList;
    }
}
