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
import com.yuzo.service.IQstnService;

public class QstnServiceImpl implements IQstnService {
	
	private TopicMapper mapper;
	private JsfxMapper jsfxMapper;
	private SubjectMapper subjMapper;

	private SqlSessionFactory sqlSessionFactory;
	
	public QstnServiceImpl() {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public List<Topic> query(QstnPage page) {
		SqlSession session = sqlSessionFactory.openSession();
		mapper = session.getMapper(TopicMapper.class);
		List<Topic> list = mapper.query(page);
		session.close();
		return list;
	}

	@Override
	public List<Jsfx> queryJsfx() {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
		jsfxMapper = session.getMapper(JsfxMapper.class);
		List<Jsfx> list = jsfxMapper.queryAll();
		session.close();
		return list;
	
	}

	@Override
	public List<Subject> querySubjectRoot() {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
		subjMapper = session.getMapper(SubjectMapper.class);
		List<Subject> list = subjMapper.queryRoot();
		session.close();
		return list;
	}
	@Override
	public List<Subject> querySubject(Integer pid) {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
		subjMapper = session.getMapper(SubjectMapper.class);
		List<Subject> list = subjMapper.queryByPid(pid);
		session.close();
		return list;
	}

	@Override
	public Topic queryById(Integer id) {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
		mapper = session.getMapper(TopicMapper.class);
		Topic t = mapper.selectByPrimaryKey(id);
		session.close();
		return t;
	}

	@Override
	public int edit(Topic t) {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
		mapper = session.getMapper(TopicMapper.class);
		System.out.println("ttt:" + t);
		int count = mapper.updateByPrimaryKeySelective(t);
		session.commit();
		session.close();
		return count;
	}

	@Override
	public int impSave(Topic t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delPage(Integer id) {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
		mapper = session.getMapper(TopicMapper.class);
		Topic t = new Topic();
		t.setTopicId(id);
		t.setTopicState(3);
		int count = mapper.updateByPrimaryKeySelective(t);
		session.commit();
		session.close();
		return count;
	}
	

}
