package com.example.demo.repo;

import com.example.demo.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepo extends CrudRepository<User, Long> {

    boolean existsByEmail(String email);

}
