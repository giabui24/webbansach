package com.buihoanggia.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

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
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPhams = new ArrayList<SanPham>();
		// TODO Auto-generated method stub

		listSanPhams = (List<SanPham>) session.createQuery("from SANPHAM").setFirstResult(spbatdau).setMaxResults(7)
				.getResultList();
		return listSanPhams;
	}

	@Override
	@Transactional
	public SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String query = "from SANPHAM sp where sp.masanpham =" + masanpham;
		SanPham sanPham = (SanPham) session.createQuery(query).getSingleResult();

		return sanPham;
	}

	@Override
	@Transactional
	public List<SanPham> LayDanhSachSanPhamTheoMaDanhMuc(int madanhmuc) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String query = "from SANPHAM sp where sp.danhMucSanPham.madanhmuc =" + madanhmuc;
		List<SanPham> listSanPhams = (List<SanPham>) session.createQuery(query).getResultList();
		return listSanPhams;
	}

	@Override
	@Transactional
	public List<SanPham> LayAllSanPham() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPhams = new ArrayList<SanPham>();
		String query = "from SANPHAM";
		listSanPhams = (List<SanPham>) session.createQuery(query).getResultList();

		return listSanPhams;
	}

	@Override
	@Transactional
	public boolean XoaSanPham(int masanpham) {
		// TODO Auto-generated method stub
		 Session session = sessionFactory.getCurrentSession();
		 SanPham sanPham = session.get(SanPham.class, masanpham);
		 Set<ChiTietSanPham> chiTietSanPhams = sanPham.getDanhsachchiTietSanPham();
		 for(ChiTietSanPham chiTietSanPham:chiTietSanPhams) {
			 session.createQuery("delete CHITIETHOADON WHERE machitietsanpham="+chiTietSanPham.getMachitietsanpham()).executeUpdate();
		 }
		 session.createQuery("delete CHITIETSANPHAM WHERE masanpham="+masanpham).executeUpdate();
		 session.createQuery("delete SANPHAM WHERE masanpham="+masanpham).executeUpdate();
		 
		return false;
	}

	@Override
	@Transactional
	public boolean ThemSanPham(SanPham sanpham) {
		// TODO Auto-generated method stub
		 Session session = sessionFactory.getCurrentSession();
		int id = (int) session.save(sanpham);
		
		
		return false;
	}

}
