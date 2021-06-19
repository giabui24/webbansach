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

import com.buihoanggia.daoimp.NhaXuatBanImp;
import com.buihoanggia.entity.NhaXuatBan;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class NhaXuatBanDao implements NhaXuatBanImp {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<NhaXuatBan> LayAllNhaXuatBan() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<NhaXuatBan> listnhaxuatban = new ArrayList<NhaXuatBan>();
		String query = "from NHAXUATBAN";
		listnhaxuatban = (List<NhaXuatBan>) session.createQuery(query).getResultList();

		return listnhaxuatban;
	}
}
