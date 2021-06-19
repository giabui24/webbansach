package com.buihoanggia.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name ="NHAXUATBAN")
public class NhaXuatBan {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int manhaxuatban;
	String tennhaxuatban;
	public NhaXuatBan() {}
	public int getManhaxuatban() {
		return manhaxuatban;
	}
	public void setManhaxuatban(int manhaxuatban) {
		this.manhaxuatban = manhaxuatban;
	}
	public String getTennhaxuatban() {
		return tennhaxuatban;
	}
	public void setTennhaxuatban(String tennhaxuatban) {
		this.tennhaxuatban = tennhaxuatban;
	}
	
	

}
