package com.buihoanggia.dao;

import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.buihoanggia.daoimp.SanPhamImp;
import com.buihoanggia.entity.ChiTietSanPham;
import com.buihoanggia.entity.SanPham;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SanPhamDao implements SanPhamImp {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<SanPham> LayDanhSachSanPhamLimit(int spbatdau) {
		// TODO Auto-generated method stub
		 Session session = sessionFactory.getCurrentSession();
		 List<SanPham> listSanPhams =( List<SanPham>) session.createQuery("from SANPHAM").setFirstResult(spbatdau).setMaxResults(7).getResultList();
		return listSanPhams;
	}


@Override
@Transactional
public SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham) {
	// TODO Auto-generated method stub
	Session session = sessionFactory.getCurrentSession();
	String query="from SANPHAM sp where sp.masanpham ="+ masanpham;
	 SanPham sanPham =( SanPham) session.createQuery(query).getSingleResult();
	
	
	return sanPham;
}
}
