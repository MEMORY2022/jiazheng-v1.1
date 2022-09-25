package com.sgo.entity;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/22 21:37
 * @Description :
 */
public class TaocanEntity {
    private int taocanId;
    private String taocanName;
    private String taocanTime;
    private String employerGrade;
    private String taocanHuikui;
    private String taocanPrice;
    private int employerId;
    private int hireId;

    @Override
    public String toString() {
        return "TaocanEntity{" +
                "taocanId=" + taocanId +
                ", taocanName='" + taocanName + '\'' +
                ", taocanTime='" + taocanTime + '\'' +
                ", employerGrade='" + employerGrade + '\'' +
                ", taocanHuikui='" + taocanHuikui + '\'' +
                ", taocanPrice='" + taocanPrice + '\'' +
                ", employerId=" + employerId +
                ", hireId=" + hireId +
                '}';
    }

    public int getTaocanId() {
        return taocanId;
    }

    public void setTaocanId(int taocanId) {
        this.taocanId = taocanId;
    }

    public String getTaocanName() {
        return taocanName;
    }

    public void setTaocanName(String taocanName) {
        this.taocanName = taocanName;
    }

    public String getTaocanTime() {
        return taocanTime;
    }

    public void setTaocanTime(String taocanTime) {
        this.taocanTime = taocanTime;
    }

    public String getEmployerGrade() {
        return employerGrade;
    }

    public void setEmployerGrade(String employerGrade) {
        this.employerGrade = employerGrade;
    }

    public String getTaocanHuikui() {
        return taocanHuikui;
    }

    public void setTaocanHuikui(String taocanHuikui) {
        this.taocanHuikui = taocanHuikui;
    }

    public String getTaocanPrice() {
        return taocanPrice;
    }

    public void setTaocanPrice(String taocanPrice) {
        this.taocanPrice = taocanPrice;
    }

    public int getEmployerId() {
        return employerId;
    }

    public void setEmployerId(int employerId) {
        this.employerId = employerId;
    }

    public int getHireId() {
        return hireId;
    }

    public void setHireId(int hireId) {
        this.hireId = hireId;
    }

    public TaocanEntity() {
    }

    public TaocanEntity(int taocanId, String taocanName, String taocanTime, String employerGrade, String taocanHuikui, String taocanPrice, int employerId, int hireId) {
        this.taocanId = taocanId;
        this.taocanName = taocanName;
        this.taocanTime = taocanTime;
        this.employerGrade = employerGrade;
        this.taocanHuikui = taocanHuikui;
        this.taocanPrice = taocanPrice;
        this.employerId = employerId;
        this.hireId = hireId;
    }
}
