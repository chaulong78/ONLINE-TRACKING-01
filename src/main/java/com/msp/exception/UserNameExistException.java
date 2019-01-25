package com.msp.exception;

public class UserNameExistException extends Throwable {

    public UserNameExistException(final String message){
        super(message);
    }
}
