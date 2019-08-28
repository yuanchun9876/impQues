package com.yuzo.service.impl;

import java.io.IOException;
import java.io.Reader;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.yuzo.entity.Answer;
import com.yuzo.entity.Jsfx;
import com.yuzo.entity.Question;
import com.yuzo.entity.Subject;
import com.yuzo.entity.Topic;
import com.yuzo.mapper.AnswerMapper;
import com.yuzo.mapper.JsfxMapper;
import com.yuzo.mapper.QuestionMapper;
import com.yuzo.mapper.SubjectMapper;
import com.yuzo.mapper.TopicMapper;
import com.yuzo.page.QstnPage;

import com.yuzo.service.IImpService;
import com.yuzo.service.IQstnService;

public class IImpServiceImpl implements IImpService {
	
	private QuestionMapper qstnMapper;
	private AnswerMapper ansMapper;

	private SqlSessionFactory sqlSessionFactory;
	
	public IImpServiceImpl() {
		try {
			Reader reader = Resources.getResourceAsReader("imp-mybatis.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@Override
	public int impSave(Topic t) {

		SqlSession session = sqlSessionFactory.openSession();
		
		qstnMapper = session.getMapper(QuestionMapper.class);
		ansMapper = session.getMapper(AnswerMapper.class);		
		int count = 0;

		Question qstn = new Question();
		String qstnId = UUID.randomUUID().toString();
		qstn.setQstnId(qstnId);
		qstn.setQstnTypeId("0");
		qstn.setQstnFromTypeId("1");
		qstn.setSubjSctnId(t.getSctnId());
		qstn.setQstnInputTime(new Date());
		qstn.setQstnTitle(t.getTopicName() );
		count = qstnMapper.insertSelective(qstn);
		
		Answer ansa = new Answer();//ansMapper.selectByPrimaryKey("");
		ansa.setAnsId(UUID.randomUUID().toString());
		ansa.setQstnId(qstnId);
		ansa.setAnsContent(t.getAnswera());
		ansa.setAnsIsright("A".equals(t.getTrueanswer())?"1":"0");
		ansMapper.insertSelective(ansa);
		
		Answer ansb = new Answer();
		ansb.setAnsId(UUID.randomUUID().toString());
		ansb.setQstnId(qstnId);
		ansb.setAnsContent(t.getAnswerb());
		ansb.setAnsIsright("B".equals(t.getTrueanswer())?"1":"0");
		ansMapper.insertSelective(ansb);
		
		Answer ansc = new Answer();
		ansc.setAnsId(UUID.randomUUID().toString());
		ansc.setQstnId(qstnId);
		ansc.setAnsContent(t.getAnswerc());
		ansc.setAnsIsright("C".equals(t.getTrueanswer())?"1":"0");
		ansMapper.insertSelective(ansc);
		
		Answer ansd = new Answer();
		ansd.setAnsId(UUID.randomUUID().toString());
		ansd.setQstnId(qstnId);
		ansd.setAnsContent(t.getAnswerd());
		ansd.setAnsIsright("D".equals(t.getTrueanswer())?"1":"0");
		ansMapper.insertSelective(ansd);
		
		session.commit();
		session.close();		
		return count;
	}
	

}
