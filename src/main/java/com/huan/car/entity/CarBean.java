package com.huan.car.entity;

/**
 * Created by 马欢欢 on 2017/5/23.
 */
public class CarBean {
    private int id ;
    private String carname;
    private String carEntity;
    private String carPrice;
    private String carSize;
    private String carFuelConsumption;
    private String carDisplacement;


    public String getCarname() {
        return carname;
    }

    public void setCarname(String carname) {
        this.carname = carname;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCarEntity() {
        return carEntity;
    }

    public void setCarEntity(String carEntity) {
        this.carEntity = carEntity;
    }

    public String getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(String carPrice) {
        this.carPrice = carPrice;
    }

    public String getCarSize() {
        return carSize;
    }

    public void setCarSize(String carSize) {
        this.carSize = carSize;
    }

    public String getCarFuelConsumption() {
        return carFuelConsumption;
    }

    public void setCarFuelConsumption(String carFuelConsumption) {
        this.carFuelConsumption = carFuelConsumption;
    }

    public String getCarDisplacement() {
        return carDisplacement;
    }

    public void setCarDisplacement(String carDisplacement) {
        this.carDisplacement = carDisplacement;
    }
}
