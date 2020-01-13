package com.example.activitatmvc.dao;

import java.util.List;

import com.example.activitatmvc.model.Perfil;


public interface PerfilDAO {
	
	public void saveOrUpdate(Perfil Perfil);
	
	public void delete(int PerfilId);
	
	public Perfil get(int PerfilId);
	
	public List<Perfil> list();
}
