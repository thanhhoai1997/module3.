package com.example.service;

import com.example.dao.IUserDao;
import com.example.dao.UserDao;
import com.example.model.User;

import java.util.List;

public class UserService implements IUserService{
    private static IUserDao iUserDao = new UserDao();
    @Override
    public void insertUser(User user) {
        iUserDao.insertUser(user);

    }

    @Override
    public User selectUser(int id) {
        return iUserDao.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return iUserDao.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) {
        return iUserDao.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) {
        return iUserDao.updateUser(user);
    }
}
