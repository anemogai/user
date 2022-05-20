package com.example.demo.service;


import com.example.demo.entity.User;

public interface UserService {

    User addUser(String name, String gender, String password, String email);

    boolean existsUser(String email);
}
