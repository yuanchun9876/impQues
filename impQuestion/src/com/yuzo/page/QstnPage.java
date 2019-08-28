package com.yuzo.page;

public class QstnPage {

	private String topicId;
	private String subjectId;
	
	private String jsfxid;
	private String subjRoot;
	
	private String topicType;
	
	private Integer topicState = 0;
	
	
	
	

	@Override
	public String toString() {
		return "QstnPage [topicId=" + topicId + ", subjectId=" + subjectId + ", jsfxid=" + jsfxid + ", subjRoot="
				+ subjRoot + ", topicType=" + topicType + ", topicState=" + topicState + "]";
	}
	
	public String getTopicId() {
		return topicId;
	}
	public void setTopicId(String topicId) {
		this.topicId = topicId;
	}
	public String getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}
	public String getTopicType() {
		return topicType;
	}
	public void setTopicType(String topicType) {
		this.topicType = topicType;
	}
	public String getJsfxid() {
		return jsfxid;
	}
	public void setJsfxid(String jsfxid) {
		this.jsfxid = jsfxid;
	}
	public String getSubjRoot() {
		return subjRoot;
	}
	public void setSubjRoot(String subjRoot) {
		this.subjRoot = subjRoot;
	}
	public Integer getTopicState() {
		return topicState;
	}
	public void setTopicState(Integer topicState) {
		this.topicState = topicState;
	}
	
	
	
}
