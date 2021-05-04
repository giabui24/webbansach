package com.buihoanggia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.buihoanggia.entity.GioHang;
import com.buihoanggia.entity.SanPham;
import com.buihoanggia.service.SanPhamService;

@Controller
@RequestMapping("chitiet")
@SessionAttributes("giohang")

public class ChiTietController {
	@Autowired
	SanPhamService sanPhamService;

@GetMapping("/{masanpham}")
	public String Default(@PathVariable int masanpham,ModelMap modelMap,HttpSession httpSession) {
	SanPham sanphams= sanPhamService.LayDanhSachChiTietSanPhamTheoMa(masanpham);
	if (null != httpSession.getAttribute("giohang")) {
		List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
		  modelMap.addAttribute("soluongsanphamgiohang",gioHangs.size());
	}
	
	modelMap.addAttribute("sanpham",sanphams);
 
		return "/chitiet";
	}
	
}
