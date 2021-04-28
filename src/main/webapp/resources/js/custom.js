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
			if(value =="true"){
				duongDanHienTai = window.location.href;
				duongDan = duongDanHienTai.replace("dangnhap/","");
				window.location = duongDan;
			}else{
				$("#ketqua").text("dangnhapthatbai");
	}

		}
    })

	});
	$(".tocart").click(function() {
	var masanpham =	$("#masanpham").attr("data-value");
	var tensp = $("#tensp").text();
	var giatien =$("#giatien").attr("data-value");
	var soluong = $("#qty").val();
	
	$.ajax({
		url: "/minishop/api/ThemGioHang",
		type: "GET",
		data: {
			tensp: tensp,
			giatien: giatien,
			soluong:soluong,
			masanpham:masanpham
		},
		success: function(value) {
			if(value =="true"){
				duongDanHienTai = window.location.href;
				duongDan = duongDanHienTai.replace("dangnhap/","");
				window.location = duongDan;
			}else{
				$("#ketqua").text("dangnhapthatbai");
	}

		}
    })

	});

