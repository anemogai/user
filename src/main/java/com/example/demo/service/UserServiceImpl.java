package com.example.demo.service;


import com.example.demo.entity.User;
import com.example.demo.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepo userRepo;

    @Override
    public User addUser(String name, String gender, String password, String phoneNumber) {
        LocalDate createdAt = LocalDate.now();
        LocalDate updatedAt = LocalDate.now();
        return userRepo.save(new User(name, gender, password, phoneNumber, createdAt, updatedAt));
    }

    @Override
    public boolean existsUser(String email) {
        if(userRepo.existsByEmail(email) == true){
            return true;
        }
        return false;
    }
}
