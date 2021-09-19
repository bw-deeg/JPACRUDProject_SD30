package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.hibernate.internal.build.AllowSysOut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrud.data.SpaceAlienDAOImpl;
import com.skilldistillery.jpacrud.entities.SpaceAlien;

@Controller
public class SpaceAlienController {
	@Autowired
	private SpaceAlienDAOImpl dao;
	
	@RequestMapping(path= {"/", "index.do"})
	public ModelAndView index(Model model) {
		
		ModelAndView mv = new ModelAndView();
		List<SpaceAlien> spaceAliens;
		spaceAliens = dao.getEm();
		
		if (spaceAliens != null && !spaceAliens.isEmpty()) {
			mv.addObject("spaceAliens", spaceAliens);
			mv.setViewName("index");
		} else {
			mv.setViewName("error");
		}
		return mv;
	}
	
	@RequestMapping(path="getAlien.do", params= {"id","name"}, method=RequestMethod.GET)
	public ModelAndView get(Integer id, String name) {
		ModelAndView mv = new ModelAndView();
		SpaceAlien spaceAlien = null;
		if (id != null) {
			spaceAlien = dao.findById(id);
		} else if (name != null && !name.isEmpty()) {
			spaceAlien = dao.findByName(name);
		}
		if (spaceAlien != null) {
			mv.addObject("spaceAlien", spaceAlien);
			mv.setViewName("showAlien");
		} else {
			mv.setViewName("error");
		}
		return mv;
	}
	
	@RequestMapping(path="update.do")
	public ModelAndView update(SpaceAlien sa, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		sa = dao.update(sa.getId() , sa);
		redir.addFlashAttribute("spaceAlien", sa);    //add to model for next request
	    mv.setViewName("redirect:alienUpdated.do"); 
		return mv;
	}
	
	@RequestMapping(path="add.do")
	public ModelAndView add(SpaceAlien sa, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		sa = dao.create(sa);
		redir.addFlashAttribute("spaceAlien", sa);    //add to model for next request
		mv.setViewName("redirect:alienUpdated.do"); 
		return mv;
	}
	
	@RequestMapping(path="alienUpdated.do", method=RequestMethod.GET)
	public String showAlien(Model model) {
		return "confirmation";
	}


}
