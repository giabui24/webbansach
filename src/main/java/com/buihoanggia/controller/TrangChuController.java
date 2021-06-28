package com.buihoanggia.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.buihoanggia.daoimp.UserService;
import com.buihoanggia.entity.CrmUser;
import com.buihoanggia.entity.DanhMucSanPham;
import com.buihoanggia.entity.GioHang;
import com.buihoanggia.entity.Json_SanPham;
import com.buihoanggia.entity.NhaXuatBan;
import com.buihoanggia.entity.SanPham;
import com.buihoanggia.entity.User;

import com.buihoanggia.service.DanhMucSanPhamService;
import com.buihoanggia.service.SanPhamService;


@Controller
@RequestMapping("/")
public class TrangChuController {
	 @Autowired
	    private UserService userService;
		
	    private Logger logger = Logger.getLogger(getClass().getName());
	    
		@InitBinder
		public void initBinder(WebDataBinder dataBinder) {
			
			StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
			
			dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
		}	
	@Autowired
	SanPhamService sanPhamService;
	@Autowired
	DanhMucSanPhamService danhMucSanPhamService;

	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap,HttpSession httpSession) {
		List<SanPham> listSanPhams = sanPhamService.LayDanhSachSanPhamLimit(0);
		List<DanhMucSanPham> listDanhMucSanPhams = danhMucSanPhamService.LayDanhMucSanPham();
		List<NhaXuatBan> listNhaXuatBans = danhMucSanPhamService.LayNhaXuatBan();
	modelMap.addAttribute("listSanPham", listSanPhams);
	modelMap.addAttribute("DanhMuc", listDanhMucSanPhams);
	modelMap.addAttribute("NhaXuatBan", listNhaXuatBans);
	if (null != httpSession.getAttribute("giohang")) {
		List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
		  modelMap.addAttribute("soluongsanphamgiohang",gioHangs.size());
	}
		
		
		return "/trangchu";
	}
	@PostMapping("SearchPage")
	public String SearchBook(@ModelAttribute("sanpham") SanPham sanpham,Model model) {
		model.addAttribute("sanpham",new SanPham());
		List<SanPham> listsanpham = sanPhamService.SearchSach(sanpham.getTensanpham());
		System.out.println(sanpham.getTensanpham());
		if (listsanpham == null) {
			model.addAttribute("error", "Khong tim thay san pham");
			return "/ketquatimkiem";
		}else {
			model.addAttribute("listsearch",listsanpham);
			return "/ketquatimkiem";
		}
	}
	@PostMapping(path="AjaxSearchPage",produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<Json_SanPham> SearchBook(@RequestParam String tensanpham) {
		List<Json_SanPham> listjson = new ArrayList<Json_SanPham>();
		List<SanPham> listsanpham = sanPhamService.SearchSach(tensanpham);
		for(SanPham sanpham:listsanpham) {
			Json_SanPham json_SanPham = new Json_SanPham();
			json_SanPham.setMasanpham(sanpham.getMasanpham());
			json_SanPham.setTensanpham(sanpham.getTensanpham());
			listjson.add(json_SanPham);
		}
			return listjson;
		}
	@PostMapping("KiemTraDangNhap")
	public String KiemTraDangNhap(ModelMap modelMap,@ModelAttribute("user") User user) {
		modelMap.addAttribute("user", new User());
		modelMap.addAttribute("username",user.getUserName());
	
		return "/";
	}
	@PostMapping("KiemTraDangKy")
	public String KiemTraDangKy(@Valid @ModelAttribute("crmUser") CrmUser theCrmUser, 
			BindingResult theBindingResult, 
			Model theModel) {
		String userName = theCrmUser.getUserName();
		logger.info("Processing registration form for: " + userName);
		
		// form validation
		 if (theBindingResult.hasErrors()){
			 return "/dangky";
	        }

		// check the database if user already exists
        User existing = userService.findByUserName(userName);
        if (existing != null){
        	theModel.addAttribute("crmUser", new CrmUser());
			theModel.addAttribute("registrationError", "User name already exists.");

			logger.warning("User name already exists.");
        	return "/dangky";
        }
     // create user account        						
        userService.save(theCrmUser);
        
        logger.info("Successfully created user: " + userName);
        
        return "/dangnhap";	
	}
		
		
		
	
}


