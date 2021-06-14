package com.buihoanggia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buihoanggia.dao.SanPhamDao;
import com.buihoanggia.daoimp.SanPhamImp;
import com.buihoanggia.entity.SanPham;
@Service
public class SanPhamService implements SanPhamImp {
@Autowired
SanPhamDao sanPhamDao;
	@Override
	public List<SanPham> LayDanhSachSanPhamLimit(int spbatdau) {
		// TODO Auto-generated method stub
		
		return sanPhamDao.LayDanhSachSanPhamLimit(spbatdau);
	}
	@Override
	public SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham) {
		// TODO Auto-genera
				return sanPhamDao.LayDanhSachChiTietSanPhamTheoMa(masanpham);

	}
	@Override
	public List<SanPham> LayDanhSachSanPhamTheoMaDanhMuc(int madanhmuc) {
		// TODO Auto-generated method stub
		return sanPhamDao.LayDanhSachSanPhamTheoMaDanhMuc(madanhmuc);
	}
	@Override
	public List<SanPham> LayAllSanPham() {
		// TODO Auto-generated method stub
		return sanPhamDao.LayAllSanPham();
	}
	@Override
	public boolean XoaSanPham(int masanpham) {
		// TODO Auto-generated method stub
		return sanPhamDao.XoaSanPham(masanpham);
	}

}
