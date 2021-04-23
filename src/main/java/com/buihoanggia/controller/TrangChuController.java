package com.buihoanggia.controller;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import com.buihoanggia.entity.SanPham;
import com.buihoanggia.service.SanPhamService;


@Controller
@RequestMapping("/")
public class TrangChuController {

	@Autowired
	SanPhamService sanPhamService;
	

	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap) {
		List<SanPham> listSanPhams = sanPhamService.LayDanhSachSanPhamLimit(0);
	modelMap.addAttribute("listSanPham", listSanPhams);
		
		
		return "/trangchu";
	}
}
