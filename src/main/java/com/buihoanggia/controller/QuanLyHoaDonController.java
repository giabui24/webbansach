package com.buihoanggia.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.buihoanggia.entity.ChiTietHoaDon;
import com.buihoanggia.entity.HoaDon;
import com.buihoanggia.service.HoaDonService;

@Controller
@RequestMapping("hoadon/")
public class QuanLyHoaDonController {
	@Autowired
	HoaDonService hoadonservice;
@GetMapping
	public String Default(Authentication authentication,ModelMap modelMap) {
String	username = authentication.getName();
List<HoaDon> listHoaDons = hoadonservice.ListHoaDon(username);
modelMap.addAttribute("listhoadon", listHoaDons);
	return "/hoadon";
}
@GetMapping("chitiethoadon/{mahoadon}")
public String ChiTietHoaDon(@PathVariable int mahoadon,ModelMap modelMap) {
	HoaDon hoadon = hoadonservice.LayHoaDonTheoMa(mahoadon);
	modelMap.addAttribute("hoadon", hoadon);

	return "/chitiethoadon";
	
}
}
