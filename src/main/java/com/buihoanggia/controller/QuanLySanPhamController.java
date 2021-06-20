package com.buihoanggia.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.buihoanggia.entity.ChiTietSanPham;
import com.buihoanggia.entity.DanhMucSanPham;
import com.buihoanggia.entity.KhuyenMai;
import com.buihoanggia.entity.NhaXuatBan;
import com.buihoanggia.entity.SanPham;
import com.buihoanggia.entity.TacGia;
import com.buihoanggia.service.DanhMucSanPhamService;
import com.buihoanggia.service.KhuyenMaiService;
import com.buihoanggia.service.NhaXuatBanService;
import com.buihoanggia.service.SanPhamService;
import com.buihoanggia.service.TacGiaService;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;

@Controller
@RequestMapping("quanlysanpham/")
public class QuanLySanPhamController {
	@Autowired
	SanPhamService SanPhamService;
	@Autowired
	DanhMucSanPhamService danhMucSanPhamService;
	@Autowired
	TacGiaService tacgiaService;
	@Autowired
	NhaXuatBanService nhaXuatBanSerVice;
	@Autowired
	KhuyenMaiService khuyenMaiService;
@GetMapping
public String Default(ModelMap modelMap) {

	
	List<SanPham> allsanPhams = SanPhamService.LayAllSanPham();
	modelMap.addAttribute("sanpham", allsanPhams);
	return "/quanlysanpham";
}
@GetMapping("ThemSanPham")
public String ThemSanPham(ModelMap modelmap){
	List<DanhMucSanPham> listDanhMucSanPhams = danhMucSanPhamService.LayDanhMucSanPham();
	List<TacGia> listTacGia = tacgiaService.LayAllTacGia();
	List<NhaXuatBan> listNhaXuatBan = nhaXuatBanSerVice.LayAllNhaXuatBan();
	List<KhuyenMai> listKhuyenMai = khuyenMaiService.LayAllKhuyenMai();
	modelmap.addAttribute("danhmuc",listDanhMucSanPhams);
	modelmap.addAttribute("khuyenmai",listKhuyenMai);
	modelmap.addAttribute("nhaxuatban",listNhaXuatBan);
	modelmap.addAttribute("tacgia",listTacGia);
	return"/themsanpham";
}
@GetMapping("XoaSanPham")
@ResponseBody
public String XoaSanPhamTheoMaSanPham(@RequestParam int masanpham) {
	SanPhamService.XoaSanPham(masanpham);
	return "true";
}
@PostMapping("ThemSanPhamMoi")
@ResponseBody
public void ThemSanPhamMoi(@RequestParam String dataJson) {
	ObjectMapper objectMapper = new ObjectMapper();
	JsonNode jsonObject;
	Set<ChiTietSanPham> listChiTiet = new HashSet<ChiTietSanPham>();
	
	try {
		SanPham sanPham = new SanPham();
		
		jsonObject = objectMapper.readTree(dataJson);
		DanhMucSanPham danhMucSanPham = new DanhMucSanPham();
		danhMucSanPham.setMadanhmuc(jsonObject.get("danhmucsanpham").asInt());
		
		JsonNode jsonChitiet = jsonObject.get("chitietsanpham");
		for(JsonNode objectchitiet:jsonChitiet) {
			ChiTietSanPham chitietsanpham = new ChiTietSanPham();
			TacGia tacgia = new TacGia();
			tacgia.setMatacgia(objectchitiet.get("tacgia").asInt());
			KhuyenMai khuyenmai = new KhuyenMai();
			khuyenmai.setMakhuyenmai(objectchitiet.get("khuyenmai").asInt());
			NhaXuatBan nhaxuatban = new NhaXuatBan();
			nhaxuatban.setManhaxuatban(objectchitiet.get("nhaxuatban").asInt());
			chitietsanpham.setTacGia(tacgia);
			chitietsanpham.setNhaXuatBan(nhaxuatban);
			chitietsanpham.setKhuyenmai(khuyenmai);
			chitietsanpham.setSoluong(objectchitiet.get("soluong").asInt());
			listChiTiet.add(chitietsanpham);
		}
		String tensanpham = jsonObject.get("tensanpham").asText();
		String giatien = jsonObject.get("giatien").asText();
		String hinhsanpham = jsonObject.get("hinhsanpham").asText();
		String mota = jsonObject.get("mota").asText();
		sanPham.setDanhsachchiTietSanPham(listChiTiet);
		sanPham.setDanhMucSanPham(danhMucSanPham);
		sanPham.setTensanpham(tensanpham);
		sanPham.setGiatien(giatien);
		sanPham.setHinhsanpham("/resources/images/"+hinhsanpham);
		sanPham.setMota(mota);
		SanPhamService.ThemSanPham(sanPham);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	System.out.println(dataJson);
}
@GetMapping("UpdateSanPham/{masanpham}")
public String UpdateSanPham(@PathVariable int masanpham,ModelMap modelmap){
	SanPham sanphams= SanPhamService.LayDanhSachChiTietSanPhamTheoMa(masanpham);
	List<DanhMucSanPham> listDanhMucSanPhams = danhMucSanPhamService.LayDanhMucSanPham();
	List<TacGia> listTacGia = tacgiaService.LayAllTacGia();
	List<NhaXuatBan> listNhaXuatBan = nhaXuatBanSerVice.LayAllNhaXuatBan();
	List<KhuyenMai> listKhuyenMai = khuyenMaiService.LayAllKhuyenMai();
	modelmap.addAttribute("danhmuc",listDanhMucSanPhams);
	modelmap.addAttribute("khuyenmai",listKhuyenMai);
	modelmap.addAttribute("nhaxuatban",listNhaXuatBan);
	modelmap.addAttribute("tacgia",listTacGia);
	modelmap.addAttribute("sanpham", sanphams);
	return "/updatesanpham";
}
@PostMapping("UpdateSanPhamMoi")
@ResponseBody
public void UpdateSanPhamMoi(@RequestParam String dataJson) {
	ObjectMapper objectMapper = new ObjectMapper();
	JsonNode jsonObject;
	Set<ChiTietSanPham> listChiTiet = new HashSet<ChiTietSanPham>();
	
	try {
		SanPham sanPham = new SanPham();
		
		jsonObject = objectMapper.readTree(dataJson);
		DanhMucSanPham danhMucSanPham = new DanhMucSanPham();
		danhMucSanPham.setMadanhmuc(jsonObject.get("danhmucsanpham").asInt());
		
		JsonNode jsonChitiet = jsonObject.get("chitietsanpham");
		for(JsonNode objectchitiet:jsonChitiet) {
			ChiTietSanPham chitietsanpham = new ChiTietSanPham();
			TacGia tacgia = new TacGia();
			tacgia.setMatacgia(objectchitiet.get("tacgia").asInt());
			KhuyenMai khuyenmai = new KhuyenMai();
			khuyenmai.setMakhuyenmai(objectchitiet.get("khuyenmai").asInt());
			NhaXuatBan nhaxuatban = new NhaXuatBan();
			nhaxuatban.setManhaxuatban(objectchitiet.get("nhaxuatban").asInt());
			chitietsanpham.setTacGia(tacgia);
			chitietsanpham.setNhaXuatBan(nhaxuatban);
			chitietsanpham.setKhuyenmai(khuyenmai);
			chitietsanpham.setSoluong(objectchitiet.get("soluong").asInt());
			listChiTiet.add(chitietsanpham);
		}
		String tensanpham = jsonObject.get("tensanpham").asText();
		String giatien = jsonObject.get("giatien").asText();
		String hinhsanpham = jsonObject.get("hinhsanpham").asText();
		String mota = jsonObject.get("mota").asText();
		int masanpham = jsonObject.get("masanpham").asInt();
		sanPham.setDanhsachchiTietSanPham(listChiTiet);
		sanPham.setDanhMucSanPham(danhMucSanPham);
		sanPham.setTensanpham(tensanpham);
		sanPham.setGiatien(giatien);
		sanPham.setHinhsanpham("/resources/images/"+hinhsanpham);
		sanPham.setMota(mota);
		sanPham.setMasanpham(masanpham);
		SanPhamService.UpdateSanPham(sanPham);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	System.out.println(dataJson);
}
}
