package com.buihoanggia.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.buihoanggia.entity.GioHang;
import com.buihoanggia.entity.SanPham;
import com.buihoanggia.service.NhanVienService;
import com.buihoanggia.service.SanPhamService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("api/")
@SessionAttributes({"email","giohang"})

public class ApiController {
	@Autowired 
	NhanVienService nhanvienservice;	
	
	@Autowired
	SanPhamService sanphamservice;
	
	@ResponseBody
	@PostMapping("KiemTraDangNhap")
	public String KiemTraDangNhap(@RequestParam String email ,@RequestParam String matkhau,ModelMap modelMap) {
		boolean kiemtra =	nhanvienservice.KiemTraDangNhap(email, matkhau);
		modelMap.addAttribute("email", email);
	
		return ""+kiemtra ;
		
	}
	
	@GetMapping("CapNhatGioHang")
	@ResponseBody
	public void CapNhatGioHang(HttpSession httpSession, @RequestParam String soluong,@RequestParam String masanpham) {
		if (null!=httpSession.getAttribute("giohang")) {
			List<GioHang> listgioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			int vitri =KiemTraSanPham(listgioHangs, Integer.parseInt(masanpham), httpSession);
			listgioHangs.get(vitri).setSoluong(Integer.parseInt(soluong));
		}
		
	}
	@GetMapping("XoaGioHang")
	@ResponseBody
	public void XoaGioHang(HttpSession httpSession,@RequestParam String masanpham) {
		if (null!=httpSession.getAttribute("giohang")) {
			List<GioHang> listgioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			int vitri =KiemTraSanPham(listgioHangs, Integer.parseInt(masanpham), httpSession);
			listgioHangs.remove(vitri);
		}
		
	}
	@GetMapping(path="LaySanPhamLimit",produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String LaySanPhamLimit(int spbatdau) throws JsonProcessingException {
		List<SanPham> sanphams = sanphamservice.LayDanhSachSanPhamLimit(spbatdau);
		ObjectMapper map = new ObjectMapper();
		String listsanphams = map.writeValueAsString(sanphams);
		System.out.println(listsanphams);
		return listsanphams;
	}
	
	@GetMapping("ThemGioHang")
	@ResponseBody
	public String ThemGioHang(@RequestParam String machitiet,@RequestParam String hinhsanpham,@RequestParam String tensp ,@RequestParam String giatien,@RequestParam String soluong,@RequestParam String masanpham,HttpSession httpSession) {
		if (null==httpSession.getAttribute("giohang")) {
			List<GioHang> gioHangs = new ArrayList<GioHang>();
			GioHang giohang = new GioHang();
			giohang.setMachitiet(Integer.parseInt(machitiet));
			giohang.setHinhsanpham(hinhsanpham);
			giohang.setTensp(tensp);
			giohang.setSoluong(Integer.parseInt(soluong));
			giohang.setGiatien(Integer.parseInt(giatien));
			giohang.setMasanpham(Integer.parseInt(masanpham));
			gioHangs.add(giohang);
			httpSession.setAttribute("giohang", gioHangs);
			return gioHangs.size()+"";
		}else {
			List<GioHang> listgioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			int vitri = KiemTraSanPham(listgioHangs,Integer.parseInt(masanpham), httpSession);
			if (vitri ==-1) {
				
				GioHang giohang = new GioHang();
				giohang.setMachitiet(Integer.parseInt(machitiet));
				giohang.setHinhsanpham(hinhsanpham);
				giohang.setTensp(tensp);
				giohang.setSoluong(Integer.parseInt(soluong));
				giohang.setGiatien(Integer.parseInt(giatien));
				giohang.setMasanpham(Integer.parseInt(masanpham));
				listgioHangs.add(giohang);
			
			}else {
		 GioHang giohang = new GioHang();
		 giohang.setSoluong(Integer.parseInt(soluong));
			int soluongmoi = listgioHangs.get(vitri).getSoluong()+giohang.getSoluong();
			listgioHangs.get(vitri).setSoluong(soluongmoi);
			
			}
			
			return listgioHangs.size()+"";	
			
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

/*
 * @GetMapping("LaySoLuongGioHang")
 * 
 * @ResponseBody public String LaySoLuongGioHang(HttpSession httpSession) { if
 * (null != httpSession.getAttribute("giohang")) { List<GioHang> gioHangs =
 * (List<GioHang>) httpSession.getAttribute("giohang"); return
 * gioHangs.size()+""; } return ""; }
 */

}
