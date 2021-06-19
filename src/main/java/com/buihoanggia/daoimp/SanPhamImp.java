package com.buihoanggia.daoimp;

import java.util.List;

import com.buihoanggia.entity.SanPham;

public interface SanPhamImp {
	List<SanPham> LayDanhSachSanPhamLimit(int spbatdau);
	SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham);
   List<SanPham> LayDanhSachSanPhamTheoMaDanhMuc(int madanhmuc);
   List<SanPham> LayAllSanPham();
   boolean XoaSanPham(int masanpham);
   boolean ThemSanPham(SanPham sanpham);
}
