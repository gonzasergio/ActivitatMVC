package com.example.activitatmvc.model;

public class Perfil {
	private int id;
	private String userName;
	private String nom;
	private String llinatge1;
	private String llinatge2;
	private String dni;
	private int telefon;
	private String email;
	private int id_ciutat;
	private int id_nivell;
	private String pass;

	public Perfil() {
	}

	public Perfil(int id, String userName, String nom, String llinatge1, String llinatge2, String dni, int telefon, String email, int id_ciutat, int id_nivell, String pass) {
		this.id = id;
		this.userName = userName;
		this.nom = nom;
		this.llinatge1 = llinatge1;
		this.llinatge2 = llinatge2;
		this.dni = dni;
		this.telefon = telefon;
		this.email = email;
		this.id_ciutat = id_ciutat;
		this.id_nivell = id_nivell;
		this.pass = pass;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getLlinatge1() {
		return llinatge1;
	}

	public void setLlinatge1(String llinatge1) {
		this.llinatge1 = llinatge1;
	}

	public String getLlinatge2() {
		return llinatge2;
	}

	public void setLlinatge2(String llinatge2) {
		this.llinatge2 = llinatge2;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public int getTelefon() {
		return telefon;
	}

	public void setTelefon(int telefon) {
		this.telefon = telefon;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getId_ciutat() {
		return id_ciutat;
	}

	public void setId_ciutat(int id_ciutat) {
		this.id_ciutat = id_ciutat;
	}

	public int getId_nivell() {
		return id_nivell;
	}

	public void setId_nivell(int id_nivell) {
		this.id_nivell = id_nivell;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	

}
