package com.buihoanggia.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.buihoanggia.entity.GioHang;
import com.buihoanggia.service.NhanVienService;

@Controller
@RequestMapping("api/")
@SessionAttributes({"email","giohang"})

public class ApiController {
	@Autowired 
	NhanVienService nhanvienservice;	
	
	
	
	@ResponseBody
	@PostMapping("KiemTraDangNhap")
	public String KiemTraDangNhap(@RequestParam String email ,@RequestParam String matkhau,ModelMap modelMap) {
		boolean kiemtra =	nhanvienservice.KiemTraDangNhap(email, matkhau);
		modelMap.addAttribute("email", email);
	
		return ""+kiemtra ;
		
	}
	@GetMapping("ThemGioHang")
	public void ThemGioHang(@RequestParam String tensp ,@RequestParam String giatien,@RequestParam String soluong,@RequestParam String masanpham,HttpSession httpSession) {
		if (null==httpSession.getAttribute("giohang")) {
			List<GioHang> gioHangs = new ArrayList<GioHang>();
			GioHang giohang = new GioHang();
			giohang.setTensp(tensp);
			giohang.setSoluong(Integer.parseInt(soluong));
			giohang.setGiatien(Integer.parseInt(giatien));
			giohang.setMasanpham(Integer.parseInt(masanpham));
			gioHangs.add(giohang);
			httpSession.setAttribute("giohang", gioHangs);
		}else {
			List<GioHang> listgioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			int vitri = KiemTraSanPham(listgioHangs,Integer.parseInt(masanpham), httpSession);
			if (vitri ==-1) {
				
				GioHang giohang = new GioHang();
				giohang.setTensp(tensp);
				giohang.setSoluong(Integer.parseInt(soluong));
				giohang.setGiatien(Integer.parseInt(giatien));
				giohang.setMasanpham(Integer.parseInt(masanpham));
				listgioHangs.add(giohang);
			}else {
		
			int soluongmoi = listgioHangs.get(vitri).getSoluong()+1;
			listgioHangs.get(vitri).setSoluong(soluongmoi);
			
			}
			
			
			
		}
		
		List<GioHang> listgioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
		for (GioHang gohang : listgioHangs) {
			System.out.println(gohang.getMasanpham()+"_"+gohang.getTensp()+"_"+gohang.getGiatien()+"_"+gohang.getSoluong());
		}
		
		
		
		
		
	}
private int KiemTraSanPham(List<GioHang> listgioHangs,int masanpham,HttpSession httpSession) {
	
	for (int i = 0; i < listgioHangs.size(); i++) {
		if (listgioHangs.get(i).getMasanpham()== masanpham) {
			return i;
			
		}
		
	}
	return -1;
	
}
}
