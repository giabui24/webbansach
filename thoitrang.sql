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

 Date: 06/05/2021 11:07:34
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
  CONSTRAINT `FK_CTHOADON_CTSANPHAM` FOREIGN KEY (`machitietsanpham`) REFERENCES `chitietsanpham` (`machitietsanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_CTHOADON_HOADON` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chitietkhuyenmai
-- ----------------------------
DROP TABLE IF EXISTS `chitietkhuyenmai`;
CREATE TABLE `chitietkhuyenmai`  (
  `makhuyenmai` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  PRIMARY KEY (`makhuyenmai`, `masanpham`) USING BTREE,
  INDEX `FK_CHITIETKHUYENMAI_SANPHAM`(`masanpham`) USING BTREE,
  CONSTRAINT `FK_CHITIETKHUYENMAI_SANPHAM` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

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
  PRIMARY KEY (`machitietsanpham`) USING BTREE,
  INDEX `FK_CHITIET_SANPHAM`(`masanpham`) USING BTREE,
  INDEX `FK_CHITIET_NHAXUATBAN`(`manhaxuatban`) USING BTREE,
  INDEX `FK_CHITIET_TACGIA`(`matacgia`) USING BTREE,
  CONSTRAINT `FK_CHITIET_NHAXUATBAN` FOREIGN KEY (`manhaxuatban`) REFERENCES `nhaxuatban` (`manhaxuatban`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_CHITIET_SANPHAM` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_CHITIET_TACGIA` FOREIGN KEY (`matacgia`) REFERENCES `tacgia` (`matacgia`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chitietsanpham
-- ----------------------------
INSERT INTO `chitietsanpham` VALUES (1, 1, 1, 1, 10, '4232021');
INSERT INTO `chitietsanpham` VALUES (2, 2, 2, 2, 30, '522021');
INSERT INTO `chitietsanpham` VALUES (3, 3, 3, 4, 40, '6232021');
INSERT INTO `chitietsanpham` VALUES (4, 4, 4, 5, 25, '2232021');
INSERT INTO `chitietsanpham` VALUES (5, 5, 1, 1, 10, '1232021');
INSERT INTO `chitietsanpham` VALUES (6, 6, 2, 2, 11, '1232021');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for khuyenmai
-- ----------------------------
DROP TABLE IF EXISTS `khuyenmai`;
CREATE TABLE `khuyenmai`  (
  `makhuyenmai` int(11) NOT NULL AUTO_INCREMENT,
  `tenkhuyenmai` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `thoigianbandau` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `thoigianketthuc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mota` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `hinhkhuyenmai` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `giagiam` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`makhuyenmai`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES (1, 1, 'Đảo mộng mơ', '45000', 'Đảo Mộng Mơ là một lát cắt đời sống của những đứa trẻ lên 10 giàu trí tưởng tượng như tất cả mọi đứa trẻ.\r\n\r\nChúng mơ mộng, tưởng tượng, và tự làm \"hiện thực hóa\" những khao khát của mình ...', '/resources/images/books/dao_mong_mo___tai_ban_2018_1_2018_10_29_11_04_27.JPG');
INSERT INTO `sanpham` VALUES (2, 2, 'Thăm thẳm mùa hè', '44000', 'Đảo Mộng Mơ là một lát cắt đời sống của những đứa trẻ lên 10 giàu trí tưởng tượng như tất cả mọi đứa trẻ.\r\n\r\nChúng mơ mộng, tưởng tượng, và tự làm \"hiện thực hóa\" những khao khát của mình ...', '/resources/images/books/3.jpg');
INSERT INTO `sanpham` VALUES (3, 3, 'Hà nội: Mũ rơm và tem phiếu', '66000', 'Đảo Mộng Mơ là một lát cắt đời sống của những đứa trẻ lên 10 giàu trí tưởng tượng như tất cả mọi đứa trẻ.\r\n\r\nChúng mơ mộng, tưởng tượng, và tự làm \"hiện thực hóa\" những khao khát của mình ...', '/resources/images/books/9.jpg');
INSERT INTO `sanpham` VALUES (4, 4, 'Ung thư: Tin đồn và sự thật', '81000', 'Đảo Mộng Mơ là một lát cắt đời sống của những đứa trẻ lên 10 giàu trí tưởng tượng như tất cả mọi đứa trẻ.\r\n\r\nChúng mơ mộng, tưởng tượng, và tự làm \"hiện thực hóa\" những khao khát của mình ...', '/resources/images/books/13.jpg');
INSERT INTO `sanpham` VALUES (5, 5, 'Giáng sinh diệu kì', '63000', 'Đảo Mộng Mơ là một lát cắt đời sống của những đứa trẻ lên 10 giàu trí tưởng tượng như tất cả mọi đứa trẻ.\r\n\r\nChúng mơ mộng, tưởng tượng, và tự làm \"hiện thực hóa\" những khao khát của mình ...', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (6, 6, 'Hoàng Tử Bé', '19000', '“Hoàng Tử Bé” (tên tiếng Pháp: Le Petit Prince) xuất bản năm 1943 và là tác phẩm nối tiếng nhất trong sự nghiệp của nhà văn phi công Pháp Antoine de Saint-Exupéry. Tác phẩm đã được dịch sang hơn 250 ngôn ngữ và cho đến nay đã bán được hơn 200 triệu bản khắp thế giới.\r\n\r\nCuốn sách đẹp như một bài thơ thanh sáng, một câu chuyện cổ tích về tình yêu thương, lòng nhân ái, ý nghĩa của sự tồn tại, về sự cảm thông giữa người với ngườ\r\n\r\nSự giản dị trong sáng tỏa khắp tác phẩm đã khiến nó trở thành một bài thơ bất hủ mà mãi mãi người ta muốn đem làm quà tặng của tình yêu. \r\n\r\n \r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (7, 7, 'Dế Mèn Phiêu Lưu Ký', '50000', 'Dế Mèn Phiêu Lưu Ký (Tái Bản 2019)\r\n\r\nẤn bản minh họa màu đặc biệt của Dế Mèn phiêu lưu ký, với phần tranh ruột được in hai màu xanh - đen ấn tượng, gợi không khí đồng thoại.\r\n\r\n“Một con dế đã từ tay ông thả ra chu du thế giới tìm những điều tốt đẹp cho loài người. Và con dế ấy đã mang tên tuổi ông đi cùng trên những chặng đường phiêu lưu đến với cộng đồng những con vật trong văn học thế giới, đến với những xứ sở thiên nhiên và văn hóa của các quốc gia khác. Dế Mèn Tô Hoài đã lại sinh ra Tô Hoài Dế Mèn, một nhà văn trẻ mãi không già trong văn chươ” - Nhà phê bình Phạm Xuân Nguyên\r\n\r\n“Ông rất hiểu tư duy trẻ thơ, kể với chúng theo cách nghĩ của chúng, lí giải sự vật theo lô gích của trẻ. Hơn thế, với biệt tài miêu tả loài vật, Tô Hoài dựng lên một thế giới gần gũi với trẻ thơ. Khi cần, ông biết đem vào chất du ký khiến cho độc giả nhỏ tuổi vừa hồi hộp theo dõi, vừa thích thú khám phá.” - TS Nguyễn Đăng Điệp\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (8, 6, 'Thám Tử Lừng Danh Conan', '20000', 'Kaito Kid muốn giành lấy “Đôi Môi Tiên Nữ” và lần đầu đối mặt với Heiji Hattori!\r\nMakoto Kyogoku bị cuốn vào những vụ án xảy ra tại một địa điểm quay phim truyền hình…!?\r\nNhững thông tin mới nhất liên quan tới ông trùm của Tổ chức Áo Đen sẽ được tiết lộ!!\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (9, 5, 'Việt Nam Sử Lược', '150000', '“Sử là sách không những là chỉ để ghi chép những công việc đã qua mà thôi, nhưng lại phải suy xét việc gốc ngọn, tìm tòi cái căn nguyên những công việc của người ta đã làm để hiểu cho rõ những vận hội trị loạn của một nước, những trình độ tiến hóa của một dân tộc. Chủ đích là để làm cái gương chung cổ cho người cả nước được đời đời soi vào đấy mà biết cái sự sinh hoạt của người trước đã phải lao tâm lao lực những thế nào, mới chiếm giữ được cái địa vị ở dưới bóng mặt trời này…', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (10, 4, 'Trái Tim Của Mẹ', '70000', 'Cuốn sách là một “dự án” được thực hiện bền bỉ và lâu dài bởi nhóm tác giả: nhà báo Phạm Thị Hoài Anh và họa sĩ Đậu Đũa. Tác giả Hoài Anh được biết đến như một mẹ Việt “tự xuất bản sách cho con” với rất nhiều những cuốn sách “handmade” do chị chấp bút và họa sĩ Đậu Đũa vẽ tranh minh họa. Sách đã đạt Giải thưởng Grand Prize của cuộc thi Samsung Kids Time Authors’ Award 2015 dành cho các tác giả Đông Nam Á và giải Bạc sách Hay năm 2016.', '/resources/images/books/1.jpg');
INSERT INTO `sanpham` VALUES (11, 3, 'Thành Ngữ Bằng Tranh', '70000', 'Các thành ngữ luôn gắn liền với những cuộc chuyện trò hằng ngày của chúng ta. Nhưng bạn có hiểu ý nghĩa của chúng?\r\nCuốn sách giải nghĩa giúp bạn hơn 300 thành ngữ phổ biến của tiếng Việt. Nó có thể được sử dụng như một cuốn từ điển thành ngữ mini trong gia đình và trong nhà trường. Cùng với tranh minh hoạ sinh động và giàu ý nghĩa, cuốn sách này sẽ giúp bạn thấy thành ngữ dễ hiểu hơn bao giờ hết!', '/resources/images/books/1.jpg');

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

SET FOREIGN_KEY_CHECKS = 1;
