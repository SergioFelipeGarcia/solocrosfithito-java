package com.empresa.model;

public class Cliente {
	public String nombre;
	public String plan;
	public int horas;
	public String peso;
	public int eventos;
	
	public Cliente( String nombre, String plan, int horas,String peso,int eventos) {
		super();
		this.nombre=nombre;
		this.plan= plan;
		this.horas = horas;
		this.peso= peso;
		this. eventos=  eventos;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPlan() {
		return plan;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}

	public int getHoras() {
		return horas;
	}

	public void setHoras(int horas) {
		this.horas = horas;
	}

	public String getPeso() {
		return peso;
	}

	public void setPeso(String peso) {
		this.peso = peso;
	}

	public int getEventos() {
		return eventos;
	}

	public void setEventos(int eventos) {
		this.eventos = eventos;
	}
	





	
	
}
