package com.buihoanggia.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name="HOADON")
public class HoaDon {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
int mahoadon;
String tenkhachhang;
String sdt;
String diachigiaohang;
boolean tinhtrang;
String ngaylap;
String hinhthucgiaohang;
String    username;
double tongtien;
@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
@JoinColumn(name="mahoadon") 
Set<ChiTietHoaDon> danhsachChiTietHoaDons;
public HoaDon() {}

public String getHinhthucgiaohang() {
	return hinhthucgiaohang;
}

public void setHinhthucgiaohang(String hinhthucgiaohang) {
	this.hinhthucgiaohang = hinhthucgiaohang;
}

public Set<ChiTietHoaDon> getDanhsachChiTietHoaDons() {
	return danhsachChiTietHoaDons;
}
public void setDanhsachChiTietHoaDons(Set<ChiTietHoaDon> danhsachChiTietHoaDons) {
	this.danhsachChiTietHoaDons = danhsachChiTietHoaDons;
}
public int getMahoadon() {
	return mahoadon;
}
public void setMahoadon(int mahoadon) {
	this.mahoadon = mahoadon;
}
public String getTenkhachhang() {
	return tenkhachhang;
}
public void setTenkhachhang(String tenkhachhang) {
	this.tenkhachhang = tenkhachhang;
}
public String getSdt() {
	return sdt;
}
public void setSdt(String sdt) {
	this.sdt = sdt;
}
public String getDiachigiaohang() {
	return diachigiaohang;
}
public void setDiachigiaohang(String diachigiaohang) {
	this.diachigiaohang = diachigiaohang;
}
public boolean isTinhtrang() {
	return tinhtrang;
}
public void setTinhtrang(boolean tinhtrang) {
	this.tinhtrang = tinhtrang;
}
public String getNgaylap() {
	return ngaylap;
}
public void setNgaylap(String ngaylap) {
	this.ngaylap = ngaylap;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public double getTongtien() {
	return tongtien;
}

public void setTongtien(double tongtien) {
	this.tongtien = tongtien;
}



}
