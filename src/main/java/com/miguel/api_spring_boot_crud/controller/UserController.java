package com.miguel.api_spring_boot_crud.controller;

import com.miguel.api_spring_boot_crud.model.User;
import com.miguel.api_spring_boot_crud.service.UserServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.NoSuchElementException;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    UserServiceImpl userServiceImpl;

    @GetMapping("")
    public List<User> list() {
        return userServiceImpl.listAllUsers();
    }

    @GetMapping("/{id}")
    public ResponseEntity<User> get(@PathVariable Integer id) {
        try {
            User user = userServiceImpl.getUser(id);
            try {
                System.out.println(user.toString());
            } catch (Exception e) {System.err.print("Error searching user by id <!> -- ");
            e.printStackTrace();
            }
            return new ResponseEntity<User>(user, HttpStatus.OK);
        } catch (NoSuchElementException e) {
            return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping("/")
    public void add(@RequestBody User user) {
        try {
            userServiceImpl.updateUser(user);
        } catch (Exception e) {
            System.err.print("Error adding user <!> -- ");
            e.printStackTrace();
        }
    }

    @PutMapping("/{id}/")
    public ResponseEntity<?> update(@RequestBody User user, @PathVariable Integer id) {
        try {
            User existUser = userServiceImpl.getUser(id);
            user.setCod_user(id);
            userServiceImpl.updateUser(user);
            return new ResponseEntity<>(HttpStatus.OK);
        } catch (Exception e) {
            System.err.print("Error updating user <!> -- ");
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable Integer id) {
        try {
            userServiceImpl.deleteUser(id);
        } catch (Exception e) {
            System.err.print("Error deleting user <!> -- ");
            e.printStackTrace();
        }

    }
}
