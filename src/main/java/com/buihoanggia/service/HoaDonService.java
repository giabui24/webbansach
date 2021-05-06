package com.buihoanggia.service;

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
public boolean ThemHoaDon(HoaDon hoadon) {
	// TODO Auto-generated method stub
	return hoaDonDao.ThemHoaDon(hoadon);

}
}
