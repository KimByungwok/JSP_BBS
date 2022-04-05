package com.jsp.ex;

public class Student {
	private String name;
	private String major;
	private String grade;
	
	public Student() {
		
	}
	
	public Student(String name,String major,String grade){
		this.name =name;
		this.major =major;
		this.grade = grade;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
}


