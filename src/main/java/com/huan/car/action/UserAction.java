package com.huan.car.action;

import com.huan.car.entity.User;
import com.huan.car.servic.IUserService;
import com.huan.car.servic.impl.UserService;
import com.huan.car.util.GeneralMessage;
import com.huan.car.util.GeneralResults;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;
import java.util.Map;

/**
 * @author 马欢欢
 * @date 2017/12/9
 */
public class UserAction extends ActionSupport {
    private User user;
    private IUserService userService = new UserService();
    private GeneralResults resultData;
    private int id;


    public String login() {
        List<User> users = userService.login(user);
        System.out.println(users);
        if(users.size() != 0){
            ActionContext actionContext = ActionContext.getContext();
            Map session = actionContext.getSession();
            session.put("user",users.get(0));
            return "success";
        }
        return "fail";
    }
    public String logout(){
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        session.remove("user");
        return "logout";
    }


    public String find() {
        try {
            List<User> user = userService.userFind();
            resultData = GeneralResults.success(user, GeneralMessage.QUERY_SUCCESS);
        } catch (Exception e) {
            resultData = GeneralResults.success(GeneralMessage.QUERY_FAILURE);
            e.printStackTrace();
        }
        return "resultData";
    }

    public String delete() {
        try {
            userService.delete(id);
            resultData = GeneralResults.success(GeneralMessage.DELETE_SUCCESS);
        } catch (Exception e) {
            resultData = GeneralResults.success(GeneralMessage.DELETE_FAILURE);
            e.printStackTrace();
        }
        return "resultData";
    }

    public String add() {
        try {
                userService.save(user);
            resultData = GeneralResults.success(GeneralMessage.ADD_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
            resultData = GeneralResults.success(GeneralMessage.ADD_FAILURE);
        }
        return "resultData";
    }

    public String queryById() {
        try {
            List<User> user = userService.userFind(id);
            resultData = GeneralResults.success(user, GeneralMessage.QUERY_SUCCESS);
        } catch (Exception e) {
            resultData = GeneralResults.success(user, GeneralMessage.QUERY_FAILURE);
            e.printStackTrace();
        }
        return "resultData";
    }

    public String update() {
        try {
            userService.update(user);
            resultData = GeneralResults.success(GeneralMessage.UPDATE_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
            resultData = GeneralResults.success(GeneralMessage.UPDATE_FAILURE);
        }
        return "update";
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public IUserService getUserService() {
        return userService;
    }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }

    public GeneralResults getResultData() {
        return resultData;
    }

    public void setResultData(GeneralResults resultData) {
        this.resultData = resultData;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
