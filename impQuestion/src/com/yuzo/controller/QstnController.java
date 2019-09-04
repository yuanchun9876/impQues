package com.yuzo.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yuzo.entity.Jsfx;
import com.yuzo.entity.Subject;
import com.yuzo.entity.Topic;
import com.yuzo.page.QstnPage;
import com.yuzo.service.IQstnService;
import com.yuzo.service.impl.IImpServiceImpl;
import com.yuzo.service.impl.QstnServiceImpl;

@Controller
@RequestMapping("/qstn")
public class QstnController {

	private IQstnService service = new QstnServiceImpl();
	private IImpServiceImpl impService = new IImpServiceImpl();
	
	@RequestMapping("/query")
	public String query(QstnPage page, Model model) {
		System.out.println("page:" + page);
		model.addAttribute("page", page);
		List<Topic> list = service.query(page);
		//System.out.println(list);
		model.addAttribute("list", list);
		
		List<Jsfx> jsfxList = service.queryJsfx();
		model.addAttribute("jsfxList", jsfxList);
		
		List<Subject> subjRootList = service.querySubjectRoot();
		model.addAttribute("subjRootList", subjRootList);
		
		if(subjRootList!=null  &&  subjRootList.size()>0) {
			List<Subject> subjList = service.querySubject(subjRootList.get(0).getSubjectId());
			model.addAttribute("subjList", subjList);
		}
	
		
		return "qstn/list_qstn";
	}
	@RequestMapping("/editPage")
	public String editPage(Integer id, Model model) {
		
		Topic t = service.queryById(id);
		System.out.println("t:"+t);
		model.addAttribute("t", t);
		
		List<Subject> subjRootList = service.querySubjectRoot();
		model.addAttribute("subjRootList", subjRootList);
		
		if(subjRootList!=null  &&  subjRootList.size()>0) {
			List<Subject> subjList = service.querySubject(subjRootList.get(0).getSubjectId());
			model.addAttribute("subjList", subjList);
		}
		
		return "qstn/edit_qstn";
	}
	
	@RequestMapping("/delPage")
	public String delPage(Integer id, Model model) {
		System.out.println(id);
		service.delPage(id);
		
		return "redirect:query.action";
	}
	
	@RequestMapping("/impPage")
	public String impPage(Integer id, Model model) {
		
		Topic t = service.queryById(id);
		System.out.println("t:"+t);
		model.addAttribute("t", t);
		
		List<Subject> subjRootList = service.querySubjectRoot();
		model.addAttribute("subjRootList", subjRootList);
		
		if(subjRootList!=null  &&  subjRootList.size()>0) {
			List<Subject> subjList = service.querySubject(subjRootList.get(0).getSubjectId());
			model.addAttribute("subjList", subjList);
		}
		
		return "qstn/imp_qstn";
	}
	
	@RequestMapping("/editSave")
	public String editSave(Topic t, Model model) {
		
		System.out.println("ÐÞ¸Ä:"+t);
		int count = service.edit(t);
		System.out.println("count:" + count);
		return "redirect:query.action";
	}
	
	@RequestMapping("/impSave")
	public String impSave(Topic t, Model model) {
		
		System.out.println("µ¼Èë:"+t);
		int count = impService.impSave(t);
		System.out.println("count:" + count);
		
		if(count>0) {
			t.setTopicState(1);
			int editcount = service.edit(t);
			System.out.println("editcount:" + editcount);
		}
			
		return "redirect:query.action";
	}
	
	
}
