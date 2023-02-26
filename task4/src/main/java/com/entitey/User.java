package com.entitey;

public class User {
	private int id;
	private String name;
	private String email;
	private String password;
	private String Gender;

	public User() {
		super();
	}

	public User(String name, String email,String password,String Gender) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.Gender=Gender;
	}
	

	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ",Gender=" + Gender +"]";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return Gender;
	}
	
	public void setGender(String gender) {
		Gender = gender;
	}
}
