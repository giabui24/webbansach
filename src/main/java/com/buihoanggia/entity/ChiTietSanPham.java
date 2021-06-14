package com.buihoanggia.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "CHITIETSANPHAM")
public class ChiTietSanPham {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
int machitietsanpham;
@OneToOne()
@JoinColumn(name = "masanpham")
SanPham sanPham;
@OneToOne()
@JoinColumn(name = "matacgia")
TacGia tacGia;
@OneToOne()
@JoinColumn(name = "manhaxuatban")
NhaXuatBan nhaXuatBan;
@OneToOne()
@JoinColumn(name = "makhuyenmai")
KhuyenMai khuyenmai;

int soluong;
int ngaynhap;
public ChiTietSanPham() {}
public int getMachitietsanpham() {
	return machitietsanpham;
}

public KhuyenMai getKhuyenmai() {
	return khuyenmai;
}
public void setKhuyenmai(KhuyenMai khuyenmai) {
	this.khuyenmai = khuyenmai;
}
public void setMachitietsanpham(int machitietsanpham) {
	this.machitietsanpham = machitietsanpham;
}
public SanPham getSanPham() {
	return sanPham;
}
public void setSanPham(SanPham sanPham) {
	this.sanPham = sanPham;
}
public TacGia getTacGia() {
	return tacGia;
}
public void setTacGia(TacGia tacGia) {
	this.tacGia = tacGia;
}
public NhaXuatBan getNhaXuatBan() {
	return nhaXuatBan;
}
public void setNhaXuatBan(NhaXuatBan nhaXuatBan) {
	this.nhaXuatBan = nhaXuatBan;
}
public int getSoluong() {
	return soluong;
}
public void setSoluong(int soluong) {
	this.soluong = soluong;
}
public int getNgaynhap() {
	return ngaynhap;
}
public void setNgaynhap(int ngaynhap) {
	this.ngaynhap = ngaynhap;
}

}
