package com.huan.car.action;

import com.huan.car.entity.CarBean;
import com.huan.car.servic.ICarServic;
import com.huan.car.servic.impl.CarServic;
import com.huan.car.util.GeneralMessage;
import com.huan.car.util.GeneralResults;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;

/**
 * @author 马欢欢
 * @date 2017/12/9
 */
public class CarAction extends ActionSupport {
    private GeneralResults resultData;
    private CarBean carBean;
    private int id;
    private ICarServic carServic = new CarServic();

    public String find() {
        try {
            List<CarBean> carBean = carServic.carFind();
            resultData = GeneralResults.success(carBean, GeneralMessage.QUERY_SUCCESS);
        } catch (Exception e) {
            resultData = GeneralResults.success(GeneralMessage.QUERY_FAILURE);
            e.printStackTrace();
        }
        return "resultData";
    }

    public String delete() {
        try {
            carServic.delete(id);
            resultData = GeneralResults.success(GeneralMessage.DELETE_SUCCESS);
        } catch (Exception e) {
            resultData = GeneralResults.success(GeneralMessage.DELETE_FAILURE);
            e.printStackTrace();
        }
        return "resultData";
    }

    public String add() {
        try {
            carServic.save(carBean);
            resultData = GeneralResults.success(GeneralMessage.ADD_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
            resultData = GeneralResults.success(GeneralMessage.ADD_FAILURE);
        }
        return "resultData";
    }

    public String queryById() {
        try {
            List<CarBean> carBean = carServic.carFind(id);
            resultData = GeneralResults.success(carBean, GeneralMessage.QUERY_SUCCESS);
        } catch (Exception e) {
            resultData = GeneralResults.success(carBean, GeneralMessage.QUERY_FAILURE);
            e.printStackTrace();
        }
        return "resultData";
    }

    public String update() {
        try {
            carServic.update(carBean);
            resultData = GeneralResults.success(GeneralMessage.UPDATE_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
            resultData = GeneralResults.success(GeneralMessage.UPDATE_FAILURE);
        }
        return "update";
    }

    public GeneralResults getResultData() {
        return resultData;
    }

    public void setResultData(GeneralResults resultData) {
        this.resultData = resultData;
    }

    public ICarServic getCarServic() {
        return carServic;
    }

    public void setCarServic(ICarServic carServic) {
        this.carServic = carServic;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public CarBean getCarBean() {
        return carBean;
    }

    public void setCarBean(CarBean carBean) {
        this.carBean = carBean;
    }
}