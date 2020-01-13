package com.example.activitatmvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.activitatmvc.dao.PerfilDAO;
import com.example.activitatmvc.model.Perfil;

@Controller
public class HomeController {

	@Autowired
	private PerfilDAO PerfilDAO;
	
	@RequestMapping(value="/")
	public ModelAndView listPerfil(ModelAndView model) throws IOException{
		List<Perfil> listPerfil = PerfilDAO.list();
		model.addObject("listPerfil", listPerfil);
		model.setViewName("home");
		
		return model;
	}
	
	@RequestMapping(value = "/newPerfil", method = RequestMethod.GET)
	public ModelAndView newPerfil(ModelAndView model) {
		Perfil newPerfil = new Perfil();
		model.addObject("perfil", newPerfil);
		model.setViewName("PerfilForm");
		return model;
	}
	
	@RequestMapping(value = "/savePerfil", method = RequestMethod.POST)
	public ModelAndView savePerfil(@ModelAttribute Perfil perfil) {
		PerfilDAO.saveOrUpdate(perfil);		
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/deletePerfil", method = RequestMethod.GET)
	public ModelAndView deletePerfil(HttpServletRequest request) {
		int perfilId = Integer.parseInt(request.getParameter("id"));
		PerfilDAO.delete(perfilId);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/editPerfil", method = RequestMethod.GET)
	public ModelAndView editPerfil(HttpServletRequest request) {
		int perfilId = Integer.parseInt(request.getParameter("id"));
		Perfil perfil = PerfilDAO.get(perfilId);
		ModelAndView model = new ModelAndView("PerfilForm");
		model.addObject("perfil", perfil);
		
		return model;
	}
}
