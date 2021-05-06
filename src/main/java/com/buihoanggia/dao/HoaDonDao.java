package com.buihoanggia.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.buihoanggia.daoimp.HoaDonImp;
import com.buihoanggia.entity.HoaDon;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class HoaDonDao implements HoaDonImp {
	
@Autowired
SessionFactory sessionFactory;
	@Override
	@Transactional
	public boolean ThemHoaDon(HoaDon hoadon) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		long id = (long) session.save(hoadon);
		if (0<id) {
			return true;
		}else {
			return false;
		}
	
	}

}
