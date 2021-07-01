$("#btnDangNhap").click(function() {
	var email = $("#email").val();
	var password = $("#matkhau").val();

	$.ajax({
		url: "/minishop/api/KiemTraDangNhap",
		type: "Post",
		data: {
			email: email,
			matkhau: password
		},
		success: function(value) {
			if (value == "true") {
				duongDanHienTai = window.location.href;
				duongDan = duongDanHienTai.replace("dangnhap/", "");
				window.location = duongDan;
			} else {
				$("#ketqua").text("dangnhapthatbai");
			}

		}
	})

});
$(".tocart").click(function() {
	var machitiet = $(this).attr("data-machitiet");
	var hinhsanpham = $("#hinha").attr("data-value");
	var masanpham = $("#masanpham").attr("data-value");
	var tensp = $("#tensp").text();
	var giatien = $("#giatien").attr("data-value");
	var soluong = $("#qty").val();


	$.ajax({
		url: "/minishop/api/ThemGioHang",
		type: "GET",
		data: {
			machitiet: machitiet,
			hinhsanpham: hinhsanpham,
			tensp: tensp,
			giatien: giatien,
			soluong: soluong,
			masanpham: masanpham
		},
		success: function(value) {
			$("#giohang").find("span").addClass("product_qun");
			$("#giohang").find("span").html("<span>" + value + "</span>");
		}


		/*	}).done(function(){
				$.ajax({
			url: "/minishop/api/LaySoLuongGioHang",
			type: "GET",
			success: function(value) {
				$("#giohang").find("span").addClass("product_qun");
				$("#giohang").find("span").html("<span>"+value+"</span>");
				
			}
		})
		});	
			});
				  */
	})
});


GanTongTienGioHang(true);

function GanTongTienGioHang(isEventChange) {
	var tongtiensp = 0;
	$(".tientong").each(function() {


		var giatien = $(this).text();
		if (giatien != undefined) {
			tongtiensp = parseFloat(tongtiensp) + parseFloat(giatien);
			if (isEventChange) {
				$("#tongtien").html(tongtiensp + "");
			}
		}
	})
}

$(".soluong-giohang").change(function() {
	var soluong = $(this).val();
	var giatien = $(this).closest("tr").find(".product-price").attr("data");
	var tongtien = soluong * giatien;
	$(this).closest("tr").find(".product-subtotal").html(tongtien);
	GanTongTienGioHang(true);
	var masanpham = $(this).closest("tr").find(".product-name2 ").attr("data");
	$.ajax({
		url: "/minishop/api/CapNhatGioHang",
		type: "GET",
		data: {
			soluong: soluong,
			masanpham: masanpham
		},
		success: function(value) {
		}
	})
});
$(".product-remove").click(function() {
	var self = $(this);
	var masanpham = $(this).closest("tr").find(".product-name2 ").attr("data");
	$.ajax({
		url: "/minishop/api/XoaGioHang",
		type: "GET",
		data: {

			masanpham: masanpham
		},
		success: function(value) {
			self.closest("tr").remove();
			GanTongTienGioHang(true);
		}
	})
});
$("#dathang").click(function() {
	var tenkhachhang = $("#tenkhachhang").val();
	var sdt = $("#sdt").val();
	var quocgia = $("#quocgia").val();
	var thanhpho = $("#thanhpho").val();
	var quan = $("#quan").val();

	var phuong = $("#phuong").val();
	var sonha = $("#sonha").val();
	var diachi = sonha + "-" + phuong + "-" + quan + "-" + thanhpho + "-" + quocgia;
	var hinhthucgiaohang = $("input[name='hinhthucgiaohang']:checked").val();
    var username = $("#username").text();
    var tongtien = $("#sumamount").attr("data-value");
 
  
	$.ajax({
		url: "/minishop/thanhtoan/ThemHoaDon",
		type: "GET",
		data: {
			tenkhachhang: tenkhachhang,
			sdt: sdt,
			diachigiaohang: diachi,
			hinhthucgiaohang: hinhthucgiaohang,
			username:username,
			tongtien:tongtien
		},
		success: function(value) {
			alert("dathangthanhcong");
			duongDanHienTai = window.location.href;
				duongDan = duongDanHienTai.replace("thanhtoan/", "hoadon/");
				window.location = duongDan;
		}
	})

});
/*$("body").on("click",".paging-item",function(){
	var sotrang = $(this).text();
	var spbatdau = parseInt(sotrang-1)*7;
	$.ajax({
		url: "/minishop/api/LaySanPhamLimit",
	type: "GET",
	data: {
		spbatdau:spbatdau,
		},
		success: function(data) {
	}
	})
})*/
$(".xoa-sanpham").click(function(event) {
	event.preventDefault();
	var masanpham = $(this).closest("tr").find(".td-masanpham").text();
	var This = $(this)
	$(this).closest("tr").hide();
	$.ajax({
		url: "/minishop/quanlysanpham/XoaSanPham",
		type: "GET",
		data: {
			masanpham: masanpham,
		},
		success: function(value) {
			This.closest("tr").remove();
			alert("Xoa san pham thanh cong");
		}
	})

});
var files = [];
var tenhinh = "";
$("#hinhanh").change(function(event) {


	files = event.target.files;
	tenhinh = files[0].name;
	forms = new FormData();
	forms.append("file", files[0]);
	$.ajax({
		url: "/minishop/api/UploadFile",
		type: "POST",
		data:
			forms,
		enctype: "multipart/form-data",
		processData: false,
		contentType: false,

		success: function(value) {
			alert("up hinh thanh cong");
		}
	})

});
$("#btnThemsanpham").click(function(event) {
	Validate();
	event.preventDefault();
	var formdata = $("#form-sanpham").serializeArray();
	json = {};
	arraychitiet = [];
	$.each(formdata, function(i, field) {

		json[field.name] = field.value;

	});
	$("#chitietsanpham").each(function() {
		objectChitiet = {};
		tacgia = $(this).find('select[name="tacgia"]').val();
		nhaxuatban = $(this).find('select[name="nhaxuatban"]').val();
		khuyenmai = $(this).find('select[name="khuyenmai"]').val();
		soluong = $(this).find('input[name="soluong"]').val();
		objectChitiet["tacgia"] = tacgia;
		objectChitiet["nhaxuatban"] = nhaxuatban;
		objectChitiet["khuyenmai"] = khuyenmai;
		objectChitiet["soluong"] = soluong;
		arraychitiet.push(objectChitiet);
	});
	json["chitietsanpham"] = arraychitiet;
	json["hinhsanpham"] = tenhinh;
	console.log(json);
	if(Validate()== true){
	$.ajax({
		url: "/minishop/quanlysanpham/ThemSanPhamMoi",
		type: "POST",
		data: {
			dataJson: JSON.stringify(json),
		},
		success: function(value) {
			alert("Themsanphamthanhcong");
		}
	})
	}
		
	
})


