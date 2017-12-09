package com.huan.car.action;

import com.huan.car.entity.User;
import com.huan.car.servic.IUserService;
import com.huan.car.servic.impl.UserService;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * @author 马欢欢
 * @date 2017/12/9
 */
public class UserAction extends ActionSupport {
    private User user;
    private IUserService userService = new UserService();

    public String login() {
        List<User> users = userService.login(user);
        System.out.println(users);
        if(users.size() != 0){
            return "success";
        }
        return "fail";
    }

    public String addUser() {
        System.out.println("成功访问action，请求正在处理中");
        System.out.println("调用service");
        return "success";
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
