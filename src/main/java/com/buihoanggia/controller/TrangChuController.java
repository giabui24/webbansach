package com.buihoanggia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import com.buihoanggia.entity.DanhMucSanPham;
import com.buihoanggia.entity.GioHang;
import com.buihoanggia.entity.SanPham;
import com.buihoanggia.service.DanhMucSanPhamService;
import com.buihoanggia.service.SanPhamService;


@Controller
@RequestMapping("/")
public class TrangChuController {

	@Autowired
	SanPhamService sanPhamService;
	@Autowired
	DanhMucSanPhamService danhMucSanPhamService;

	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap,HttpSession httpSession) {
		List<SanPham> listSanPhams = sanPhamService.LayDanhSachSanPhamLimit(0);
		List<DanhMucSanPham> listDanhMucSanPhams = danhMucSanPhamService.LayDanhMucSanPham();
	modelMap.addAttribute("listSanPham", listSanPhams);
	modelMap.addAttribute("DanhMuc", listDanhMucSanPhams);
	if (null != httpSession.getAttribute("giohang")) {
		List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
		  modelMap.addAttribute("soluongsanphamgiohang",gioHangs.size());
	}
		
		
		return "/trangchu";
	}
}
