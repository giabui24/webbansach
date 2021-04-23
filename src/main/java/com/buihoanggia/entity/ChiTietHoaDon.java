package com.buihoanggia.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;


@Entity(name ="CHITIETHOADON")
public class ChiTietHoaDon {
	@EmbeddedId
	ChiTietHoaDonId chiTietHoaDonId;
	int soluong;
	int giatien;
	public ChiTietHoaDonId getChiTietHoaDonId() {
		return chiTietHoaDonId;
	}
	public void setChiTietHoaDonId(ChiTietHoaDonId chiTietHoaDonId) {
		this.chiTietHoaDonId = chiTietHoaDonId;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int getGiatien() {
		return giatien;
	}
	public void setGiatien(int giatien) {
		this.giatien = giatien;
	}
	

}
