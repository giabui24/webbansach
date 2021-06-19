package com.buihoanggia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buihoanggia.dao.TacGiaDao;
import com.buihoanggia.daoimp.TacGiaImp;
import com.buihoanggia.entity.TacGia;

@Service
public class TacGiaService implements TacGiaImp {
	@Autowired
	TacGiaDao tacGiaDao;

	@Override
	public List<TacGia> LayAllTacGia() {
		// TODO Auto-generated method stub
		return tacGiaDao.LayAllTacGia();
	}
}
