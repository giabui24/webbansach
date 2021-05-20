package com.buihoanggia.controller;

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
		List<SanPham> listSanPhams = sanPhamService.LayDanhSachSanPhamTheoMaDanhMuc(id);
		List<NhaXuatBan> listNhaXuatBans = danhMucSanPhamService.LayNhaXuatBan();
		modelMap.addAttribute("DanhMuc", listDanhMucSanPhams);
		modelMap.addAttribute("SanPham", listSanPhams);
		modelMap.addAttribute("NhaXuatBan", listNhaXuatBans);
		return "/danhmucsanpham";
	
}
}
