/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : cozastore

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 26/01/2021 10:38:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chitietsanpham
-- ----------------------------
DROP TABLE IF EXISTS `chitietsanpham`;
CREATE TABLE `chitietsanpham`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `masanpham` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mau` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `thongtinchitiet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `trangthai` bit(1) NULL DEFAULT b'1',
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ctsp_fk_msp`(`masanpham`) USING BTREE,
  CONSTRAINT `ctsp_fk_msp` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chitietsanpham
-- ----------------------------
INSERT INTO `chitietsanpham` VALUES (3, 'joy-short', 'm', 'xanh lá', '<p>:)</p>\n', b'1', '2021-01-26 03:55:15', 'Tú Uyên', NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (4, 'joy-short', 'xl', 'đỏ', '<p>mở b&aacute;n lại c&aacute;i quừng m&agrave;o đỏ ời nha</p>\n', b'1', '2021-01-26 05:08:32', 'Tú Uyên', '2021-01-26 10:23:51', 'Tú Uyên');
INSERT INTO `chitietsanpham` VALUES (5, 'joy-short', 'm', 'tím', '<p>m&agrave;u t&iacute;m &oacute;</p>\n', b'1', '2021-01-26 10:09:02', 'Tú Uyên', '2021-01-26 10:31:42', 'Tú Uyên');
INSERT INTO `chitietsanpham` VALUES (6, 'joy-short', 'm', 'khỉ', '<p>hahaha</p>\n', b'1', '2021-01-26 10:32:18', 'Tú Uyên', NULL, NULL);
INSERT INTO `chitietsanpham` VALUES (7, 'sheer-blouse', 'm', 'tism limj simf sim', '<p>qu&aacute; chời &aacute;o đẹp</p>\n', b'1', '2021-01-26 10:33:01', 'Tú Uyên', NULL, NULL);

-- ----------------------------
-- Table structure for danhmuc
-- ----------------------------
DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE `danhmuc`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `madanhmuc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tendanhmuc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `madanhmuc`(`madanhmuc`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of danhmuc
-- ----------------------------
INSERT INTO `danhmuc` VALUES (1, 'ao-khoac', 'Áo khoác', '', '2021-01-08 04:06:33', 'Tú Uyên', '2021-01-08 04:41:36', 'Tú Uyên');
INSERT INTO `danhmuc` VALUES (2, 'ao-thun', 'Áo thun', '', '2021-01-08 04:16:48', 'Tú Uyên', '2021-01-08 04:41:56', 'Tú Uyên');
INSERT INTO `danhmuc` VALUES (3, 'so-mi', 'Sơ mi', '', '2021-01-08 04:18:08', 'Tú Uyên', '2021-01-08 04:42:16', 'Tú Uyên');
INSERT INTO `danhmuc` VALUES (4, 'quan-dai', 'Quần dài', '', '2021-01-08 04:20:10', 'Tú Uyên', NULL, NULL);
INSERT INTO `danhmuc` VALUES (5, 'quan-short', 'Quần short', '', '2021-01-08 04:20:35', 'Tú Uyên', NULL, NULL);
INSERT INTO `danhmuc` VALUES (6, 'giay-dep', 'Giày dép', '', '2021-01-08 04:21:34', 'Tú Uyên', NULL, NULL);
INSERT INTO `danhmuc` VALUES (7, 'dong-ho', 'Đồng hồ', '', '2021-01-08 04:21:48', 'Tú Uyên', NULL, NULL);
INSERT INTO `danhmuc` VALUES (8, 'balo-tui-xach', 'Balo - Túi xách', '', '2021-01-08 04:22:08', 'Tú Uyên', '2021-01-08 14:04:16', 'Tú Uyên');

-- ----------------------------
-- Table structure for hinhanhsanpham
-- ----------------------------
DROP TABLE IF EXISTS `hinhanhsanpham`;
CREATE TABLE `hinhanhsanpham`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `masanpham` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `hasp_fk_msp`(`masanpham`) USING BTREE,
  CONSTRAINT `hasp_fk_msp` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hinhanhsanpham
-- ----------------------------
INSERT INTO `hinhanhsanpham` VALUES (1, 'papa-jacket', 'papajacket-den-pt-2.jpg\r\n');
INSERT INTO `hinhanhsanpham` VALUES (2, 'papa-jacket', 'papajacket-xanh-pt-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (3, 'papa-jacket', 'papajacket-xanh-fl-4.jpg');
INSERT INTO `hinhanhsanpham` VALUES (4, 'papa-jacket', 'papajacket-xanh-fl-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (5, 'papa-jacket', 'papajacket-den-fl-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (6, 'papa-jacket', 'papajacket-nau-fl-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (7, 'collar-shirt', 'CollarShirt_Trang_LB_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (8, 'collar-shirt', 'CollarShirt_Den_LB_3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (9, 'collar-shirt', 'CollarShirt_Trang_LB_5.jpg');
INSERT INTO `hinhanhsanpham` VALUES (10, 'bus-long-tee', 'buslongtee-vang-pt-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (11, 'bus-long-tee', 'buslongtee-do-pt-3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (12, 'bus-long-tee', 'buslongtee-fl-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (13, 'bus-long-tee', 'buslongtee-vang-fl-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (14, 'bus-long-tee', 'buslongtee-xanh-fl-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (15, 'fall-shirt', 'fallshirt-trang-pt-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (16, 'fall-shirt', 'fallshirt-xanh-pt-3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (17, 'great-life-shirt', '121725747-2072070756256933-7265935199191575333-o.jpg\r\n');
INSERT INTO `hinhanhsanpham` VALUES (18, 'great-life-shirt', '121706747-2072070866256922-546638075448591507-o.jpg');
INSERT INTO `hinhanhsanpham` VALUES (19, 'great-life-shirt', '121797403-2072070842923591-6026429157081405910-o.jpg');
INSERT INTO `hinhanhsanpham` VALUES (20, 'great-life-shirt', '121971745-2072070889590253-814812425289726711-o.jpg');
INSERT INTO `hinhanhsanpham` VALUES (21, 'great-life-shirt', '122002709-2072070959590246-7619582695082821258-o.jpg');
INSERT INTO `hinhanhsanpham` VALUES (22, 'great-life-shirt', '121821471-2072070686256940-1496757915668535653-o.jpg');
INSERT INTO `hinhanhsanpham` VALUES (23, 'great-life-shirt', '121698075-2072071036256905-6359482538352416426-o.jpg');
INSERT INTO `hinhanhsanpham` VALUES (24, 'great-life-shirt', '121969208-2072070609590281-4088910380087976703-o.jpg');
INSERT INTO `hinhanhsanpham` VALUES (25, 'sheer-blouse', 'sheerblouse-den-pt-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (26, 'sheer-blouse', 'sheerblouse-trang-pt-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (27, 'sheer-blouse', 'sheerblouse-cam-fl-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (28, 'sheer-blouse', 'sheerblouse-cam-fl-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (29, 'dos-shirt', 'dosshirt-xanh-pt-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (30, 'dos-shirt', 'dosshirt-trang-pt-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (31, 'joy-short', 'JoyShorts_Den_PT_3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (32, 'joy-short', 'JoyShorts_Xam_PT_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (33, 'thomas-jacket', 'ThomasJacket2017V2_Nau_PT_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (34, 'thomas-jacket', 'ThomasJacket2017V2_Nau_PT_3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (35, 'thomas-jacket', 'ThomasJacket2017V2_Be_PT_3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (36, 'thomas-jacket', 'ThomasJacket2017V2_Navy_PT_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (37, 'thomas-jacket', 'ThomasJacket2017V2_Navy_PT_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (38, 'collar-shirt', 'CollarShirt_Den_LB_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (39, 'collar-shirt', 'CollarShirtWebCT1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (40, 'collar-shirt', 'collar-shirt.jpg');
INSERT INTO `hinhanhsanpham` VALUES (41, 'collar-shirt', 'collar2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (42, 'collar-shirt', 'collar3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (43, 'collar-shirt', 'collar4.jpg');
INSERT INTO `hinhanhsanpham` VALUES (44, 'sheer-blouse', 'sheerblouse-cam-pt-1.jpg');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin', 'admin');
INSERT INTO `role` VALUES (2, 'user', 'user');

-- ----------------------------
-- Table structure for sanpham
-- ----------------------------
DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `masanpham` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `madanhmuc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tensanpham` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gia` int NOT NULL,
  `anhbia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `danhcho` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mota` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `trangthai` bit(1) NOT NULL DEFAULT b'1',
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_sp_mdm`(`madanhmuc`) USING BTREE,
  INDEX `masanpham`(`masanpham`) USING BTREE,
  CONSTRAINT `fk_sp_mdm` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmuc` (`madanhmuc`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES (1, 'papa-jacket', 'ao-khoac', 'papa jacket', 899000, 'papajacket-nau-pt-1.jpg', 'nam', '', b'1', '2021-01-08 13:09:46', 'Tú Uyên', '2021-01-08 14:15:15', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (2, 'collar-shirt', 'so-mi', 'Áo Sơ Mi Nam SSSTUTTER Collar Shirt', 419000, 'CollarShirt_Trang_LB_1.jpg', 'nam', '<p>Chất liệu: Vải Bamboo kh&ocirc;ng g&acirc;y hại đến m&ocirc;i trường. Chống nhăn, thấm h&uacute;t vượt trội hơn chất liệu cotton th&ocirc;ng thường đến 60%.</p>\n\n<p>Kiểu d&aacute;ng: Loại sơ mi cổ đức đơn giản nhưng kh&ocirc;ng bao giờ sợ bị lỗi mốt.</p>\n\n<p>M&agrave;u sắc: Hai m&agrave;u Đen/Trắng - tone m&agrave;u ph&ugrave; hợp với mọi tone da. Ứng dụng đa dạng cho mọi phong c&aacute;ch, mọi ho&agrave;n cảnh.</p>\n', b'1', '2021-01-08 13:33:28', 'Tú Uyên', '2021-01-25 19:34:00', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (3, 'bus-long-tee', 'ao-thun', 'bus long tee', 299000, 'buslongtee-xanh-pt-2.jpg', 'nam', '<p>Chất liệu: Jean Cotton</p>\n\n<p>Th&agrave;nh phần: 99% cotton 1% spandex</p>\n\n<p>In logo Vạn Xu&acirc;n Kiến Quốc</p>\n', b'0', '2021-01-08 14:23:03', 'Tú Uyên', '2021-01-26 05:52:46', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (4, 'fall-shirt', 'so-mi', 'fall shirt', 449000, 'fallshirt-be-pt-1.jpg', 'nam', '', b'1', '2021-01-08 14:24:43', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (5, 'great-life-shirt', 'so-mi', 'great life shirt', 299000, 'great-life-shirt.jpg', 'nam', '', b'1', '2021-01-08 14:25:36', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (6, 'sheer-blouse', 'so-mi', 'Áo Sheer Nữ SSSTUTTER Sheer Blouse', 399000, 'sheerblouse-cam-pt-1.jpg', 'nữ', '<p>Chất liệu Linen mềm mại đem lại cảm gi&aacute;c thoải m&aacute;i kh&ocirc;ng lo cộm ngứa d&ugrave; mặc nhiều lớp &aacute;o.</p>\n\n<p>Đặc biệt thiết kế cổ &aacute;o c&aacute;ch điệu, tinh tế gi&uacute;p diện mạo của c&aacute;c c&ocirc; g&aacute;i trở n&ecirc;n v&ocirc; c&ugrave;ng Duy&ecirc;n d&aacute;ng, Thanh lịch.</p>\n', b'1', '2021-01-08 14:26:39', 'Tú Uyên', '2021-01-25 21:33:16', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (7, 'match-shirt', 'so-mi', 'match shirt', 499000, 'MatchShirt_Den_LB_1.jpg', 'nam', '', b'1', '2021-01-08 14:44:12', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (8, 'city-sweatshirt', 'ao-thun', 'city sweatshirt', 399000, 'CitySS_Be_PT_1.jpg', 'unisex', '', b'1', '2021-01-08 14:28:57', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (9, 'seize-shirt', 'so-mi', 'Áo Sơ Mi Nam SSSTUTTER Seize Shirt', 449000, 'seizeshirt-xanh-pt-3.jpg', 'nam', '<p>Một chiếc &aacute;o đa năng với thiết kế t&uacute;i hộp cực kỳ tiện dụng, hỗ trợ tối đa c&aacute;c ch&agrave;ng trai trong việc cất giấu những vật dụng c&aacute; nh&acirc;n quan trọng của m&igrave;nh.</p>\n\n<p>Seize Shirt được cẩn thận lựa chọn chất vải H&agrave;n Cao cấp cực kỳ Mềm mại, đem đến cảm gi&aacute;c Thoải M&aacute;i tuyệt đối cho người mặc.</p>\n', b'1', '2021-01-08 14:46:10', 'Tú Uyên', '2021-01-25 21:42:57', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (10, 'joy-short', 'quan-short', 'Quần Shorts Nữ SSSTUTTER Joy Shorts', 349000, 'JoyShorts_Nau_PT_2.jpg', 'nữ', '<p>Quần Shorts l&agrave; một item m&agrave; kh&ocirc;ng c&ocirc; g&aacute;i n&agrave;o c&oacute; thể thiếu trong tủ đồ của m&igrave;nh.</p>\n\n<p>Việc chọn cho m&igrave;nh một chiếc quần Shorts c&oacute; độ d&agrave;i ph&ugrave; hợp để đồng h&agrave;nh m&ugrave;a tựu trường m&agrave; vẫn giữ được n&eacute;t năng động, đ&aacute;ng y&ecirc;u quả thực rất kh&oacute;.</p>\n\n<p>Vậy n&ecirc;n Joy Shorts đ&atilde; ra đời để gi&uacute;p cho c&aacute;c c&ocirc; g&aacute;i của SSS. kh&ocirc;ng c&ograve;n phải đắn đo mỗi khi chọn quần Shorts ph&ugrave; hợp.</p>\n\n<p>Với thiết kế phần ống quần d&aacute;ng chữ A l&agrave;m tone l&ecirc;n đ&ocirc;i ch&acirc;n thon gọn m&agrave; vẫn giữ được sự lịch sự bởi độ d&agrave;i ph&ugrave; hợp c&ugrave;ng với nh&oacute;m m&agrave;u dễ phối sẽ đ&acirc;y chắc chắn l&agrave; item gi&uacute;p c&aacute;c c&ocirc; n&agrave;ng tiết kiệm được thời gian mỗi khi chọn đồ đấy!</p>\n', b'0', '2021-01-08 14:29:48', 'Tú Uyên', '2021-01-26 10:29:50', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (11, 'dos-shirt', 'so-mi', 'Áo Sơ Mi Nữ SSSTUTTER Dos Shirt', 399000, 'dosshirt-den-pt-1.jpg', 'nữ', '<p>Chiếc &aacute;o của những ng&agrave;y bận rộn. Dos Shirt sử dụng loại vải cao cấp v&ocirc; c&ugrave;ng mềm mại nhưng được tối ưu khả năng chống nhăn.</p>\n\n<p>Kết hợp c&ugrave;ng thiết kế lạ mắt 2 h&agrave;ng khuy tạo n&ecirc;n điểm nhấn thu h&uacute;t cho mọi c&ocirc; g&aacute;i.</p>\n\n<p>Đặc biệt tone m&agrave;u xanh cổ vịt, m&agrave;u của năm 2020 tạo n&ecirc;n n&eacute;t độc đ&aacute;o, kh&ocirc;ng hề k&eacute;n người mặc.</p>\n', b'1', '2021-01-08 14:31:12', 'Tú Uyên', '2021-01-25 21:50:33', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (12, 'morning-sweatshirt', 'ao-thun', 'Áo Nỉ Dài Tay Nam SSSTUTTER Morning Sweatshirt', 349000, 'MorningSS_Trang_PT_2.jpg', 'nam', '<p>&nbsp;</p>\n\n<p>Lại l&agrave; một thiết kế Sweatshirt kh&aacute;c đến từ SSS, nhưng với Morning Sweatshirt bạn sẽ c&oacute; một vẻ ngo&agrave;i Trẻ Trung v&agrave; c&oacute; phần Nổi Bật hơn nhiều.</p>\n\n<p>Thiết kế cổ t&agrave;u lạ mắt, phần cổ phối m&agrave;u tinh tế sẽ gi&uacute;p bạn lu&ocirc;n Cuốn H&uacute;t, Bảnh bao ghi trọn điểm trong mắt người đối diện đ&oacute;.</p>\n', b'1', '2021-01-08 14:45:05', 'Tú Uyên', '2021-01-25 21:51:51', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (13, 'fluffy-blouse', 'so-mi', 'Áo Dài Tay Nữ SSSTUTTER Fluffy Blouse', 399000, 'FluffyBlouse_Nau_PT_1.jpg', 'nữ', '<p>Đ&uacute;ng với t&ecirc;n gọi của m&igrave;nh, Fluffy Blouse sở hữu chất vải nhung tăm cao cấp.</p>\n\n<p>Tạo cảm gi&aacute;c v&ocirc; c&ugrave;ng mềm mại, thoải m&aacute;i kết hợp c&ugrave;ng thiết kế cổ c&aacute;ch điệu mang lại n&eacute;t nữ t&iacute;nh, thanh lịch cho mọi c&ocirc; n&agrave;ng xinh đẹp.</p>\n', b'1', '2021-01-08 14:38:55', 'Tú Uyên', '2021-01-25 21:52:29', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (14, 'basic-cross-bag', 'balo-tui-xach', 'basic cross bag', 349000, 'basiccrossbag-den-pt-1.jpg', 'unisex', '', b'1', '2021-01-08 14:39:55', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (15, 'biker-jacket', 'ao-khoac', 'Áo Khoác Unisex SSSTUTTER SSS\' Biker Jacket', 1199000, 'BikerV3_Den_PT_2.jpg', 'unisex', '<p>Đ&atilde; từng l&agrave;m mưa l&agrave;m gi&oacute; v&agrave; l&agrave; items được săn đ&oacute;n bậc nhất tại SSStutter, SSS&#39; Biker Jacket năm nay trở lại nhưng với phi&ecirc;n bản ho&agrave;n to&agrave;n Mới - Bảnh Bao hơn - Cuốn H&uacute;t hơn.</p>\n\n<p>Vẫn l&agrave; bề mặt Nhung mềm mại tuyệt đối, chắc chắn sẽ gi&uacute;p n&acirc;ng tầm set đồ của bạn trở n&ecirc;n Ho&agrave;n hảo đ&oacute;</p>\n', b'1', '2021-01-08 14:40:42', 'Tú Uyên', '2021-01-25 21:54:00', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (16, 'finn-shoes', 'giay-dep', 'finn shoes', 599000, 'FINN-SHOES-01.jpg', 'unisex', '', b'1', '2021-01-08 14:41:24', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (17, 'gian-short', 'quan-short', 'gian short', 369000, 'gianshort5.jpg', 'nữ', '', b'1', '2021-01-08 14:42:12', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (18, 'gingham-shirt-her', 'so-mi', 'gingham shirt her', 399000, 'ginghamshirther-xanh-pt-1.jpg', 'nữ', '', b'1', '2021-01-08 14:43:06', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (19, 'sheer-shirt', 'so-mi', 'sheer shirt', 449000, 'sheershirt-xanh-pt-2.jpg', 'nữ', '', b'1', '2021-01-08 14:46:44', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (20, 'parcel-bag', 'balo-tui-xach', 'parcel bag', 399000, 'ParcelBag_PT_2.jpg', 'unisex', '', b'1', '2021-01-08 14:27:34', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (21, 'millen-shirt', 'so-mi', 'millen shirt', 419000, 'MillenShirt_Den_PT_1.jpg', 'nam', '', b'1', '2021-01-08 14:44:37', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (22, 'bali-short', 'quan-short', 'bali short', 349000, 'balishorts_be_pt_1.jpg', 'nam', '', b'1', '2021-01-08 14:32:21', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (23, 'joy-shoes', 'giay-dep', 'joy shoes', 520000, 'sss-joy-shoes-den.jpg', 'nữ', '', b'1', '2021-01-08 14:30:29', 'Tú Uyên', '2021-01-08 14:37:11', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (24, 'low-pocket-shirt', 'so-mi', 'low pocket shirt', 399000, 'lowpocketshirt7.jpg', 'nam', '', b'1', '2021-01-08 14:43:44', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (25, 'sky-sweater', 'ao-thun', 'sky sweater', 549000, 'SkySweater_Xanh_PT_2.jpg', 'unisex', '', b'1', '2021-01-08 14:47:20', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (26, 'thames-short', 'quan-short', 'thames short', 250000, 'thames_shorts__1__min-scaled.jpg', 'nam', '', b'1', '2021-01-08 14:47:57', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (27, 'win-coat', 'ao-khoac', 'Áo Khoác Dài Măng Tô Nam SSSTUTTER Win Coat 2020', 999000, 'wincoat-xam-pt-1.jpg', 'nam', '<p>&nbsp;</p>\n\n<p>Kh&ocirc;ng giống với những năm trước, Win Coat 2020 trở lại - một phi&ecirc;n bản Ho&agrave;n to&agrave;n Mới, một sự Kh&aacute;c Biệt ho&agrave;n hảo với những điểm Bất ngờ:&nbsp;</p>\n\n<ul>\n	<li>Thiết kế &aacute;o Raglan gi&uacute;p bạn Thoải M&aacute;i trong mọi cử động</li>\n	<li>Chất liệu vải Nhập khẩu Cao Cấp giữ ấm ng&agrave;y gi&oacute; lạnh&nbsp;</li>\n	<li>Thiết kế khuy đ&oacute;ng sau vạt &aacute;o cực kỳ Đặc Biệt</li>\n</ul>\n', b'1', '2021-01-08 14:51:39', 'Tú Uyên', '2021-01-25 21:56:50', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (28, 'quan-jean-slimfit-van-xuan-kien-quoc', 'quan-dai', 'Quần Jean Slimfit Vạn Xuân Kiến Quốc', 425000, 'quan-jean-slimfit-van-xuan-kien-quoc.jpg', 'nam', '<p>Chất liệu: Jean Cotton</p>\n\n<p>Th&agrave;nh phần: 99% cotton 1% spandex</p>\n\n<p>In logo Vạn Xu&acirc;n Kiến Quốc</p>\n', b'1', '2021-01-25 16:48:08', 'Tú Uyên', '2021-01-25 17:53:31', 'Tú Uyên');
INSERT INTO `sanpham` VALUES (29, 'thomas-jacket', 'ao-khoac', 'Áo Khoác Nam SSSTUTTER SSS. Thomas Jacket', 719000, 'thomas-jacket-1.jpg', 'nam', '<p>Trở lại v&agrave;o 2020, Thomas Jacket sẽ đem đến những trải nghiệm tuyệt vời cho người mặc: Nhẹ hơn, Chất liệu vải Cao Cấp hơn v&agrave; kiểu d&aacute;ng Vừa Vặn hơn.</p>\n', b'1', '2021-01-25 18:59:55', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (30, 'match-shirt-her', 'so-mi', 'Áo Sơ Mi Nữ SSSTUTTER Match Shirt', 349000, 'MatchShirt_Her_Nau_LB_1.jpg', 'nữ', '<p>&nbsp;</p>\n\n<p>Đ&acirc;y ch&iacute;nh x&aacute;c l&agrave; bạn cặp ho&agrave;n hảo với chiếc &aacute;o Match Shirt phi&ecirc;n bản nam.</p>\n\n<p>Với phi&ecirc;n bản nữ, chiếc &aacute;o vẫn giữ thiết kế cổ cuban quen thuộc v&agrave; chất liệu vải đũi mềm gi&uacute;p c&aacute;c c&ocirc; g&aacute;i của SSS. thoải m&aacute;i hoạt động cả ng&agrave;y d&agrave;i.</p>\n\n<p>Điểm đặc biệt đến từ chiếc &aacute;o l&agrave; thiết kế ngắn tay vừa tạo n&ecirc;n điểm kh&aacute;c biệt với phi&ecirc;n bản nam vừa tạo ra được sự trẻ trung, thanh lịch cho c&aacute;c c&ocirc; g&aacute;i xinh đẹp.</p>\n', b'1', '2021-01-25 21:37:26', 'Tú Uyên', NULL, NULL);
INSERT INTO `sanpham` VALUES (31, 'quan-jogger-thun-drama', 'quan-dai', 'Quần Jogger Thun Drama ', 350000, 'jogger-drama.jpg', 'nam', '<p>Chất liệu: MINI ZURRY</p>\n\n<p>Th&agrave;nh Phần: 95% COTTON,&nbsp;5% SPANDEX</p>\n\n<p>Th&acirc;n thiện với m&ocirc;i trường</p>\n\n<p>Tho&aacute;ng m&aacute;t</p>\n\n<p>Gi&uacute;p quần co gi&atilde;n tối ưu</p>\n', b'1', '2021-01-25 22:47:22', 'Tú Uyên', NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  `roleid` int NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user_roleid`(`roleid`) USING BTREE,
  CONSTRAINT `fk_user_roleid` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'tuuyen', '123456', 'Tú Uyên', b'1', 1, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (2, 'thienanh', '123456', 'Thiên Anh', b'1', 2, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
