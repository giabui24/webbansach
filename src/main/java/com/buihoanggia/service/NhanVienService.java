package com.buihoanggia.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buihoanggia.dao.NhanVienDao;
import com.buihoanggia.daoimp.NhanVienImp;
import com.buihoanggia.entity.NhanVien;

@Service
public class NhanVienService implements NhanVienImp {
	@Autowired
	NhanVienDao nhanVienDao;
   @Override
	public boolean KiemTraDangNhap(String email, String matkhau) {
boolean kiemtra = nhanVienDao.KiemTraDangNhap(email, matkhau);
return kiemtra;
	}
@Override
public boolean ThemNhanVien(NhanVien nhanVien) {
	// TODO Auto-generated method stub
	boolean ktThem = nhanVienDao.ThemNhanVien(nhanVien);
	return false;
}

	}

	
	
	
	



