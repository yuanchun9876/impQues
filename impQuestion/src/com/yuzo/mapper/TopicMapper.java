package com.yuzo.mapper;

import java.util.List;

import com.yuzo.entity.Topic;
import com.yuzo.page.QstnPage;

public interface TopicMapper {
    int deleteByPrimaryKey(Integer topicId);

    int insert(Topic record);

    int insertSelective(Topic record);

    Topic selectByPrimaryKey(Integer topicId);

    int updateByPrimaryKeySelective(Topic record);

    int updateByPrimaryKey(Topic record);

	List<Topic> query(QstnPage page);
}