package com.buihoanggia.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.buihoanggia.daoimp.HoaDonImp;
import com.buihoanggia.entity.HoaDon;
import com.buihoanggia.entity.SanPham;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class HoaDonDao implements HoaDonImp {
	
@Autowired
SessionFactory sessionFactory;
	@Override
	@Transactional
	public int ThemHoaDon(HoaDon hoadon) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		int id = (int) session.save(hoadon);
		if (0<id) {
			return id;
		}else {
			return 0;
		}
	
	}
	@Override
	@Transactional
	public List<HoaDon> ListHoaDon(String username) {
		Session session = sessionFactory.getCurrentSession();
		List<HoaDon> listhoadon = new ArrayList<HoaDon>();
		String query = "from HOADON where username ='"+username +"'";
		 listhoadon = (List<HoaDon>) session.createQuery(query).getResultList();
		return listhoadon;
	}
	@Override
	@Transactional
	public HoaDon LayHoaDonTheoMa(int mahoadon) {
		Session session = sessionFactory.getCurrentSession();
		String query = "from HOADON sp where sp.mahoadon =" + mahoadon;
		HoaDon hoadon = (HoaDon) session.createQuery(query).getSingleResult();

		return hoadon;
	}

}
