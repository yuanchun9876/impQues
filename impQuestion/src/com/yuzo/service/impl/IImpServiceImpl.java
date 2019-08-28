package com.yuzo.service.impl;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.yuzo.entity.Jsfx;
import com.yuzo.entity.Subject;
import com.yuzo.entity.Topic;
import com.yuzo.mapper.JsfxMapper;
import com.yuzo.mapper.SubjectMapper;
import com.yuzo.mapper.TopicMapper;
import com.yuzo.page.QstnPage;
import com.yuzo.service.IImpService;
import com.yuzo.service.IQstnService;

public class IImpServiceImpl implements IImpService {
	
	private TopicMapper mapper;
	private JsfxMapper jsfxMapper;
	private SubjectMapper subjMapper;

	private SqlSessionFactory sqlSessionFactory;
	
	public IImpServiceImpl() {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@Override
	public int impSave(Topic t) {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
