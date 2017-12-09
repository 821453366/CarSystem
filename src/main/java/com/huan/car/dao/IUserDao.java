package com.huan.car.dao;

import com.huan.car.entity.User;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/12/9.
 */
public interface IUserDao {
    /**
     * 用户登录
     * @param user
     * @return
     */
    List<User> login (User user);
}
