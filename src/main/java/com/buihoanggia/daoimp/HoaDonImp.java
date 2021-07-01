package com.buihoanggia.daoimp;

import java.util.List;

import com.buihoanggia.entity.HoaDon;



public  interface HoaDonImp {
int ThemHoaDon(HoaDon hoadon);
List<HoaDon> ListHoaDon(String username);
HoaDon LayHoaDonTheoMa(int mahoadon);
}
