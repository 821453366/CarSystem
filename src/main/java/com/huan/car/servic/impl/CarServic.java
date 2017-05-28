package com.huan.car.servic.impl;

import com.huan.car.dao.ICarDao;
import com.huan.car.dao.impl.CarDao;
import com.huan.car.entity.CarBean;
import com.huan.car.servic.ICarServic;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/5/23.
 */
public class CarServic implements ICarServic {
    private ICarDao carDao = new CarDao();

    public List<CarBean> carFind() {
        try {
            return carDao.carFind();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public List<CarBean> carFind(int id) {
        try {
            return carDao.carFind(id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void save(CarBean carBean) {
        try {
            carDao.save(carBean);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void update(CarBean carBean) {
        try {
            carDao.update(carBean);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void delete(int id) {
        try {
            carDao.delete(id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
