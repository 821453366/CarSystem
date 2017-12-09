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
}
