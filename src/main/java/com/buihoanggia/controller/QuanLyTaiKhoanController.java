package com.buihoanggia.controller;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.buihoanggia.daoimp.UserService;
import com.buihoanggia.entity.Role;
import com.buihoanggia.entity.User;



@Controller
@RequestMapping("quanlytaikhoan/")
public class QuanLyTaiKhoanController {
	 @Autowired
	    private UserService userService;
	@GetMapping
	public String Default(ModelMap modelMap) {
List<User> listuser = userService.DanhSachTaiKhoan();
modelMap.addAttribute("listuser",listuser);

		return "/quanlytaikhoan";
	}
}
