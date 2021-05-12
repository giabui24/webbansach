package com.buihoanggia.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Embeddable
public class ChiTietHoaDonId implements Serializable {
	   private static final long serialVersionUID = 1L;

int mahoadon;
int machitietsanpham;
public int getMahoadon() {
	return mahoadon;
}
public void setMahoadon(int mahoadon) {
	this.mahoadon = mahoadon;
}
public int getMachitietsanpham() {
	return machitietsanpham;
}
public void setMachitietsanpham(int machitietsanpham) {
	this.machitietsanpham = machitietsanpham;
}

}
