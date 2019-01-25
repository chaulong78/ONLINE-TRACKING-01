package com.msp.annonation;

import com.msp.utility.EmailValidator;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

/*Use for Object and Field*/
@Target({ElementType.TYPE, ElementType.FIELD, ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = EmailValidator.class)
@Documented
public @interface ValidEmail {

    String message() default "Email does not valid!";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