$("#btncapnhatsanpham").click(function(event) {
	var masanpham = $("#masanpham").attr("data-value");
	event.preventDefault();
	var formdata = $("#form-sanpham").serializeArray();
	json = {};
	arraychitiet = [];
	$.each(formdata, function(i, field) {

		json[field.name] = field.value;

	});
	$("#chitietsanpham").each(function() {
		objectChitiet = {};
		tacgia = $(this).find('select[name="tacgia"]').val();
		nhaxuatban = $(this).find('select[name="nhaxuatban"]').val();
		khuyenmai = $(this).find('select[name="khuyenmai"]').val();
		soluong = $(this).find('input[name="soluong"]').val();
		objectChitiet["tacgia"] = tacgia;
		objectChitiet["nhaxuatban"] = nhaxuatban;
		objectChitiet["khuyenmai"] = khuyenmai;
		objectChitiet["soluong"] = soluong;
		arraychitiet.push(objectChitiet);
	});
	json["chitietsanpham"] = arraychitiet;
	json["hinhsanpham"] = tenhinh;
	json["masanpham"] = masanpham;
	console.log(json);
	$.ajax({
		url: "/minishop/quanlysanpham/UpdateSanPhamMoi",
		type: "POST",
		data: {
			dataJson: JSON.stringify(json),
		},
		success: function(value) {
			alert("Updatethanhconng");
		}
	})
});

$(document).ready(function() {
	$("#ketquatimkiem").keyup(function() {
		tensanpham = $('#ketquatimkiem').val();
		$.ajax({
			url: "/minishop/AjaxSearchPage",
			type: "POST",
			data: {
				tensanpham: tensanpham
			},
			success: function(value) {
				console.log(JSON.stringify(value));
				$('#searchresult').html();
				var regex = new RegExp(tensanpham, "i");
				data = JSON.stringify(value);
				$.each(JSON.parse(data), function(key, val) {

					/*$('#searchresult').append('<li class="list-group-item">'+val.tensanpham+'</li>');*/
					var s = "";
					if (tensanpham === "") {
						s = '';
						
					} else {
						  if (val.tensanpham.search(regex) != -1 )
    {
						s += '<div class="alert alert-info">';

						s += '<a href="chitiet/' + val.masanpham + '" >' + val.tensanpham + '</a></br>'


						s += '</div>';
						
						}
					}
				
					$("#searchresult").append(s);
					
				});
	

			}
		})
	});
});
 function Validate() {
	var tensanpham = $("#tensanpham").val();
	if(tensanpham == " " && tensanpham == null){
		$("#validatetensp").html("<p>"+"Mật khẩu không trùng khớp"+"</p>").css('color', 'red').css("margin-left", "2%");
	}
	return false;
}
	


