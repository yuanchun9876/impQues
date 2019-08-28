package com.yuzo.service;

import java.util.List;

import com.yuzo.entity.Subject;

public interface ISubjService {

	List<Subject> query();

	List<Subject> queryByJsfx(String jsfxId);

	List<Subject> queryByPid(Integer pid);

}
