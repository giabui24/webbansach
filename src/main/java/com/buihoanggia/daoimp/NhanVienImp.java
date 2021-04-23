package com.buihoanggia.daoimp;

import com.buihoanggia.entity.NhanVien;

public interface NhanVienImp {
 public boolean KiemTraDangNhap(String email,String matkhau);
 public boolean ThemNhanVien(NhanVien nhanVien);
}
