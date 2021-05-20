package com.buihoanggia.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.buihoanggia.entity.DanhMucSanPham;
import com.buihoanggia.entity.NhaXuatBan;



@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class DanhMucSanPhamDao {
	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public List<DanhMucSanPham> LayDanhMucSanPham() {
		// TODO Auto-generated method stub
		 Session session = sessionFactory.getCurrentSession();
		 List<DanhMucSanPham> listDanhMucSanPhams =( List<DanhMucSanPham>) session.createQuery("from DANHMUCSANPHAM").getResultList();
		return listDanhMucSanPhams;
	}
	@Transactional
	public List<NhaXuatBan> LayNhaXuatBan() {
		// TODO Auto-generated method stub
		 Session session = sessionFactory.getCurrentSession();
		 List<NhaXuatBan> listNhaXuatBans =( List<NhaXuatBan>) session.createQuery("from NHAXUATBAN").getResultList();
		return listNhaXuatBans;
	}
}
