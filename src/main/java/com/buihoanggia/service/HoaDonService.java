package com.buihoanggia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buihoanggia.dao.HoaDonDao;
import com.buihoanggia.daoimp.HoaDonImp;
import com.buihoanggia.entity.HoaDon;

@Service
public class HoaDonService implements HoaDonImp {
@Autowired
HoaDonDao hoaDonDao;

@Override
public int ThemHoaDon(HoaDon hoadon) {
	// TODO Auto-generated method stub
	return hoaDonDao.ThemHoaDon(hoadon);

}

@Override
public List<HoaDon> ListHoaDon(String username) {
	// TODO Auto-generated method stub
	return hoaDonDao.ListHoaDon(username);
}

@Override
public HoaDon LayHoaDonTheoMa(int mahoadon) {
	// TODO Auto-generated method stub
	return hoaDonDao.LayHoaDonTheoMa(mahoadon);
}
}
