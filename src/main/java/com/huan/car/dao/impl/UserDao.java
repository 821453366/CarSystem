package com.huan.car.dao.impl;

import com.huan.car.dao.IUserDao;
import com.huan.car.entity.User;
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

    @Override
    public List<User> userFind() {
        String sql = " SELECT * FROM user ";
        List <User> list = super.query(sql,null,User.class);
        return list;
    }

    @Override
    public List<User> userFind(int id) {
        String sql = " SELECT * FROM user where id = ?; ";
        Object[] paramsValue = {id};
        List <User> list = super.query(sql,paramsValue,User.class);
        return list;
    }

    @Override
    public void save(User user) {
        String sql = "INSERT INTO user (username,password,sex,phone,age,position) VALUES(?,?,?,?,?,?); " ;
        Object[] paramsValue = {user.getUsername(),user.getPassword(),user.getSex(),user.getPhone(),user.getAge(),user.getPosition()};
        super.update(sql,paramsValue);

    }

    @Override
    public void update(User user) {
        String sql ="update user SET username = ? ,sex = ? ,phone=?, age = ?,position = ?where id = ?";
        Object[] paramsValue = {user.getUsername(),user.getSex(),user.getPhone(),user.getAge(),user.getPosition(),user.getId()   };
        super.update(sql,paramsValue);
    }

    @Override
    public void delete(int id) {
        String sql = " DELETE  FROM user WHERE id = ?; ";
        Object[] paramsValue = {id};
        super.update(sql,paramsValue);
    }
}
