package com.huan.car.dao.impl;

import com.huan.car.dao.IUserDao;
import com.huan.car.entity.CarBean;
import com.huan.car.entity.User;
import com.huan.car.util.BaseDao;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/12/9.
 */
public class UserDao extends BaseDao implements IUserDao  {
    @Override
    public List<User> login(User user) {
        String sql = " SELECT * FROM user where username = ? and password= ?; ";
        Object[] paramsValue = {user.getUsername(),user.getPassword()};
        List<User> list = (List<User>) super.query(sql,paramsValue,User.class);
        return list;
    }
}
