package com.example.dao;

import com.example.model.User;

import java.util.List;

public interface IUserDao {
     void insertUser(User user);
     User selectUser(int id);
     List<User> selectAllUsers();
     boolean deleteUser(int id);
     boolean updateUser(User user);

}
