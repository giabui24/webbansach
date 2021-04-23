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

