package com.buihoanggia.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
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
@OneToMany(cascade = CascadeType.ALL)
@JoinColumn(name="mahoadon")
Set<ChiTietHoaDon> danhsachChiTietHoaDons;

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

}