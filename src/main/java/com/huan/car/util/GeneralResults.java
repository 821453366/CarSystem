package com.huan.car.util;

/**
 * @author ubuntu
 */
public class GeneralResults {
    private Object data;
    private String msg = "";
    private boolean results;

    public static GeneralResults success(Object data, String msg) {
        GeneralResults generalResults = new GeneralResults();
        generalResults.data = data;
        generalResults.msg = msg;
        generalResults.results = true;
        return generalResults;
    }
    public static GeneralResults success(Object data) {
        GeneralResults generalResults = new GeneralResults();
        generalResults.data = data;
        generalResults.results = true;
        return generalResults;
    }

    public static GeneralResults success() {
        GeneralResults generalResults = new GeneralResults();
        generalResults.results = true;
        return generalResults;
    }
    public static GeneralResults success(String msg) {
        GeneralResults generalResults = new GeneralResults();
        generalResults.msg = msg;
        generalResults.results = true;
        return generalResults;
    }

    public static GeneralResults failure(String msg) {
        GeneralResults generalResults = new GeneralResults();
        generalResults.msg = msg;
        generalResults.results = false;
        return generalResults;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public boolean isResults() {
        return results;
    }

    public void setResults(boolean results) {
        this.results = results;
    }
}
