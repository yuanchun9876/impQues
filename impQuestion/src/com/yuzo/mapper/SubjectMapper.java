package com.yuzo.mapper;

import java.util.List;

import com.yuzo.entity.Subject;

public interface SubjectMapper {
    int deleteByPrimaryKey(Integer subjectId);

    int insert(Subject record);

    int insertSelective(Subject record);

    Subject selectByPrimaryKey(Integer subjectId);

    int updateByPrimaryKeySelective(Subject record);

    int updateByPrimaryKey(Subject record);

	List<Subject> query();

	List<Subject> queryRoot();

	List<Subject> queryByPid(Integer pid);

	List<Subject> queryByJsfx(String jsfxId);
}