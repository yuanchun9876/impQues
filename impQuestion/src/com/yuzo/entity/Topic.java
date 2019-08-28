package com.yuzo.entity;

import java.util.Date;

public class Topic {
    private Integer topicId;

    private Integer subjectId;

    private Integer topicType;

    private String topicName;

    private String answera;

    private String answerb;

    private String answerc;

    private String answerd;

    private String trueanswer;

    private Byte topicDifficulty;

    private Integer emphasisId;

    private String emphasisName;

    private Date topicCreatedate;

    private String topicUrl;

    private String keyword;

    private Integer topicState;

    private String videoimgUrl;

    private String topicAnalysis;
    
    private String sctnId;
    
    
    

    public String getSctnId() {
		return sctnId;
	}

	public void setSctnId(String sctnId) {
		this.sctnId = sctnId;
	}

	@Override
	public String toString() {
		return "Topic [topicId=" + topicId + ", subjectId=" + subjectId + ", topicType=" + topicType + ", topicName="
				+ topicName + ", answera=" + answera + ", answerb=" + answerb + ", answerc=" + answerc + ", answerd="
				+ answerd + ", trueanswer=" + trueanswer + ", topicDifficulty=" + topicDifficulty + ", emphasisId="
				+ emphasisId + ", emphasisName=" + emphasisName + ", topicCreatedate=" + topicCreatedate + ", topicUrl="
				+ topicUrl + ", keyword=" + keyword + ", topicState=" + topicState + ", videoimgUrl=" + videoimgUrl
				+ ", topicAnalysis=" + topicAnalysis + "]";
	}

	public Integer getTopicId() {
        return topicId;
    }

    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    public Integer getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }

    public Integer getTopicType() {
        return topicType;
    }

    public void setTopicType(Integer topicType) {
        this.topicType = topicType;
    }

    public String getTopicName() {
        return topicName;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName == null ? null : topicName.trim();
    }

    public String getAnswera() {
        return answera;
    }

    public void setAnswera(String answera) {
        this.answera = answera == null ? null : answera.trim();
    }

    public String getAnswerb() {
        return answerb;
    }

    public void setAnswerb(String answerb) {
        this.answerb = answerb == null ? null : answerb.trim();
    }

    public String getAnswerc() {
        return answerc;
    }

    public void setAnswerc(String answerc) {
        this.answerc = answerc == null ? null : answerc.trim();
    }

    public String getAnswerd() {
        return answerd;
    }

    public void setAnswerd(String answerd) {
        this.answerd = answerd == null ? null : answerd.trim();
    }

    public String getTrueanswer() {
        return trueanswer;
    }

    public void setTrueanswer(String trueanswer) {
        this.trueanswer = trueanswer == null ? null : trueanswer.trim();
    }

    public Byte getTopicDifficulty() {
        return topicDifficulty;
    }

    public void setTopicDifficulty(Byte topicDifficulty) {
        this.topicDifficulty = topicDifficulty;
    }

    public Integer getEmphasisId() {
        return emphasisId;
    }

    public void setEmphasisId(Integer emphasisId) {
        this.emphasisId = emphasisId;
    }

    public String getEmphasisName() {
        return emphasisName;
    }

    public void setEmphasisName(String emphasisName) {
        this.emphasisName = emphasisName == null ? null : emphasisName.trim();
    }

    public Date getTopicCreatedate() {
        return topicCreatedate;
    }

    public void setTopicCreatedate(Date topicCreatedate) {
        this.topicCreatedate = topicCreatedate;
    }

    public String getTopicUrl() {
        return topicUrl;
    }

    public void setTopicUrl(String topicUrl) {
        this.topicUrl = topicUrl == null ? null : topicUrl.trim();
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword == null ? null : keyword.trim();
    }

    public Integer getTopicState() {
        return topicState;
    }

    public void setTopicState(Integer topicState) {
        this.topicState = topicState;
    }

    public String getVideoimgUrl() {
        return videoimgUrl;
    }

    public void setVideoimgUrl(String videoimgUrl) {
        this.videoimgUrl = videoimgUrl == null ? null : videoimgUrl.trim();
    }

    public String getTopicAnalysis() {
        return topicAnalysis;
    }

    public void setTopicAnalysis(String topicAnalysis) {
        this.topicAnalysis = topicAnalysis == null ? null : topicAnalysis.trim();
    }
}