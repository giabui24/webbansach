package com.buihoanggia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buihoanggia.dao.KhuyenMaiDao;
import com.buihoanggia.daoimp.KhuyenMaiImp;
import com.buihoanggia.entity.KhuyenMai;

@Service
public class KhuyenMaiService implements KhuyenMaiImp {
@Autowired
KhuyenMaiDao khuyenMaiDao;

@Override
public List<KhuyenMai> LayAllKhuyenMai() {
	// TODO Auto-generated method stub
	return khuyenMaiDao.LayAllKhuyenMai();
}
}
