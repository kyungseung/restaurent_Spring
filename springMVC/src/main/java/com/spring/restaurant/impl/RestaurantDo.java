package com.spring.restaurant.impl;

public class RestaurantDo {
	private int num;
	private String name;
	private String tel;
	private String people;
	private String month;
	private String date;
	private String time;
	
	@Override
	public String toString() {
		return "RestaurantDo [num=" + num + 
				", name=" + name + 
				", tel=" + tel + 
				", people=" + people +
				", month=" + month +
				", date=" + date + 
				", time=" + time + "]";
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}	
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
}