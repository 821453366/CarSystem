package com.huan.car.dao;

import com.huan.car.entity.CarBean;

import java.util.List;

/**
 *
 * 马欢欢
 * Created by pc on 2017/5/23.
 */
public interface ICarDao {
    /**
     * 查询
     */
    List<CarBean> carFind();

    /**
     * 根据id查询
     *
     */
    List<CarBean> carFind(int id);

    /**
     * 添加
     */
    void save(CarBean carBean);

    /**
     * 更新
     */
    void update(CarBean carBean);

    /**
     *删除
     */
    void delete(int id);




}
