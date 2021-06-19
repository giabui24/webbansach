package com.buihoanggia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buihoanggia.dao.NhaXuatBanDao;
import com.buihoanggia.daoimp.NhaXuatBanImp;
import com.buihoanggia.entity.NhaXuatBan;

@Service
public class NhaXuatBanService implements NhaXuatBanImp {
	@Autowired
	NhaXuatBanDao nhaXuatBanDao;

	@Override
	public List<NhaXuatBan> LayAllNhaXuatBan() {
		// TODO Auto-generated method stub
		return nhaXuatBanDao.LayAllNhaXuatBan();
	}

}
