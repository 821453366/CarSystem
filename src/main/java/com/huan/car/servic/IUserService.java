package com.huan.car.servic;

import com.huan.car.entity.User;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/12/9.
 */
public interface IUserService {
    /**
     * 用户登录
     * @param user
     * @return
     */
    List<User> login (User user);

    /**
     * 查询
     */
    List<User> userFind();

    /**
     * 根据id查询
     *
     */
    List<User> userFind(int id);

    /**
     * 添加
     */
    void save(User user);

    /**
     * 更新
     */
    void update(User user);

    /**
     *删除
     */
    void delete(int id);
}

