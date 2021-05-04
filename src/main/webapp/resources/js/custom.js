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
	var hinhsanpham = $("#hinha").attr("data-value");
	var masanpham =	$("#masanpham").attr("data-value");
	var tensp = $("#tensp").text();
	var giatien =$("#giatien").attr("data-value");
	var soluong = $("#qty").val();

	
	$.ajax({
		url: "/minishop/api/ThemGioHang",
		type: "GET",
		data: {
			hinhsanpham:hinhsanpham,
			tensp: tensp,
			giatien: giatien,
			soluong:soluong,
			masanpham:masanpham
		},
		success: function(value) {
				$("#giohang").find("span").addClass("product_qun");
			$("#giohang").find("span").html("<span>"+value+"</span>");
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
		
				
				GanTongTienGioHang();
				
		function GanTongTienGioHang(){
			var tongtiensp =0  ;
		$(".tientong").each(function(){
			
	           
				var giatien = $(this).text();
				if(giatien != undefined ){
				tongtiensp = parseFloat(tongtiensp)+parseFloat(giatien);
			
				$("#tongtien").html(tongtiensp+"");
}
			})
			}
			
			$(".soluong-giohang").change(function(){
				var soluong = $(this).val();
				var giatien  = $(this).closest("tr").find(".product-price").attr("data");
				var tongtien = soluong*giatien; 
				 $(this).closest("tr").find(".product-subtotal").html(tongtien);
				GanTongTienGioHang();
				var masanpham =	$(this).closest("tr").find(".product-name2 ").attr("data");
				$.ajax({
		url: "/minishop/api/CapNhatGioHang",
		type: "GET",
		data: {
			soluong:soluong,
			masanpham:masanpham
		},
		success: function(value) {
			}
			})
			});
			