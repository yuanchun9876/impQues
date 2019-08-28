package com.yuzo.mapper;

import java.util.List;

import com.yuzo.entity.Jsfx;

public interface JsfxMapper {
    int deleteByPrimaryKey(String jsfxid);

    int insert(Jsfx record);

    int insertSelective(Jsfx record);

    Jsfx selectByPrimaryKey(String jsfxid);

    int updateByPrimaryKeySelective(Jsfx record);

    int updateByPrimaryKey(Jsfx record);

	List<Jsfx> queryAll();
}