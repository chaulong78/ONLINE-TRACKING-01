package com.msp.dto;

import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class FunctionDTO {

    @NotNull
    private String id;

    @NotNull
    private String url;

    @NotNull
    private boolean canCreate;

    @NotNull
    private boolean canRead;

    @NotNull
    private boolean canUpdate;

    @NotNull
    private boolean canDelete;
}
