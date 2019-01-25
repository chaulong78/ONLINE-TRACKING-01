package com.msp.dto;

import com.msp.annonation.PasswordMatches;
import com.msp.annonation.ValidEmail;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@PasswordMatches
@Data
public class UserDTO {

    @NotNull
    @NotEmpty
    private String userName;

    @NotNull
    @NotEmpty
    @ValidEmail
    private String email;

    @NotNull
    @NotEmpty
    private String password;

    @NotNull
    @NotEmpty
    private String rePassword;

    @NotNull
    @NotEmpty
    private String role;
}
