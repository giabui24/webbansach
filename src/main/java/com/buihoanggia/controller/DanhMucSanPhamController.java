package com.buihoanggia.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.buihoanggia.entity.DanhMucSanPham;
import com.buihoanggia.entity.NhaXuatBan;
import com.buihoanggia.entity.SanPham;
import com.buihoanggia.service.DanhMucSanPhamService;
import com.buihoanggia.service.SanPhamService;
import com.sun.org.apache.xpath.internal.operations.Mod;

@Controller
@RequestMapping("danhmucsanpham/")
public class DanhMucSanPhamController {
	@Autowired
	DanhMucSanPhamService danhMucSanPhamService;
	@Autowired
	SanPhamService sanPhamService;
	@GetMapping("{id}")
public String Default(ModelMap modelMap,@PathVariable int id) {
		List<DanhMucSanPham> listDanhMucSanPhams = danhMucSanPhamService.LayDanhMucSanPham();
		List<SanPham> listSanPhams = new ArrayList<SanPham>();
	
		listSanPhams = sanPhamService.LayDanhSachSanPhamTheoMaDanhMuc(id);
		List<NhaXuatBan> listNhaXuatBans = danhMucSanPhamService.LayNhaXuatBan();
		modelMap.addAttribute("DanhMuc", listDanhMucSanPhams);
		modelMap.addAttribute("SanPham", listSanPhams);
		modelMap.addAttribute("NhaXuatBan", listNhaXuatBans);
		return "/danhmucsanpham";
	
}
	@GetMapping("/all")
	public String DanhMucSanPham(ModelMap modelMap) {
		List<SanPham> listSanPhams = new ArrayList<SanPham>();
		List<SanPham> listlimit = sanPhamService.LayDanhSachSanPhamLimit(0);
		listSanPhams = sanPhamService.LayAllSanPham();
		double tongsopage = Math.ceil((double)listSanPhams.size()/7) ;
		modelMap.addAttribute("SanPham", listlimit);
		modelMap.addAttribute("tongsopage",tongsopage);
		return "/danhmucsanpham";
		
	}
	
	
}
