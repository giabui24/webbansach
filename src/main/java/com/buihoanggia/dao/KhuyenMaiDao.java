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

import com.buihoanggia.daoimp.KhuyenMaiImp;
import com.buihoanggia.entity.KhuyenMai;


@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class KhuyenMaiDao implements KhuyenMaiImp {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<KhuyenMai> LayAllKhuyenMai() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<KhuyenMai> listKhuyenMai = new ArrayList<KhuyenMai>();
		String query = "from KHUYENMAI";
		listKhuyenMai = (List<KhuyenMai>) session.createQuery(query).getResultList();

		return listKhuyenMai;
	}
}
