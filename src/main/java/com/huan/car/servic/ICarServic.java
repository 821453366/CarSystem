package com.huan.car.servic;

import com.huan.car.entity.CarBean;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/5/23.
 */
public interface ICarServic {
    /**
     * 查询
     *
     */
    List<CarBean> carFind();
    /**
     * 查询
     *
     */
    List<CarBean> carFind(int id) throws Exception;


    /**
     * 添加
     */
    void save(CarBean carBean) throws Exception;

    /**
     * 更新
     */
    void update(CarBean carBean);

    /**
     *删除
     */
    void delete(int id) throws Exception;

}
