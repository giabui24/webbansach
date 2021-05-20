package com.buihoanggia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buihoanggia.dao.DanhMucSanPhamDao;
import com.buihoanggia.entity.DanhMucSanPham;
import com.buihoanggia.entity.NhaXuatBan;
import com.buihoanggia.entity.SanPham;

@Service
public class DanhMucSanPhamService {
	@Autowired
	DanhMucSanPhamDao danhMucSanPhamDao;
	public List<DanhMucSanPham> LayDanhMucSanPham() {
		return danhMucSanPhamDao.LayDanhMucSanPham();
	}
	public List<NhaXuatBan> LayNhaXuatBan() {
		return danhMucSanPhamDao.LayNhaXuatBan();
	}
	
}
