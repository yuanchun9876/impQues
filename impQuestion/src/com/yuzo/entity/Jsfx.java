package com.yuzo.entity;

public class Jsfx {
    private String jsfxid;

    private String fxmc;

    private String fxsm;

    private String image;

    private Integer pxh;

    public String getJsfxid() {
        return jsfxid;
    }

    public void setJsfxid(String jsfxid) {
        this.jsfxid = jsfxid == null ? null : jsfxid.trim();
    }

    public String getFxmc() {
        return fxmc;
    }

    public void setFxmc(String fxmc) {
        this.fxmc = fxmc == null ? null : fxmc.trim();
    }

    public String getFxsm() {
        return fxsm;
    }

    public void setFxsm(String fxsm) {
        this.fxsm = fxsm == null ? null : fxsm.trim();
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public Integer getPxh() {
        return pxh;
    }

    public void setPxh(Integer pxh) {
        this.pxh = pxh;
    }
}