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

import com.buihoanggia.daoimp.TacGiaImp;
import com.buihoanggia.entity.TacGia;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class TacGiaDao implements TacGiaImp {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<TacGia> LayAllTacGia() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<TacGia> ListTacGia = new ArrayList<TacGia>();
		String query = "from TACGIA";
		ListTacGia = (List<TacGia>) session.createQuery(query).getResultList();

		return ListTacGia;
	}
}
