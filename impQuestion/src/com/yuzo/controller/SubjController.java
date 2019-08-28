package com.yuzo.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yuzo.entity.Subject;
import com.yuzo.service.ISubjService;
import com.yuzo.service.impl.SubjServiceImpl;

@Controller
@RequestMapping("/subj")
public class SubjController {

	private ISubjService service = new SubjServiceImpl();
	
	@RequestMapping("/query")
	public String query(Model model) {
		List<Subject> list = service.query();
		System.out.println(list);
		model.addAttribute("list", list);
		return "subj/list_subj";
	}
	@RequestMapping("/selectSubjRoot")
	@ResponseBody
	public List<Subject> selectSubjRoot(String jsfxId) {
		System.out.println("jsfxId:" + jsfxId);
		List<Subject> list = service.queryByJsfx(jsfxId);
		System.out.println(list);
		return list;
	}
	@RequestMapping("/selectSubjByPid")
	@ResponseBody
	public List<Subject> selectSubjByPid(Integer pid) {
		System.out.println("pid:" + pid);
		List<Subject> list = service.queryByPid(pid);
		System.out.println("[" + list.size() + "]:" + list);		
		return list;
	}
}
