package com.yuzo.service;

import java.util.List;

import com.yuzo.entity.Jsfx;
import com.yuzo.entity.Subject;
import com.yuzo.entity.Topic;
import com.yuzo.page.QstnPage;

public interface IQstnService {

	List<Topic> query(QstnPage page);

	List<Jsfx> queryJsfx();

	List<Subject> querySubject(Integer pid);

	List<Subject> querySubjectRoot();

	Topic queryById(Integer id);

	int edit(Topic t);

	int impSave(Topic t);

}
