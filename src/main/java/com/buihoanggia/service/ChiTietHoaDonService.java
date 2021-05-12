package com.buihoanggia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buihoanggia.dao.ChiTietHoaDonDao;
import com.buihoanggia.dao.HoaDonDao;
import com.buihoanggia.daoimp.ChiTietHoaDonImp;
import com.buihoanggia.entity.ChiTietHoaDon;
@Service
public class ChiTietHoaDonService implements ChiTietHoaDonImp {
	@Autowired
	ChiTietHoaDonDao chiTietHoaDao;

	@Override
	public boolean ThemChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		// TODO Auto-generated method stub
		return chiTietHoaDao.ThemChiTietHoaDon(chiTietHoaDon);
	}

}
