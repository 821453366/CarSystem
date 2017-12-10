package com.huan.car.servic.impl;

import com.huan.car.dao.IUserDao;
import com.huan.car.dao.impl.UserDao;
import com.huan.car.entity.User;
import com.huan.car.servic.IUserService;

import java.util.List;

/**
 *
 * @author 马欢欢
 * @date 2017/12/9
 */
public class UserService implements IUserService {
    private IUserDao userDao = new UserDao();
    @Override
    public List<User> login(User user) {
        return userDao.login(user);
    }

    public List<User> userFind() {
        try {
            return userDao.userFind();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public List<User> userFind(int id) {
        try {
            return userDao.userFind(id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void save(User user) {
        try {
            userDao.save(user);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void update(User user) {
        try {
            userDao.update(user);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void delete(int id) {
        try {
            userDao.delete(id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
