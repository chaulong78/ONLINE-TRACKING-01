package com.msp.utility;

import com.msp.dto.UserDTO;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PasswordMatchesValidator implements ConstraintValidator<com.msp.annonation.PasswordMatches, Object> {
    @Override
    public void initialize(com.msp.annonation.PasswordMatches constraintAnnotation) {

    }

    @Override
    public boolean isValid(Object object, ConstraintValidatorContext context) {
        UserDTO userDTO = (UserDTO) object;
        return userDTO.getPassword().equals(userDTO.getRePassword());
    }
}
