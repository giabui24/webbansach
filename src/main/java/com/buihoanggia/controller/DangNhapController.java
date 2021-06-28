package com.buihoanggia.controller;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@RequestMapping("dangnhap")
@SessionAttributes("user")
public class DangNhapController {
@GetMapping
	public String Default() {
		return "/dangnhap";
	}
	
	}
	


