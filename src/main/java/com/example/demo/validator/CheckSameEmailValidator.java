package com.example.demo.validator;


import com.example.demo.service.UserService;
import org.hibernate.validator.HibernateValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.AutowireCapableBeanFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.validation.beanvalidation.SpringConstraintValidatorFactory;

import javax.validation.*;

@Component
public class CheckSameEmailValidator implements ConstraintValidator<CheckEmail, String> {

    @Autowired
    private UserService userService;

    @Bean
    public Validator validator (final AutowireCapableBeanFactory autowireCapableBeanFactory) {

        ValidatorFactory validatorFactory = Validation.byProvider(HibernateValidator.class)
                .configure().constraintValidatorFactory(new SpringConstraintValidatorFactory(autowireCapableBeanFactory))
                .buildValidatorFactory();
        Validator validator = validatorFactory.getValidator();

        return validator;
    }


    @Override
    public void initialize(CheckEmail constraintAnnotation) {
        ConstraintValidator.super.initialize(constraintAnnotation);
    }

    @Override
    public boolean isValid(String email, ConstraintValidatorContext constraintValidatorContext) {
        return userService.existsUser(email) == false;
    }

}
