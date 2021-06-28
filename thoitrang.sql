/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : thoitrang

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 27/06/2021 15:59:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chitiethoadon
-- ----------------------------
DROP TABLE IF EXISTS `chitiethoadon`;
CREATE TABLE `chitiethoadon`  (
  `mahoadon` int(11) NOT NULL,
  `machitietsanpham` int(11) NOT NULL,
  `soluong` int(11) NULL DEFAULT NULL,
  `giatien` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`mahoadon`, `machitietsanpham`) USING BTREE,
  INDEX `FK_CTHOADON_CTSANPHAM`(`machitietsanpham`) USING BTREE,
  CONSTRAINT `FK_CTHOADON_CTSANPHAM` FOREIGN KEY (`machitietsanpham`) REFERENCES `chitietsanpham` (`machitietsanpham`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CTHOADON_HOADON` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chitiethoadon
-- ----------------------------
INSERT INTO `chitiethoadon` VALUES (31, 2, 1, '44000');
INSERT INTO `chitiethoadon` VALUES (31, 4, 3, '81000');
INSERT INTO `chitiethoadon` VALUES (32, 2, 1, '44000');
INSERT INTO `chitiethoadon` VALUES (32, 4, 3, '81000');
INSERT INTO `chitiethoadon` VALUES (33, 2, 1, '44000');
INSERT INTO `chitiethoadon` VALUES (33, 4, 3, '81000');
INSERT INTO `chitiethoadon` VALUES (34, 1, 1, '45000');
INSERT INTO `chitiethoadon` VALUES (34, 3, 1, '66000');
INSERT INTO `chitiethoadon` VALUES (35, 2, 1, '44000');

-- ----------------------------
-- Table structure for chitietsanpham
-- ----------------------------
DROP TABLE IF EXISTS `chitietsanpham`;
CREATE TABLE `chitietsanpham`  (
  `machitietsanpham` int(11) NOT NULL AUTO_INCREMENT,
  `masanpham` int(11) NULL DEFAULT NULL,
  `manhaxuatban` int(11) NULL DEFAULT NULL,
  `matacgia` int(11) NULL DEFAULT NULL,
  `soluong` int(11) NULL DEFAULT NULL,
  `ngaynhap` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `makhuyenmai` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`machitietsanpham`) USING BTREE,
  INDEX `FK_CHITIET_SANPHAM`(`masanpham`) USING BTREE,
  INDEX `FK_CHITIET_NHAXUATBAN`(`manhaxuatban`) USING BTREE,
  INDEX `FK_CHITIET_TACGIA`(`matacgia`) USING BTREE,
  INDEX `FK_CHITIET_KHUYENMAI`(`makhuyenmai`) USING BTREE,
  CONSTRAINT `FK_CHITIET_KHUYENMAI` FOREIGN KEY (`makhuyenmai`) REFERENCES `khuyenmai` (`makhuyenmai`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CHITIET_NHAXUATBAN` FOREIGN KEY (`manhaxuatban`) REFERENCES `nhaxuatban` (`manhaxuatban`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_CHITIET_SANPHAM` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_CHITIET_TACGIA` FOREIGN KEY (`matacgia`) REFERENCES `tacgia` (`matacgia`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chitietsanpham
-- ----------------------------
INSERT INTO `chitietsanpham` VALUES (1, 1, 1, 1, 10, '4232021', 1);
INSERT INTO `chitietsanpham` VALUES (2, 2, 2, 2, 30, '522021', 1);
INSERT INTO `chitietsanpham` VALUES (3, 3, 3, 4, 40, '6232021', 1);
INSERT INTO `chitietsanpham` VALUES (4, 4, 4, 5, 25, '2232021', 1);
INSERT INTO `chitietsanpham` VALUES (5, 5, 1, 1, 10, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (6, 6, 2, 2, 11, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (7, 7, 3, 3, 12, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (8, 8, 4, 4, 13, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (9, 9, 1, 5, 14, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (10, 10, 2, 1, 15, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (11, 11, 3, 2, 16, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (12, 12, 4, 3, 15, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (13, 13, 1, 4, 17, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (14, 14, 2, 5, 18, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (15, 15, 3, 5, 19, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (16, 16, 4, 5, 20, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (17, 17, 1, 1, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (18, 18, 1, 5, 24, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (19, 19, 2, 2, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (20, 20, 1, 2, 23, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (21, 21, 2, 3, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (22, 22, 3, 4, 23, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (23, 23, 4, 4, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (24, 24, 4, 5, 24, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (25, 25, 3, 4, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (26, 26, 1, 2, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (27, 27, 2, 3, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (28, 28, 1, 2, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (29, 29, 3, 4, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (30, 30, 4, 5, 24, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (31, 31, 4, 3, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (32, 32, 4, 3, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (33, 33, 2, 2, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (34, 34, 2, 2, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (35, 35, 1, 1, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (36, 36, 3, 3, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (37, 37, 4, 5, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (38, 38, 4, 5, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (39, 39, 4, 2, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (40, 40, 4, 3, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (41, 41, 4, 3, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (42, 42, 3, 4, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (43, 43, 1, 2, 22, '1232021', 1);
INSERT INTO `chitietsanpham` VALUES (44, 44, 4, 3, 22, '1232021', 1);

-- ----------------------------
-- Table structure for chucvu
-- ----------------------------
DROP TABLE IF EXISTS `chucvu`;
CREATE TABLE `chucvu`  (
  `machucvu` int(11) NOT NULL AUTO_INCREMENT,
  `tenchucvu` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`machucvu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chucvu
-- ----------------------------
INSERT INTO `chucvu` VALUES (1, 'Nhân viên');
INSERT INTO `chucvu` VALUES (2, 'Admin');
INSERT INTO `chucvu` VALUES (3, 'User');

-- ----------------------------
-- Table structure for danhmucsanpham
-- ----------------------------
DROP TABLE IF EXISTS `danhmucsanpham`;
CREATE TABLE `danhmucsanpham`  (
  `madanhmuc` int(11) NOT NULL AUTO_INCREMENT,
  `tendanhmuc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `hinhdanhmuc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`madanhmuc`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of danhmucsanpham
-- ----------------------------
INSERT INTO `danhmucsanpham` VALUES (1, 'Tiểu Thuyết', NULL);
INSERT INTO `danhmucsanpham` VALUES (2, 'Truyện Ngắn', NULL);
INSERT INTO `danhmucsanpham` VALUES (3, 'Văn Học', NULL);
INSERT INTO `danhmucsanpham` VALUES (4, 'Ngôn Tình', NULL);
INSERT INTO `danhmucsanpham` VALUES (5, 'Tác Phẩm Nước Ngoài', NULL);
INSERT INTO `danhmucsanpham` VALUES (6, 'Bài Học Kinh Doanh', NULL);
INSERT INTO `danhmucsanpham` VALUES (7, 'Học Tập', NULL);

-- ----------------------------
-- Table structure for hoadon
-- ----------------------------
DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE `hoadon`  (
  `mahoadon` int(11) NOT NULL AUTO_INCREMENT,
  `tenkhachhang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sdt` char(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `diachigiaohang` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `tinhtrang` tinyint(4) NULL DEFAULT NULL,
  `ngaylap` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `hinhthucgiaohang` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`mahoadon`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hoadon
-- ----------------------------
INSERT INTO `hoadon` VALUES (31, 'GIa', '077', '24--Long Thanh-Cần Thơ-Việt Nam', 0, NULL, 'Cách 1');
INSERT INTO `hoadon` VALUES (32, 'gia', '077', '24--ho-Bà Rịa-Vũng Tàu-Việt Nam', 0, NULL, 'Cách 1');
INSERT INTO `hoadon` VALUES (33, 'gia', '077', '24--ho-Bà Rịa-Vũng Tàu-Việt Nam', 0, NULL, 'Cách 1');
INSERT INTO `hoadon` VALUES (34, 'Lam', '099', '29--Sài gòn-Bà Rịa-Vũng Tàu-Việt Nam', 0, NULL, 'Cách 2');
INSERT INTO `hoadon` VALUES (35, '', '', '---Vui lòng chọn…-Vui lòng chọn…', 0, NULL, 'Cách 2');

-- ----------------------------
-- Table structure for khuyenmai
-- ----------------------------
DROP TABLE IF EXISTS `khuyenmai`;
CREATE TABLE `khuyenmai`  (
  `makhuyenmai` int(11) NOT NULL AUTO_INCREMENT,
  `tenkhuyenmai` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `thoigianbatdau` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `thoigianketthuc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mota` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `hinhkhuyenmai` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `giagiam` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`makhuyenmai`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of khuyenmai
-- ----------------------------
INSERT INTO `khuyenmai` VALUES (1, 'sieugiamgia', 'a', 'a', 'a', 'a', 25000);

-- ----------------------------
-- Table structure for nhanvien
-- ----------------------------
DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE `nhanvien`  (
  `manhanvien` int(11) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `diachi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `gioitinh` bit(4) NULL DEFAULT NULL,
  `cmnd` char(14) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `machucvu` int(11) NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tendangnhap` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `matkhau` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`manhanvien`) USING BTREE,
  INDEX `FK_NHANVIEN_CHUCVU`(`machucvu`) USING BTREE,
  CONSTRAINT `FK_NHANVIEN_CHUCVU` FOREIGN KEY (`machucvu`) REFERENCES `chucvu` (`machucvu`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nhanvien
-- ----------------------------
INSERT INTO `nhanvien` VALUES (1, 'Phan Văn Luận', 'Quãng Ngãi', b'0001', '02734669', 2, 'giabui24@gmail.com', 'user', '123');

-- ----------------------------
-- Table structure for nhaxuatban
-- ----------------------------
DROP TABLE IF EXISTS `nhaxuatban`;
CREATE TABLE `nhaxuatban`  (
  `manhaxuatban` int(11) NOT NULL AUTO_INCREMENT,
  `tennhaxuatban` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`manhaxuatban`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nhaxuatban
-- ----------------------------
INSERT INTO `nhaxuatban` VALUES (1, 'NXB Trẻ ');
INSERT INTO `nhaxuatban` VALUES (2, 'Bách Việt ');
INSERT INTO `nhaxuatban` VALUES (3, 'NXB Phụ Nữ ');
INSERT INTO `nhaxuatban` VALUES (4, 'Alpha Books ');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_EMPLOYEE');
INSERT INTO `role` VALUES (2, 'ROLE_MANAGER');
INSERT INTO `role` VALUES (3, 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for sanpham
-- ----------------------------
DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham`  (
  `masanpham` int(11) NOT NULL AUTO_INCREMENT,
  `madanhmuc` int(11) NULL DEFAULT NULL,
  `tensanpham` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `giatien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mota` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `hinhsanpham` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`masanpham`) USING BTREE,
  INDEX `FK_SANPHAM_DANHMUC`(`madanhmuc`) USING BTREE,
  CONSTRAINT `FK_SANPHAM_DANHMUC` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmucsanpham` (`madanhmuc`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES (1, 1, 'Đảo mộng mơ', '45000', 'Đảo Mộng Mơ là một lát cắt đời sống của những đứa trẻ lên 10 giàu trí tưởng tượng như tất cả mọi đứa trẻ.\r\n\r\nChúng mơ mộng, tưởng tượng, và tự làm \"hiện thực hóa\" những khao khát của mình ...', '/resources/images/books/dao_mong_mo___tai_ban_2018_1_2018_10_29_11_04_27.JPG');
INSERT INTO `sanpham` VALUES (2, 1, 'Thăm thẳm mùa hè', '44000', 'Đảo Mộng Mơ là một lát cắt đời sống của những đứa trẻ lên 10 giàu trí tưởng tượng như tất cả mọi đứa trẻ.\r\n\r\nChúng mơ mộng, tưởng tượng, và tự làm \"hiện thực hóa\" những khao khát của mình ...', '/resources/images/books/3.jpg');
INSERT INTO `sanpham` VALUES (3, 3, 'Hà nội: Mũ rơm và tem phiếu', '66000', 'Đảo Mộng Mơ là một lát cắt đời sống của những đứa trẻ lên 10 giàu trí tưởng tượng như tất cả mọi đứa trẻ.\r\n\r\nChúng mơ mộng, tưởng tượng, và tự làm \"hiện thực hóa\" những khao khát của mình ...', '/resources/images/books/9.jpg');
INSERT INTO `sanpham` VALUES (4, 6, 'Ung thư: Tin đồn và sự thật', '81000', 'Đảo Mộng Mơ là một lát cắt đời sống của những đứa trẻ lên 10 giàu trí tưởng tượng như tất cả mọi đứa trẻ.\r\n\r\nChúng mơ mộng, tưởng tượng, và tự làm \"hiện thực hóa\" những khao khát của mình ...', '/resources/images/books/13.jpg');
INSERT INTO `sanpham` VALUES (5, 5, 'Giáng sinh diệu kì', '63000', 'Đảo Mộng Mơ là một lát cắt đời sống của những đứa trẻ lên 10 giàu trí tưởng tượng như tất cả mọi đứa trẻ.\r\n\r\nChúng mơ mộng, tưởng tượng, và tự làm \"hiện thực hóa\" những khao khát của mình ...', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (6, 5, 'Hoàng Tử Bé', '190000', '“Hoàng Tử Bé” (tên tiếng Pháp: Le Petit Prince) xuất bản năm 1943 và là tác phẩm nối tiếng nhất trong sự nghiệp của nhà văn phi công Pháp Antoine de Saint-Exupéry. Tác phẩm đã được dịch sang hơn 250 ngôn ngữ và cho đến nay đã bán được hơn 200 triệu bản khắp thế giới.\r\n\r\nCuốn sách đẹp như một bài thơ thanh sáng, một câu chuyện cổ tích về tình yêu thương, lòng nhân ái, ý nghĩa của sự tồn tại, về sự cảm thông giữa người với ngườ\r\n\r\nSự giản dị trong sáng tỏa khắp tác phẩm đã khiến nó trở thành một bài thơ bất hủ mà mãi mãi người ta muốn đem làm quà tặng của tình yêu. \r\n\r\n \r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (7, 3, 'Dế Mèn Phiêu Lưu Ký', '50000', 'Dế Mèn Phiêu Lưu Ký (Tái Bản 2019)\r\n\r\nẤn bản minh họa màu đặc biệt của Dế Mèn phiêu lưu ký, với phần tranh ruột được in hai màu xanh - đen ấn tượng, gợi không khí đồng thoại.\r\n\r\n“Một con dế đã từ tay ông thả ra chu du thế giới tìm những điều tốt đẹp cho loài người. Và con dế ấy đã mang tên tuổi ông đi cùng trên những chặng đường phiêu lưu đến với cộng đồng những con vật trong văn học thế giới, đến với những xứ sở thiên nhiên và văn hóa của các quốc gia khác. Dế Mèn Tô Hoài đã lại sinh ra Tô Hoài Dế Mèn, một nhà văn trẻ mãi không già trong văn chươ” - Nhà phê bình Phạm Xuân Nguyên\r\n\r\n“Ông rất hiểu tư duy trẻ thơ, kể với chúng theo cách nghĩ của chúng, lí giải sự vật theo lô gích của trẻ. Hơn thế, với biệt tài miêu tả loài vật, Tô Hoài dựng lên một thế giới gần gũi với trẻ thơ. Khi cần, ông biết đem vào chất du ký khiến cho độc giả nhỏ tuổi vừa hồi hộp theo dõi, vừa thích thú khám phá.” - TS Nguyễn Đăng Điệp\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (8, 2, 'Thám Tử Lừng Danh Conan', '20000', 'Kaito Kid muốn giành lấy “Đôi Môi Tiên Nữ” và lần đầu đối mặt với Heiji Hattori!\r\nMakoto Kyogoku bị cuốn vào những vụ án xảy ra tại một địa điểm quay phim truyền hình…!?\r\nNhững thông tin mới nhất liên quan tới ông trùm của Tổ chức Áo Đen sẽ được tiết lộ!!\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (9, 7, 'Việt Nam Sử Lược', '150000', '“Sử là sách không những là chỉ để ghi chép những công việc đã qua mà thôi, nhưng lại phải suy xét việc gốc ngọn, tìm tòi cái căn nguyên những công việc của người ta đã làm để hiểu cho rõ những vận hội trị loạn của một nước, những trình độ tiến hóa của một dân tộc. Chủ đích là để làm cái gương chung cổ cho người cả nước được đời đời soi vào đấy mà biết cái sự sinh hoạt của người trước đã phải lao tâm lao lực những thế nào, mới chiếm giữ được cái địa vị ở dưới bóng mặt trời này…', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (10, 5, 'Trái Tim Của Mẹ', '70000', 'Cuốn sách là một “dự án” được thực hiện bền bỉ và lâu dài bởi nhóm tác giả: nhà báo Phạm Thị Hoài Anh và họa sĩ Đậu Đũa. Tác giả Hoài Anh được biết đến như một mẹ Việt “tự xuất bản sách cho con” với rất nhiều những cuốn sách “handmade” do chị chấp bút và họa sĩ Đậu Đũa vẽ tranh minh họa. Sách đã đạt Giải thưởng Grand Prize của cuộc thi Samsung Kids Time Authors’ Award 2015 dành cho các tác giả Đông Nam Á và giải Bạc sách Hay năm 2016.', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (11, 7, 'Thành Ngữ Bằng Tranh', '70000', 'Các thành ngữ luôn gắn liền với những cuộc chuyện trò hằng ngày của chúng ta. Nhưng bạn có hiểu ý nghĩa của chúng?\r\nCuốn sách giải nghĩa giúp bạn hơn 300 thành ngữ phổ biến của tiếng Việt. Nó có thể được sử dụng như một cuốn từ điển thành ngữ mini trong gia đình và trong nhà trường. Cùng với tranh minh hoạ sinh động và giàu ý nghĩa, cuốn sách này sẽ giúp bạn thấy thành ngữ dễ hiểu hơn bao giờ hết!', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (12, 6, 'Tương Lai Sau Đại Dịch Covid ', '89000', 'Tương lai sau đại dịch Covid được viết ra trong bối cảnh một đại dịch ở tầm mức thảm họa toàn cầu đang bắt đầu làm lung lay các đế chế kinh tế, đe dọa sinh kế người dân, và nhanh chóng làm thay đổi toàn bộ đời sống xã hội ở quy mô chưa từng có. Những quy định mới về phong tỏa và dãn cách xã hội liệu có thể làm gia tăng thói quen làm việc từ xa, góp phần phổ biến phương tiện viễn thông? Đại học có lẽ sẽ phần nào từ bỏ lối \"phường hội làm nghề thời Trung cổ\", đi theo hướng năng động hơn và trực tuyến nhiều hơn? Lĩnh vực nào sẽ ngày càng thấm đòn, và được \"kỳ vọng\" sẽ không thể gượng dậy? Tất cả những vấn đề này đều được điểm lược dưới dạng dự báo trong Tương lai sau đại dịch Covid.', 'https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/t/u/tuong-lai-sau-dai-dich-covid_b_a.jpg');
INSERT INTO `sanpham` VALUES (13, 6, 'Làm Thế Nào Để Thay Đổi Trường Học?', '139000', 'Làm Thế Nào Để Thay Đổi Trường Học?\r\n\r\nTại sao trường học cứ mãi trì trệ mà không cải tổ?\r\n\r\nTại sao lại không để các trường công lập cạnh tranh, để phụ huynh có quyền lựa chọn sản phẩm giống như mọi ngành khác của nền kinh tế?\r\n\r\nNhững nhà giáo được đào tạo từ những năm 1980 liệu có đảm bảo nuôi dưỡng được những công dân thế kỷ 21?\r\n\r\nTại sao, tại sao và tại sao?', 'https://salt.tikicdn.com/cache/w444/ts/product/89/63/b1/8e95b25ff01add07e2b6b9d4ce0e472c.jpg');
INSERT INTO `sanpham` VALUES (14, 7, 'Cẩm Nang Phương Pháp Sư Phạm (Tái Bản 2020)', '103000', 'Cẩm Nang Phương Pháp Sư Phạm\r\n\r\nCuốn sách này sẽ không có những lập luận thiên về khoa học hàn lâm, mà bạn sẽ hài lòng với các chỉ dẫn thiết thực, dễ hiểu và dễ áp dụng. Bạn sẽ biết cách mở đầu bài giảng như thế nào để thu hút sự chú ý của người học ngay từ những giây phút đầu tiên của giờ học, cách neo chốt kiến thức giúp người học nhớ được bài lâu hơn, cách lập kế hoạch bài giảng chi tiết sao cho phù hợp giữa nội dung - phương pháp - phương tiện và thời gian cho một tiết giảng/bài giảng, cách trực quan hóa bài giảng để cho giờ học trở nên sinh động hơn, hiệu quả hơ\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 'https://salt.tikicdn.com/cache/w444/ts/product/ad/e3/25/7bbf5bc15e16efab83c8571fb1cfbe74.jpg');
INSERT INTO `sanpham` VALUES (15, 2, 'Bạn Đang Ở Đây: Cuốn Sách Ngắn Về Thế Giới', '76000', 'Bạn Đang Ở Đây: Cuốn Sách Ngắn Về Thế Giới', 'https://salt.tikicdn.com/cache/w444/ts/product/8f/0a/60/1b4afa9be2dc7bdaf5a1ce70593fa32b.jpg');
INSERT INTO `sanpham` VALUES (16, 7, 'Truyện Tranh Tư Duy Cho Bé', '70000', 'Truyện tranh tư duy cho bé\r\n\r\n-phát triển ngôn ngữ,\r\n\r\n- Phát triển trí tưởng tượng, \r\n\r\n- Rèn luyện khả năng quan sát\r\n\r\n- Phát triển khả năng tư duy\r\n\r\nCuốn sách là những câu chuyện ngụ ngôn hay nhất , được thiết kế đọc truyện theo tư duy hình ảnh ,từng câu chuyện kết hợp với hình ảnh thay cho từ , để bé đoán hình thành câu chuyện đọc hay cho bé , giúp bé phát triển tư duy nhanh trí , khả năng tưởng tượng , rèn luyện cho bé', 'https://salt.tikicdn.com/cache/w444/ts/product/90/ea/16/c62f524ff18f64c64af1b6defc55a6d2.jpg');
INSERT INTO `sanpham` VALUES (17, 7, 'Chồng Của Em Tôi - Tập 2', '30000', 'Trong tập 1, “Chồng Của Em Tôi” nhanh chóng đưa người đọc vào mâu thuẫn nội tâm của Yaichi trong lần đầu gặp Mike, chồng của người em trai ruột đã mất tại Canada. Từ đó, tác giả Gengoroh Tagame đặt ra những vấn đề mà người đồng tính gặp phải, để các nhân vật tự nhiên thể hiện cảm xúc, suy nghĩ của mình, giúp người đọc có cái nhìn đa chiều sâu sắc hơn về những người đồng tính. Họ cũng là những con người rất đỗi bình thường, và đời sống tình cảm của họ cũng rất đáng được trân trọng.', 'https://salt.tikicdn.com/cache/w444/ts/product/44/95/11/21fe4ae6f256bb7aaf760fb0cd65baad.jpg');
INSERT INTO `sanpham` VALUES (18, 7, 'Sách Giáo Khoa Bộ Lớp 12 ', '170000', 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 'https://salt.tikicdn.com/cache/w444/ts/product/bd/42/f3/4251d02c93e47cce8f454cf1aef764ec.jpg');
INSERT INTO `sanpham` VALUES (19, 7, 'Sổ Tay Học Nhanh Toàn Diện Kiến Thức Và Dạng Bài Hóa Học', '780000', 'NHỮNG ƯU ĐIỂM CỦA CUỐN SÁCH\r\n \r\n1. Tổng hợp toàn bộ những kiến thức trọng tâm của chương trình Hóa học THPT. Chỉ với cuốn sách này, các teen lớp 10 – 11 – 12 hoàn toàn có thể nắm chắc kiến thức để làm bài tập và ôn luyện trước các kì kiểm tra.\r\n \r\n2. Được coi là cuốn sổ tay thần thánh không chỉ tổng hợp lý thuyết, công thức hóa học, cuốn sách còn tổng hợp các dạng bài thường gặp nhất trong các đề kiểm tra. Sau khi học lý thuyết, các bài thực hành giúp người học hiểu sâu sắc và nhớ lâu hơn.', 'https://salt.tikicdn.com/cache/w444/ts/product/fc/00/cb/56fd05d5f63b3ec399d6ce403549e228.jpg');
INSERT INTO `sanpham` VALUES (20, 7, '[The Langmaster - Tủ Sách Học Tốt Tiếng Anh] Ngữ Pháp Tiếng Anh - Lý Thuyết Và Bài Tập Thực Hành ', '130000', 'Như chúng ta đã biết, tiếng Anh ngày nay vô cùng phổ biến và rất quan trọng trong cuộc sống cũng như công việc. Sử dụng tiếng Anh một cách thành thạo sẽ mở ra nhiều cơ hội cho bạn. Người học tiếng Anh muốn sử dụng tiếng Anh một cách thành thạo thì phải vận dụng tốt bốn kỹ năng Nghe - Nói - Đọc - Viết. Bốn kỹ năng trên luôn đòi hỏi bạn phải biết cơ bản về Ngữ pháp tiếng Anh, nếu bạn không biết gì về ngữ pháp bạn sẽ không thể nghe, nói tiếng anh hay đọc, viết trôi chảy được. ', 'https://salt.tikicdn.com/cache/w444/ts/product/1f/0a/ed/dc265d0727aa32589294e3b2b24fc14f.jpg');
INSERT INTO `sanpham` VALUES (21, 7, 'Hackers IELTS : Listening', '100000', 'Bộ sách luyện thi IELTS đầu tiên có kèm giải thích đáp án chi tiết và hướng dẫn cách tự nâng band điểm.\r\n\r\nIELTS là cánh cửa giúp các bạn thí sinh hiện thực hóa ước mơ vươn ra thế giới. Chính vì vậy, ngay từ bây giờ, hãy nỗ lực luyện tập và chuẩn bị cho bài thi quan trọng này. Viện\r\n\r\nNgôn ngữ Hackers đã biên soạn bộ sách HACKERS IELTS gồm 4 cuốn tương đương với 4 kỹ năng nhằm giới thiệu tới các bạn phương pháp luyện thi phù hợp nhất để có thể đạt điểm cao trong bài thi này.', 'https://salt.tikicdn.com/cache/w444/ts/product/c4/cb/52/0a4395585acec83ed712d8cc690bf711.jpg');
INSERT INTO `sanpham` VALUES (22, 1, 'Cuộc Đời Là Một Tiểu Thuyết', '103000', 'Với anh, mọi thứ đã được viết sẵn\r\n\r\nVới cô, mọi thứ đang đợi viết tiếp\r\n\r\n“Sáu tháng trước, ngày 12 tháng Tư năm 2010, con gái ba tuổi của tôi, Carrie Conway, đã bị bắt cóc trong lúc hai mẹ con đang chơi trốn tìm trong căn hộ nhà mình ở Williamsburg.”\r\n\r\nCâu chuyện của Flora Conway, nữ tiểu thuyết gia nổi tiếng sống kín đáo, đã bắt đầu như thế. Carrie đột ngột mất tích, không cách nào lý giải được. Cửa chính và các cửa sổ đều đóng kín, các camera giám sát trong tòa nhà không phát hiện điều khả nghi nào. Cuộc điều tra của cảnh sát không mang lại kết quả gì.\r\nCùng thời điểm ấy, ở bờ kia Đại Tây Dương, một nhà văn với trái tim tan nát trốn tránh xã hội trong một ngôi nhà xập xệ, bế tắc với tiểu thuyết đang viết dở.\r\nAnh là người duy nhất nắm giữ chìa khóa của bí ẩn.\r\nVà Flora sẽ đánh bật anh.', 'https://salt.tikicdn.com/cache/w444/ts/product/9a/a3/6d/9d21cba3697470a92820052cd6a4f1dd.jpg');
INSERT INTO `sanpham` VALUES (23, 1, 'Những Người Đàn Bà (Tiểu Thuyết Văn Học Hiện Đại)', '97000', 'NHỮNG NGƯỜI ĐÀN BÀ là câu chuyện đầy đau đớn, dữ dội về số phận của những người phụ nữ yếm thế trong xã hội Palestine. Họ không có tiếng nói ngay trong gia đình mình, lấy chồng theo sự sắp đặt của cha mẹ và chỉ quẩn quanh bên căn bếp, chăm lo con cái.\r\nXuyên suốt câu chuyện là sự câm lặng của ba thế hệ phụ nữ. Thế hệ đầu thoát khỏi sự chiếm đóng của Israel trong xung đột Palestine và Israel, chạy trốn đến nước Mỹ với mong muốn tránh khỏi cuộc sống ở trại tị nạn. Thế hệ thứ 2 đồng ý một cuộc hôn nhân sắp đặt với người Mỹ gốc Palestine với hi vọng đất Mỹ tự do thì tiếng nói của nữ giới sẽ được tôn trọng hơn trên đất Palestine. Thế hệ thứ 3, suýt nữa thì rơi vào bánh xe đổ của các thế hệ trước, nếu cô ấy không phát hiện ra bí mật kinh khủng của gia đình mình và số phận của người mẹ đáng thươ Mỗi thế hệ đều có giấc mơ và khát vọng về sự tự do và nữ quyền, nhưng không phải ai cũng có thể đấu tranh đến tận cùng.', 'https://salt.tikicdn.com/cache/w444/ts/product/b2/b5/6a/051dccbb56c98b28b29d04ec9e8f3f4c.jpg');
INSERT INTO `sanpham` VALUES (24, 1, 'Mặt Nạ - Tiểu Thuyết', '50000', 'Ngày ngày họ đeo mặt nạ lên, sắm vai kẻ khác rồi trở nên xa lạ với chính con người thật của mình. Họ - chàng diễn viên hài luôn lẩm bẩm “Biết sai rồi” nhiều lần đến độ u uất, cười nhiều tới mức trầm cảm, đứng trên sân khấu thấy khán giả vui cười mà trong lòng quặn thắt. Họ - nam diễn viên nổi tiếng được xưng tụng “người chồng quốc dân” cứ mỗi lần lên nhận giải thưởng lại giở chiêu trò bày tỏ tình cảm “Vợ ơi anh yêu em”, chẳng biết đang nói với cô vợ danh chính ngôn thuận đương ngồi nhà xem ti vi hay tình nhân phim giả tình thật mỉm cười dịu dàng dưới khán đài. Họ - Nữ diễn viên vốn được mệnh danh có gương mặt trong sáng cao cấp, nhưng để xin thêm cảnh diễn mà bất chấp tất cả, nhắm mắt đưa chân tới tìm nhà sản xuất…', 'https://salt.tikicdn.com/cache/w444/ts/product/79/cb/7f/219f98e7f609290fd8a513fa25c41b17.jpg');
INSERT INTO `sanpham` VALUES (25, 1, 'Em Thấy Chúng Ta Trong Một Mùa Hè', '35000', '\r\nTác phẩm xuất sắc nhất đến từ Kim Ae-Ran - là tác giả của cuốn tiểu thuyết nổi tiếng \"The Youngest Parents with the Oldest Child\" (2011), đã được chuyển thể thành phim với tựa đề \"My Brilliant Life\" (Những tháng năm rực rỡ).\r\n\r\nMột trong những lí do khiến Kim Ae-Ran được nhiều độc giả ở Hàn Quốc yêu mến là những nhân vật trong trang sách của cô luôn vui vẻ, lạc quan và kiên trì ngay cả khi phải đối mặt với hoàn cảnh tồi tệ nhất trong cuộc sống.', 'https://salt.tikicdn.com/cache/w444/ts/product/c2/ad/bb/98995d5841c6326633bffd7a5d822f5a.jpg');
INSERT INTO `sanpham` VALUES (26, 1, 'Biên Sử Nước (Tiểu Thuyết)', '63000', 'Sau 8 năm Nguyễn Ngọc Tư mới trở lại với độc giả bằng một cuốn tiểu thuyết đậm chất huyền ảo: Biên sử nước. Tinh tế và sắc sảo, huyền ảo và hiện thực cùng hòa quyện, đan xen trong lớp lớp ngôn từ khiến người đọc không thể rời mắt.\r\n\r\nBiên Sử Nước là tác phẩm đặc sắc đánh dấu sự trở lại của Nguyễn Ngọc Tư với tiểu thuyết, sau nhiều năm định danh bằng truyện ngắn. Một tiểu thuyết kết tinh được những đặc sắc trong những tìm tòi sáng tạo của Nguyễn Ngọc Tư về nội dung lẫn bút pháp.\r\n\r\nBiên Sử Nước vì thế vừa quen thuộc vừa lạ lẫm, cho phép người đọc tái khám phá một Nguyễn Ngọc Tư điêu luyện nhưng mới mẻ.', 'https://salt.tikicdn.com/cache/w444/ts/product/21/fd/99/aed8456813d4e1925673ecf6bfc7dae5.jpg');
INSERT INTO `sanpham` VALUES (27, 1, 'Người Của Thế Gian (Tiểu Thuyết 12 Chòm Sao)', '50000', 'Người của thế gian kể về hành trình nhìn nhận bản thân và hòa mình vào dòng chảy cuộc sống của một nhóm bạn trẻ. Họ từng lạc lõng, từng cô độc, từng loay hoay không biết nên chọn lựa “sống là chính mình” hay “cố gắng hòa nhập”. Định mệnh đưa họ gặp nhau, cùng nhau trưởng thành và thực hiện ước mơ của mỗi người.\r\n\r\nNhà văn Thiên Bình từng mất đi động lực sáng tác, luôn phải đấu tranh nội tâm xem nên viết thể loại tình yêu sáo rỗng bán đắt khách hay một tác phẩm để đời? ', 'https://salt.tikicdn.com/cache/w444/ts/product/e1/89/26/12a702c9f5976eb4ae646b0035607c17.jpg');
INSERT INTO `sanpham` VALUES (28, 2, 'Ếch Ộp - Tuyển Tập Truyện Siêu Ngắn', '48000', '“Người yêu cũ là gì?”\r\nLà Vitamin A. Bởi vì các loại quả chứa Vitamin A đều giúp chúng ta sáng mắt ra.\r\n\r\n- “Thuốc độc nào mạnh nhất trên đời?”\r\nTình yêu. Vì nó tác động thẳng lên não, làm mất tỉnh táo và tấn công vào tim, làm chúng ta chết từ từ.\r\n\r\n- “Đâu là cảm giác cô đơn nhất?”\r\nLà khi ngồi ăn lẩu một mình vì bạn thân đi chơi với người yêu.', 'https://salt.tikicdn.com/cache/w444/ts/product/70/6e/c1/5144fcc24c8540eb4952b0e89549c13d.jpg');
INSERT INTO `sanpham` VALUES (29, 2, 'Tuyển Tập Truyện Ngắn Hay Nhất Của Nguyễn Minh Châu', '57000', 'Nguyễn Minh Châu là một trong những nhà văn tiêu biểu của nền Văn học Việt Nam hiện đại. Tác phẩm của ông luôn có sức hấp dẫn riêng biệt, nhà văn khẳng định bản sắc cá nhân nghệ sĩ bằng nét phong cách kết hợp hài hòa chất triết lý cuộc đời với chất trữ tình lãng mạn.\r\nHình tượng nhân vật trong tác phẩm của ông được soi thấu bởi mối quan hệ đa chiều, phức tạp nhưng hòa hợp và thống nhất với tư tưởng đề cao tôn vinh những giá trị cuộc sống của nhà văn. Chiều sâu mới mẻ trong sáng tác truyện của Nguyễn Minh Châu chính là nảy sinh trong sự đổi mới các bình diện nhận thức đời sống, mạnh dạn đi tìm nhiều cách thể hiện khác nhau, tự làm phong phú các khả năng nghệ thuật của mình và của chung nền văn xuôi chúng ta.', 'https://salt.tikicdn.com/cache/w444/ts/product/6a/12/96/d5427668b6f6603a57266ad8fbfb0e89.jpg');
INSERT INTO `sanpham` VALUES (30, 2, 'Cứ Khóc, Cứ Tan Vỡ Và Trưởng Thành', '51000', 'CỨ KHÓC, CỨ TAN VỠ VÀ TRƯỞNG THÀNH - Yến Nhi\r\n\r\nCuốn sách này được viết cho những người đang trầy trật đấu tranh với chính mình mỗi ngày hay đang có những vấn đề tâm lý. Các bạn đều là những người thật đặc biệt theo nhiều cách khác nhau, mang trên mình những rạn nứt khác nhau. Những vết nứt đó chỉ có bạn mới biết nó làm bạn đau đến mức nào. Và cũng chính bạn mới có thể tìm cách để hàn gắn nó ra sao.\r\n\r\n“Một quyển sách chạm tới nơi sâu thẳm nhất của những tâm hồn đang hoang hoải, đang mông lung trong hàng mớ những câu hỏi \"nỗi đau của tôi ai thấu hiểu?\", \"tôi đang trải qua điều gì thế này?\", \"tôi sẽ phải đối diện với nỗi đau như thế nào?\", \"tôi phải đi tiếp con đường chênh vênh này ra sao?\". ', 'https://salt.tikicdn.com/cache/w444/ts/product/b1/ba/73/7f1af98058c5948c8e8f818dd307673b.jpg');
INSERT INTO `sanpham` VALUES (31, 2, 'Bạn Có Một Thư Mới Chưa Đọc!', '61000', 'LẮNG NGHE\r\n\r\nCon người, sợ nhất vẫn là ký ức.\r\n\r\nTình cảm, sợ nhất vẫn là thói quen.\r\n\r\nTình cảm giữa con người với nhau, sợ nhất là khi thói quen trở thành ký ức, nhớ không được, quên cũng chẳng xong.\r\n\r\nCó rất nhiều chuyện, trước khi kịp quý trọng thì đã thành chuyện xưa.\r\n\r\nCó rất nhiều người, trước khi kịp để tâm thì đã thành người cũ.\r\n\r\nCuộc sống không bán vé quay lại, mất đi vĩnh viễn chẳng thể lấy lại nữa.', 'https://salt.tikicdn.com/cache/w444/ts/product/18/3c/1c/a59d95da6ee3cb9832226d508b5369c9.jpg');
INSERT INTO `sanpham` VALUES (32, 3, 'Danh Tác Văn Học Việt Nam -Tuyển Tập Thạch Lam', '70000', 'Thạch Lam, tên thật là Nguyễn Tường Vinh, bắt đầu hoạt động vǎn học từ 1936, là thành viên của Tự lực vǎn đoàn. Trong quãng đời vǎn chưa đầy mười nǎm, Thạch Lam đã cho xuất bản ba tập truyện ngắn: Gió lạnh đầu mùa (1937), Nắng trong vườn (1938), Sợi tóc (1942); một tiểu thuyết: Ngày mới (1939); một tập ký: Hà Nội 36 phố phường (1943); và một tập tuyển luyện: Theo dòng (1941). Nhân vật trong các tác phẩm của Thạch Lam đều có cảnh ngộ, có tâm trạng và tính cách điển hình. Ngòi bút Thạch Lam tinh tế và trân trọng biết bao trước số phận người phụ nữ và trẻ em, nếu không thuộc lớp dưới đáy thì cũng là người ở cảnh bần hàn, hoặc đang rơi vào cảnh bần hàn, như trong Cô hàng xén, Hai đứa trẻ, Tối ba mươi. Bên cạnh thế giới phụ nữ và trẻ em, còn phải kể đến những ông chủ gia đình - những ông bố là đồ nho thất thế, lạc lõng, không vui với thời cuộc, sống vào sự tần tảo của vợ con, không dám quyết bất cứ điều gì, suốt ngày ngồi bên cái ống điếu, ra dáng nghĩ ngợi, nhưng thật ra là không nghĩ gì (Cô hàng xén, Hai lần chết, Ngày mới).', 'https://salt.tikicdn.com/cache/w444/ts/product/72/73/17/52b9995b222f68bb73aa98d7df62742b.jpg');
INSERT INTO `sanpham` VALUES (33, 3, 'Đời Thừa - Danh Tác Văn Học Việt Nam', '69000', 'Danh tác văn học Việt Nam - Đời Thừa Trong mảng sáng tác về đề tài tiểu tư sản của Nam Cao, truyện ngắn \" Đời Thừa \" có một vị trí đặc biệt . \"Đời Thừa\" đã ghi lại chân thật hình ảnh buồn thảm của người tri thức tiểu tư sản nghèo, nhà văn Nam Cao đã phác hoạ rõ nét hình ảnh vừa bi vừa hài của lớp người này trở nên đầy ám ảnh. Giá trị của \" Đời Thừa \" không phải chỉ ở chỗ đã miêu tả chân thật cuộc sống nghèo khổ, bế tắc của người trí thức tiểu tư sản nghèo, đã viết về người tiểu tư sản không phải với ngòi bút vuốt ve, thi vị hoá, mà còn vạch ra cả những thói xấu của họ.', 'https://salt.tikicdn.com/cache/w444/ts/product/06/70/5d/3fec3f3b2b59fa47a0cdcfdf403f21c6.jpg');
INSERT INTO `sanpham` VALUES (34, 3, 'Thi Nhân Việt Nam (Tái Bản 2016)', '50000', 'Hơn nửa thế kỷ trước đây, phong trào Thơ mới đã có những đóng góp đáng kể vào sự phát triển của nền văn học trước Cách mạng tháng Tám của đất nước. Các thi sĩ của thuở ấy đã đem lại cho bạn đọc một tiếng nói mới, phản ánh khá trung thực tâm trạng của cả một lớp thanh niên tiểu tư sản trong cuộc sống có nhiều đau buồn, trăn trở và đôi khí bế tắc trước hiện trạng của đất nước thời bấy giờ. Với sự đổi mới mạnh mẽ của hình thức nghệ thuật. Thơ mới thực sự đã thu hút được sự chú ý của khá đông đảo bạn đọc yêu thơ và đó cũng là một đóng góp có ý nghĩa vào sự phát triển của thể loại và chứng minh khả năng biểu đạt phong phú của tiếng Việt.', 'https://salt.tikicdn.com/cache/w444/media/catalog/product/8/9/8935095621583_1.u547.d20161206.t103059.571431.jpg');
INSERT INTO `sanpham` VALUES (35, 3, 'Văn Học Việt Nam - Mưa Đỏ (Chu Lai) ', '99000', 'Mưa đỏ - bản hùng ca về tám mươi mốt ngày đêm đỏ lửa ở Thành cổ Quảng Trị.\r\n\r\nMưa đỏ - là mưa hay là  lửa giội trên cao hay nắng đổ xuống đầu?\r\n\r\nMỗi nhân vật trong Mưa đỏ đại diện cho một tầng lớp, một giai cấp khác nhau. Họ từng có cuộc sống khác nhau, những niềm đam mê khác nhau và những nỗi trăn trở của riêng mình. Nhưng ngay từ ngày đầu tiên vượt sông Thạch Hãn, số phận của họ đã gắn kết với nhau, với Thành cổ của những tháng ngày khốc liệt. Ngày ngày nhìn bom rơi đạn nổ, chứng kiến sự hy sinh của đồng đội, nhìn từng tấc đất bị xới tung và đối diện với những cuộc càn hủy diệt của kẻ thù, họ đã trở thành một gia đình, cùng ăn ở, cùng chiến đấu, cùng đau thương và cùng lãng mạn. Cuối cùng, họ đã dùng chính thân thể mình để tạo nên một bức tường thép bảo vệ cho mảnh đất quê hương.', 'https://salt.tikicdn.com/cache/w444/ts/product/78/08/c8/22c8bab3352249ef964536659d9cd3c8.jpg');
INSERT INTO `sanpham` VALUES (36, 4, 'Rất Nhớ, Rất Nhớ Anh (Tái Bản 2019)', '116000', 'Một câu chuyện tình yêu được bắt đầu từ thế giới ảo.\r\n\r\nChàng không chỉ đẹp trai, galang, biết nói những lời ong bướm, chàng còn có một giọng nói mê hoặc lòng người. Nhưng thật không ngờ, người được mệnh danh là “có giọng nói của thiên thần” khiến cả trăm nghìn người si mê ấy lại bị quyến rũ bởi một giọng hát vô danh chuyên cover các ca khúc trên mạng của một người con gái mà chàng không hề biết mặt…\r\n\r\nNếu bạn đã từng không thể rời mắt khỏi những trang sách của \"Tùy tiện phóng hỏa\", \"Trọn đời trọn kiếp\", \"Mỹ nhân cốt\", \"Có nhau trọn đời\" của Mặc Bảo Phi Bảo thì Rất nhớ, rất nhớ anh sẽ không làm bạn thất vọng bởi câu chuyện tình như mơ của Thanh Thanh Mạn và Thương Thanh Từ. Với Rất nhớ, rất nhớ anh, Mặc Bảo Phi Bảo đã đưa tình yêu trở về đúng nghĩa nguyên bản nhất của nó: ngọt ngào như mật', 'https://salt.tikicdn.com/cache/w444/ts/product/80/b1/f4/da34ebb3f87ce2dc2e43fd9c120e006f.jpg');
INSERT INTO `sanpham` VALUES (37, 4, 'Yêu Em Từ Cái Nhìn Đầu Tiên', '99000', 'Nhắc đến Yêu em từ cái nhìn đầu tiên có lẽ không cần dùng quá nhiều lời, bởi cùng với Sam Sam đến đây ăn nào, Bên nhau trọn đời, Yêu em từ cái nhìn đầu tiên đã làm nên tên tuổi của Cố Mạn tại Việt Nam.\r\n\r\nĐi cùng?\r\n\r\nHai chữ này kéo Vy Vy trở về hiện tại, lập tức hoàn hồn.Nhìn chiếc xe, lại nhìn Đại Thần, người đẹp Vy Vy lắp bắp:\r\n\r\n“Em… em…”\r\n\r\nTiêu Nại hơi cau mày. Vy Vy trấn tĩnh nói:\r\n\r\n“… Anh đèo em?”.\r\n\r\n“Ừ, đường xa thế chẳng lẽ đi bộ?”. ', 'https://salt.tikicdn.com/cache/w444/media/catalog/product/y/e/yeu-em-tu-cai-nhin-dau-tien_1_1.jpg');
INSERT INTO `sanpham` VALUES (38, 4, 'Ông Xã Là Phúc Hắc Đại Nhân', '140000', 'Ông Xã Là Phúc Hắc Đại Nhân (Trọn Bộ 2 Tập)\r\n\r\nThứ hai, ngày 11 tháng 9 năm 1995, mắt chúng tôi gặp nhau…\r\n\r\nN ngày sau, cậu ấy nhờ tôi xem hộ trong mắt cậu ấy có gì rơi vào không, thế nhưng tôi nhìn mãi mà chẳng thấy có gì ngoài đôi mắt đen nhanh nhánh rất đẹp. \r\n\r\nN tháng sau, cậu ấy bảo: “Nghe nè, tớ cho phép cậu thích tớ. Nhưng cậu không được chọn gì khác ngoài nắm tay nhau đến đầu bạc răng long đâu nhé!”\r\n\r\nN năm sau, tôi nói: “Duật, kiếp sau mình vẫn bên nhau nhé! Kiếp sau, anh làm con gái, em làm con trai, em nuôi anh, em yêu anh!”\r\n\r\nVậy mà anh ấy lại nói: “Đừng, phải giữ nguyên trạng! Em đòi làm con trai thì anh phải cạp đất ra mà ăn hả?”', 'https://salt.tikicdn.com/cache/w444/ts/product/a6/51/7c/6ac846a875443fff93f84dc6e94bd43b.jpg');
INSERT INTO `sanpham` VALUES (39, 4, 'Tôi Cần Mỹ Nhan Thịnh Thế Để Làm Gì?', '109000', 'Tám mươi năm trước, Tề Thiệp Giang là một nghệ sĩ tấu hài Tướng thanh biểu diễn trên đường phố. Tám mươi năm sau, cậu mượn xác một nghệ sĩ mới gia nhập giới giải trí để hoàn dương.\r\n\r\nCậu đã có được cuộc đời mới, nhưng sao con đường làm nghề cũ khó khăn quá vậy? Vì khuôn mặt này, không ai tin cậu theo nghề tấu hài, không ai tin cậu chẳng kiếm cơm bằng nhan sắc.\r\n\r\nVậy thì đẹp trai nghiêng nước nghiêng thành thế này để làm gì?', 'https://salt.tikicdn.com/cache/w444/ts/product/90/76/b7/ed950561d1f5359a7702bfe518664278.jpg');
INSERT INTO `sanpham` VALUES (40, 5, 'Bố Già (Mario Puzo)', '66000', 'Thế giới ngầm được phản ánh trong tiểu thuyết Bố Già là sự gặp gỡ giữa một bên là ý chí cương cường và nền tảng gia tộc chặt chẽ theo truyền thống mafia xứ Sicily với một bên là xã hội Mỹ nhập nhằng đen trắng, mảnh đất màu mỡ cho những cơ hội làm ăn bất chính hứa hẹn những món lợi kếch xù. Trong thế giới ấy, hình tượng Bố Già được tác giả dày công khắc họa đã trở thành bức chân dung bất hủ trong lòng người đọc. Từ một kẻ nhập cư tay trắng đến ông trùm tột đỉnh quyền uy, Don Vito Corleone là con rắn hổ mang thâm trầm, nguy hiểm khiến kẻ thù phải kiềng nể, e dè, nhưng cũng được bạn bè, thân quyến xem như một đấng toàn năng đầy nghĩa khí. Nhân vật trung tâm ấy đồng thời cũng là hiện thân của một pho triết lí rất “đời” được nhào nặn từ vốn sống của hàng chục năm lăn lộn giữa chốn giang hồ bao phen vào sinh ra tử, vì thế mà có ý kiến cho rằng “Bố Già là sự tổng hòa của mọi hiểu biết. Bố Già là đáp án cho mọi câu hỏi”.', 'https://salt.tikicdn.com/cache/w444/ts/product/a6/39/ca/7eca66c10e5f99f14325733bf53aa425.jpg');
INSERT INTO `sanpham` VALUES (41, 5, 'Hai Số Phận (Bìa Cứng)', '153000', 'Hai Số Phận (Bìa Cứng) là cuốn sách không chỉ đơn thuần là một cuốn tiểu thuyết đây có thể coi như là \"thánh kinh\" cho những người không dễ dãi chấp nhận lối mòn, cuốn sách được nhiều độc giả yêu thích.\r\n\r\n“Hai số phận” làm rung động mọi trái tim quả cảm, nó có thể làm thay đổi cả cuộc đời bạn. Đọc cuốn sách này, bạn sẽ bị chi phối bởi cá tính của hai nhân vật chính, hoặc bạn là Kane, hoặc sẽ là Abel, không thể nào nhầm lẫn. Và điều đó sẽ khiến bạn thấy được chính mình.\r\n\r\nKhi bạn yêu thích tác phẩm này, người ta sẽ nhìn ra cá tính và tâm hồn thú vị của bạn!', 'https://salt.tikicdn.com/cache/w444/ts/product/4f/a9/27/d13ea6c22896fe3782d7051fa146f98a.jpg');
INSERT INTO `sanpham` VALUES (42, 5, 'Không Gia Đình', '100000', 'Qua câu chuyện phiêu lưu hết sức hấp dẫn của chú bé Rémi, người ta thấy quyển sách ca ngợi lao động, ca ngợi tinh thần tự lập tự tin của tuổi trẻ, phát huy ý thức chịu đựng gian khổ, ca ngợi lao động nghệ thuật, khuyến khích tình bạn chân chính. Nó phản ánh cảnh lao động và sinh hoạt bấp bênh, nguy hiểm, đầy đe dọa của người thợ mỏ và của nhân dân lao động thành phố trong xã hội tư sản. Đồng thời nó thể hiện tình thương người, lòng biết ơn, tình hữu ái giai cấp ở những người lao động. Quyển sách lại diễn tả nhiều cảnh đẹp thiên nhiên, nhiều cảnh sinh hoạt hấp dẫn ở nông thôn và thành thị, giúp bạn đọc thêm phần hứng thú khi theo dõi câu chuyện, lại có thể mở rộng hiểu biết.', 'https://salt.tikicdn.com/cache/w444/ts/product/b4/4d/91/353969acf5cf668728f3a5408df2d88a.jpg');
INSERT INTO `sanpham` VALUES (43, 6, 'Kinh Doanh - Khái Lược Những Tư Tưởng Lớn', '250000', 'Kinh doanh - Khái lược những tư tưởng lớn\r\nLàm thế nào để xây dựng thương hiệu thành công? Điều gì tạo nên một nhà lãnh đạo giỏi?\r\nVì sao một số doanh nghiệp gặp thất bại trong khi số khác lại phát triển vượt bậc? Trong suốt chiều dài lịch sử, các chuyên gia về kinh doanh đã đúc kết những ý tưởng và giải pháp góp phần định hình thế giới kinh doanh và thương mại như ngày nay.\r\nĐược viết bằng văn phong đơn giản, Kinh doanh – Khái lược những tư tưởng lớn mở ra những ý tưởng độc đáo, với cách giải thích ngắn gọn, súc tích kèm theo các biểu đồ dễ hiểu và hình minh họa dí dỏm, giúp bạn tiếp cận những kiến thức cốt lõi về kinh doanh và thị trường thế giới.', 'https://salt.tikicdn.com/cache/w444/ts/product/68/d0/66/a41413b3275041668fc3ae9b08599508.jpg');
INSERT INTO `sanpham` VALUES (44, 6, 'Hiểu Hết Về Kinh Doanh', '247000', 'Một trong những cuốn cẩm nang về Kinh doanh dễ hình dung nhất từ trước tới nay!\r\n\r\nTại sao dòng tiền lại quan trọng? Sản xuất tinh gọn là gì? Marketing kỹ thuật số hoạt động ra sao? Thành viên hội đồng quản trị gồm những ai? Mua bán doanh nghiệp là gì? Cấu trúc doanh nghiệp ra sao? Khấu hao là gì? Trách nhiệm xã hội của doanh nghiệp ra sao? Làm thế nào để có thể thành công trong thị trường toàn cầu của thế kỷ 21?', 'https://salt.tikicdn.com/cache/w444/ts/product/2b/51/65/6d4bbd638d7adca9d725b5f86a19f52f.jpg');

-- ----------------------------
-- Table structure for tacgia
-- ----------------------------
DROP TABLE IF EXISTS `tacgia`;
CREATE TABLE `tacgia`  (
  `matacgia` int(11) NOT NULL AUTO_INCREMENT,
  `tentacgia` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`matacgia`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tacgia
-- ----------------------------
INSERT INTO `tacgia` VALUES (1, 'Nguyễn Nhật Ánh');
INSERT INTO `tacgia` VALUES (2, 'Bùi hoàng Gia');
INSERT INTO `tacgia` VALUES (3, 'Phan Văn Luận');
INSERT INTO `tacgia` VALUES (4, 'Phan Lê Huy');
INSERT INTO `tacgia` VALUES (5, 'Nam Cao');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` char(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `first_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `enabled` tinyint(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'john', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'John', 'Doe', 'john@luv2code.com', 1);
INSERT INTO `user` VALUES (2, 'mary', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Mary', 'Public', 'mary@luv2code.com', 1);
INSERT INTO `user` VALUES (3, 'susan', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Susan', 'Adams', 'susan@luv2code.com', 1);
INSERT INTO `user` VALUES (4, 'giabui24', '$2a$10$Mw2nbCEDlAdrc8lIiQtdteyBgFeRJHiWuRaxx8h.KREyOk/ogcq5C', 'Bùi', 'Gia', 'giabui24@gmail.com', NULL);

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles`  (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FK_ROLE_idx`(`role_id`) USING BTREE,
  CONSTRAINT `FK_ROLE` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_USER_05` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES (1, 1);
INSERT INTO `users_roles` VALUES (2, 1);
INSERT INTO `users_roles` VALUES (2, 2);
INSERT INTO `users_roles` VALUES (3, 1);
INSERT INTO `users_roles` VALUES (3, 3);
INSERT INTO `users_roles` VALUES (4, 1);

SET FOREIGN_KEY_CHECKS = 1;
