package com.buihoanggia.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "TACGIA")
public class TacGia {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int matacgia;
	String tentacgia;
	public TacGia() {}
	public int getMatacgia() {
		return matacgia;
	}
	public void setMatacgia(int matacgia) {
		this.matacgia = matacgia;
	}
	public String getTentacgia() {
		return tentacgia;
	}
	public void setTentacgia(String tentacgia) {
		this.tentacgia = tentacgia;
	}

}
