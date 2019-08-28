package com.yuzo.entity;

import java.util.Date;

public class Subject {
    private Integer subjectId;

    private String subjectName;

    private Integer subjectPid;

    private String subjectInfo;

    private Date subjectCreatedate;

    private Integer subjectSequ;

    private String jsfxid;
    
    
    private String fxmc;
    private String subjectPidName;
    
    

    @Override
	public String toString() {
		return "Subject [subjectId=" + subjectId + ", subjectName=" + subjectName + ", subjectPid=" + subjectPid
				+ ", subjectInfo=" + subjectInfo + ", subjectCreatedate=" + subjectCreatedate + ", subjectSequ="
				+ subjectSequ + ", jsfxid=" + jsfxid + ", fxmc=" + fxmc + ", subjectPidName=" + subjectPidName + "]";
	}

	public Integer getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName == null ? null : subjectName.trim();
    }

    public Integer getSubjectPid() {
        return subjectPid;
    }

    public void setSubjectPid(Integer subjectPid) {
        this.subjectPid = subjectPid;
    }

    public String getSubjectInfo() {
        return subjectInfo;
    }

    public void setSubjectInfo(String subjectInfo) {
        this.subjectInfo = subjectInfo == null ? null : subjectInfo.trim();
    }

    public Date getSubjectCreatedate() {
        return subjectCreatedate;
    }

    public void setSubjectCreatedate(Date subjectCreatedate) {
        this.subjectCreatedate = subjectCreatedate;
    }

    public Integer getSubjectSequ() {
        return subjectSequ;
    }

    public void setSubjectSequ(Integer subjectSequ) {
        this.subjectSequ = subjectSequ;
    }

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
		this.fxmc = fxmc;
	}

	public String getSubjectPidName() {
		return subjectPidName;
	}

	public void setSubjectPidName(String subjectPidName) {
		this.subjectPidName = subjectPidName;
	}
    
    
}