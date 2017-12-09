//package com.huan.car.action;
//
//import com.huan.car.entity.CarBean;
//import com.huan.car.servic.ICarServic;
//import com.huan.car.servic.impl.CarServic;
//import net.sf.json.JSONArray;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.List;
//
///**
// * Created by 马欢欢 on 2017/5/23.
// */
//@WebServlet(name = "CarServlet" ,urlPatterns = "/CarServlet")
//public class CarServlet extends HttpServlet {
//    private ICarServic carServic = new CarServic();
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        doPost(req, resp);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setContentType("text/html;charset=utf-8");
//        req.setCharacterEncoding("utf-8");
//        String method = req.getParameter("method");
//        if("carFind".equals(method)){
//            carFind(req,resp);
//        }else
//        if("save".equals(method)){
//            save(req,resp);
//        }else
//        if("login".equals(method)){
//            login(req,resp);
//        }
//        else
//        if("delect".equals(method)){
//            delect(req,resp);
//        }else
//        if("redact".equals(method)){
//            redact(req,resp);
//        }
//    }
//
//    protected void carFind(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        List<CarBean> carBean = carServic.carFind();
//        JSONArray jsonArray = JSONArray.fromObject(carBean);
//        resp.getWriter().print(jsonArray);
//    }
//    protected void save(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        CarBean carBean = new CarBean();
//        carBean.setCarname(req.getParameter("carname"));
//        carBean.setCarEntity(req.getParameter("carEntity"));
//        carBean.setCarPrice(req.getParameter("carPrice"));
//        carBean.setCarSize(req.getParameter("carSize"));
//        carBean.setCarFuelConsumption(req.getParameter("carFuelConsumption"));
//        carBean.setCarDisplacement(req.getParameter("carDisplacement"));
////        carServic.save(carBean);
//        resp.sendRedirect(req.getContextPath()+"/4s_car/button.jsp");
//    }
//
//
//    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String name = req.getParameter("name");
//        String psw = req.getParameter("psw");
//        if(name.equals("admin")&&psw.equals("admin")){
//            resp.sendRedirect(req.getContextPath()+"/4s_car/index.jsp");
//        }
//    }
//    protected void delect(HttpServletRequest req, HttpServletResponse resp)  {
//        int id = Integer.parseInt(req.getParameter("id"));
//        try {
//            carServic.delete(id);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//    protected void redact(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        int id = Integer.parseInt(req.getParameter("id"));
////        List<CarBean> carBean = carServic.carFind(id);
//
////        JSONArray jsonArray = JSONArray.fromObject(carBean);
////        resp.getWriter().print(jsonArray);
////        System.out.println(jsonArray);
//    }
//}
