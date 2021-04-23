package com.buihoanggia.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.buihoanggia.daoimp.NhanVienImp;
import com.buihoanggia.entity.NhanVien;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class NhanVienDao implements NhanVienImp{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	@Transactional
	public boolean KiemTraDangNhap(String email, String matkhau) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		try {
			NhanVien nhanvien =(NhanVien) session.createQuery("from NHANVIEN where email ='"+email+"' AND matkhau ='"+matkhau+"'").getSingleResult();
			if (nhanvien!=null) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
	}
	@Override
	@Transactional
	public boolean ThemNhanVien(NhanVien nhanVien) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		int manhanvien =(int) session.save(nhanVien);
		System.out.println(manhanvien+"_");
		return false;
	} 
	
	}


