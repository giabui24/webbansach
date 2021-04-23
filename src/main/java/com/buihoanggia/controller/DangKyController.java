package com.buihoanggia.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.buihoanggia.entity.NhanVien;
import com.buihoanggia.service.NhanVienService;

@Controller
@RequestMapping("dangky/")
public class DangKyController {
	@Autowired 
	NhanVienService nhanvienservice;	
	@GetMapping
	public String Default() {

		return "/dangky";
	}
	@PostMapping
	public String DangKy(@RequestParam String email,@RequestParam String matkhau,@RequestParam String nhaplaimatkhau) {
		boolean ktmail = validate(email);
		if(ktmail) {
			if (matkhau.equals(nhaplaimatkhau)) {
				NhanVien nhanVien = new NhanVien();
				nhanVien.setEmail(email);
				nhanVien.setTendangnhap(email);
				nhanVien.setMatkhau(matkhau);
				nhanvienservice.ThemNhanVien(nhanVien);
			}			
		}
		return "/dangky";
		
	}
	public static final Pattern VALID_EMAIL_ADDRESS_REGEX = 
		    Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

		public static boolean validate(String emailStr) {
		        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
		        return matcher.find();
		}
}
