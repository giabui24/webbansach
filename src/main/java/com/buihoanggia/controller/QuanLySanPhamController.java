package com.buihoanggia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.buihoanggia.entity.SanPham;
import com.buihoanggia.service.SanPhamService;

@Controller
@RequestMapping("quanlysanpham")
public class QuanLySanPhamController {
	@Autowired
	SanPhamService SanPhamService;
@GetMapping
public String Default(ModelMap modelMap) {

	
	List<SanPham> allsanPhams = SanPhamService.LayAllSanPham();
	modelMap.addAttribute("sanpham", allsanPhams);
	return "/quanlysanpham";
}
}