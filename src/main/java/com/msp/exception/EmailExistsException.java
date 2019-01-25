package com.msp.exception;

public class EmailExistsException extends Throwable {
    public EmailExistsException(final String message){
        super(message);
    }
}
