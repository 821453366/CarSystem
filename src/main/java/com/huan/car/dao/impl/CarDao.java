package com.huan.car.dao.impl;

import com.huan.car.dao.BaseDao;
import com.huan.car.dao.ICarDao;
import com.huan.car.entity.CarBean;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/5/23.
 */
public class CarDao extends BaseDao implements ICarDao {
    public List<CarBean> carFind() {
        String sql = " SELECT * FROM car ; ";
        List <CarBean> list = super.query(sql,null,CarBean.class);
        return list;
    }

    public List<CarBean> carFind(int id) {
        String sql = " SELECT * FROM car where id = ?; ";
        Object[] paramsValue = {id};
        List <CarBean> list = super.query(sql,paramsValue,CarBean.class);
        return list;
    }

    public void save(CarBean carBean) {
        String sql = "INSERT INTO car (carname,carEntity,carPrice,carSize,carFuelConsumption,carDisplacement) VALUES(?,?,?,?,?,?); " ;
        Object[] paramsValue = {carBean.getCarname(),carBean.getCarEntity(),carBean.getCarPrice(),carBean.getCarSize(),carBean.getCarFuelConsumption(),carBean.getCarDisplacement()};
        super.update(sql,paramsValue);

    }

    public void update(CarBean carBean) {

    }

    public void delete(int id) {
        String sql = " DELETE  FROM car WHERE id = ?; ";
        Object[] paramsValue = {id};
        super.update(sql,paramsValue);
    }
}
