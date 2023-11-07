package com.example.dao;

import com.example.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDao {
     void insertUser(User user) throws SQLException;
     User selectUser(int id);
     List<User> selectAllUsers();
     boolean deleteUser(int id) throws SQLException;
     boolean updateUser(User user) throws SQLException;
     List<User> searchUser(String country);
     List<User>  arrangeName();

}
