package com.yuzo.service.impl;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.yuzo.entity.Subject;
import com.yuzo.mapper.SubjectMapper;
import com.yuzo.service.ISubjService;

public class SubjServiceImpl implements ISubjService{

	private SubjectMapper mapper;

	private SqlSessionFactory sqlSessionFactory;
	
	public SubjServiceImpl() {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public List<Subject> query() {
		SqlSession session = sqlSessionFactory.openSession();
		mapper = session.getMapper(SubjectMapper.class);
		List<Subject> list = mapper.query();
		session.close();
		return list;
	}

	@Override
	public List<Subject> queryByJsfx(String jsfxId) {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
		mapper = session.getMapper(SubjectMapper.class);
		List<Subject> list = mapper.queryByJsfx(jsfxId);
		session.close();
		return list;
	}

	@Override
	public List<Subject> queryByPid(Integer pid) {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
		mapper = session.getMapper(SubjectMapper.class);
		List<Subject> list = mapper.queryByPid(pid);
		session.close();
		return list;
	}


}