package com.miguel.api_spring_boot_crud.service;

import com.miguel.api_spring_boot_crud.model.User;
import com.miguel.api_spring_boot_crud.repository.UserRepository;

import jakarta.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

public interface UserService {
    public abstract List<User> listAllUsers();
   
    public abstract User getUser(Integer id);

    public abstract void updateUser(User user);
   
    public abstract void deleteUser(Integer id);
}

