package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.SpaceAlienDAOImpl;
import com.skilldistillery.jpacrud.entities.SpaceAlien;

@Controller
public class SpaceAlienController {
	@Autowired
	private SpaceAlienDAOImpl dao;
	
	@RequestMapping(path= {"/", "index.do"})
	public String index() {
		return "index";
	}
	
	@RequestMapping(path="getAlien.do", params= {"id","name"}, method=RequestMethod.GET)
	public ModelAndView get(int id) {
		ModelAndView mv = new ModelAndView();
		SpaceAlien spaceAlien = dao.findById(id);
		mv.addObject("spaceAlien", spaceAlien);
		mv.setViewName("showAlien");
		return mv;
	}
	
	@RequestMapping(path="update.do", params="id", method=RequestMethod.POST)
	public ModelAndView update(SpaceAlien sa) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("showAlien");
		return mv;
	}

}
