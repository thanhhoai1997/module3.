package com.example.service;

import com.example.model.User;

import java.util.List;

public interface IUserService {
    void insertUser(User user);
    User selectUser(int id);
    List<User> selectAllUsers();
    boolean deleteUser(int id);
    boolean updateUser(User user);
}
