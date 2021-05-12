package com.buihoanggia.controller;


import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.buihoanggia.entity.ChiTietHoaDon;
import com.buihoanggia.entity.ChiTietHoaDonId;
import com.buihoanggia.entity.GioHang;
import com.buihoanggia.entity.HoaDon;
import com.buihoanggia.service.ChiTietHoaDonService;
import com.buihoanggia.service.HoaDonService;

@Controller
@RequestMapping("thanhtoan/")
public class ThanhToanController {
	@Autowired
	HoaDonService hoaDonService;
	
	@Autowired
	ChiTietHoaDonService chiTietHoaDonService;

	@GetMapping
	public String Default(HttpSession httpSession, ModelMap modelMap) {
		if (null != httpSession.getAttribute("giohang")) {
			List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			modelMap.addAttribute("soluongsanphamgiohang", gioHangs.size());
			modelMap.addAttribute("giohang", gioHangs);
		}

		return "/thanhtoan";
	}

	@GetMapping("ThemHoaDon")
	@ResponseBody
	public String ThemHoaDon(@RequestParam String tenkhachhang, @RequestParam String sdt,
			@RequestParam String diachigiaohang, @RequestParam String hinhthucgiaohang, HttpSession httpSession) {
		if (null != httpSession.getAttribute("giohang")) {
			List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");

			HoaDon hoaDon = new HoaDon();
			hoaDon.setTenkhachhang(tenkhachhang);
			hoaDon.setSdt(sdt);
			hoaDon.setDiachigiaohang(diachigiaohang);
			hoaDon.setHinhthucgiaohang(hinhthucgiaohang);
			int idHoaDon = hoaDonService.ThemHoaDon(hoaDon);
			if (0<idHoaDon) {
				Set<ChiTietHoaDon> listChiTietHoaDons = new HashSet<ChiTietHoaDon>();
				for (GioHang gioHang : gioHangs) {
					ChiTietHoaDonId chiTietHoaDonId = new ChiTietHoaDonId();
					chiTietHoaDonId.setMachitietsanpham(gioHang.getMachitiet());
					chiTietHoaDonId.setMahoadon(hoaDon.getMahoadon());
					ChiTietHoaDon chiTietHoaDon = new ChiTietHoaDon();
					chiTietHoaDon.setChiTietHoaDonId(chiTietHoaDonId);
					chiTietHoaDon.setGiatien(gioHang.getGiatien());
					chiTietHoaDon.setSoluong(gioHang.getSoluong());
					chiTietHoaDonService.ThemChiTietHoaDon(chiTietHoaDon);

				}

			} else {
System.err.println("Them tb");
			};

		
		}
		return "/trangchu";
	}
}
