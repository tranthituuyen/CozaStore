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

 Date: 02/01/2021 12:28:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chitietsanpham
-- ----------------------------
DROP TABLE IF EXISTS `chitietsanpham`;
CREATE TABLE `chitietsanpham`  (
                                   `machitietsanpham` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                   `masanpham` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                   `size` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                   `mau` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                   `soluong` int NOT NULL,
                                   `ngaynhap` datetime NOT NULL,
                                   PRIMARY KEY (`machitietsanpham`) USING BTREE,
                                   INDEX `fk_msp`(`masanpham`) USING BTREE,
                                   CONSTRAINT `fk_msp` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chitietsanpham
-- ----------------------------
INSERT INTO `chitietsanpham` VALUES ('biker-jacket-den-l', 'biker-jacket', 'xl', 'đen', 1, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('biker-jacket-den-m', 'biker-jacket', 'm', 'đen', 12, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('biker-jacket-nau-l', 'biker-jacket', 'l', 'nâu', 12, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('biker-jacket-nau-m', 'biker-jacket', 'm', 'nâu', 12, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('biker-jacket-nau-xl', 'biker-jacket', 'xl', 'nâu', 12, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('biker-jacket-xam-l', 'biker-jacket', 'l', 'xám', 13, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('biker-jacket-xam-m', 'biker-jacket', 'm', 'xám', 12, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('biker-jacket-xam-xl', 'biker-jacket', 'xl', 'xám', 12, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('bus-long-tee-do-m', 'bus-long-tee', 'm', 'đỏ', 9, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('bus-long-tee-vang-l', 'bus-long-tee', 'l', 'vàng', 8, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('bus-long-tee-xanh-na', 'bus-long-tee', 'l', 'xanh navy', 9, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('finn-shoes-den-42', 'finn-shoes', '42', 'đen', 9, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('finn-shoes-trang-42', 'finn-shoes', '42', 'trắng', 8, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('parcel-bag-den-frees', 'parcel-bag', 'freesize', 'đen', 9, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('sky-sweater-xam-m', 'sky-sweater', 'm', 'xám', 8, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('sky-sweater-xanh-bie', 'sky-sweater', 'l', 'xanh biển nhạt', 0, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('turtle-neck-sweatshi', 'turtle-neck-sweatshi', 'm', 'xanh navy', 9, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('win-coat-be-l', 'win-coat', 'l', 'be', 9, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('win-coat-den-m', 'win-coat', 'm', 'đen', 9, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('win-coat-nau-l', 'win-coat', 'l', 'nâu', 1, '0000-00-00 00:00:00');
INSERT INTO `chitietsanpham` VALUES ('win-coat-xam-m', 'win-coat', 'm', 'xám', 1, '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for danhmuc
-- ----------------------------
DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE `danhmuc`  (
                            `madanhmuc` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                            `tendanhmuc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                            `hinhanh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                            PRIMARY KEY (`madanhmuc`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of danhmuc
-- ----------------------------
INSERT INTO `danhmuc` VALUES ('czak', 'Áo khoác', '');
INSERT INTO `danhmuc` VALUES ('czat', 'Áo thun', '');
INSERT INTO `danhmuc` VALUES ('czbl', 'Balo - Túi xách', '');
INSERT INTO `danhmuc` VALUES ('CZDH', 'Đồng hồ', '');
INSERT INTO `danhmuc` VALUES ('czgd', 'Giày dép', '');
INSERT INTO `danhmuc` VALUES ('czqd', 'Quần dài', '');
INSERT INTO `danhmuc` VALUES ('czqs', 'Quần short', '');
INSERT INTO `danhmuc` VALUES ('czsm', 'Sơ mi', '');

-- ----------------------------
-- Table structure for hinhanhsanpham
-- ----------------------------
DROP TABLE IF EXISTS `hinhanhsanpham`;
CREATE TABLE `hinhanhsanpham`  (
                                   `stt` int NOT NULL AUTO_INCREMENT,
                                   `masanpham` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                   `hinhanhsanpham` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                   PRIMARY KEY (`stt`, `masanpham`) USING BTREE,
                                   INDEX `fk_masp`(`masanpham`) USING BTREE,
                                   CONSTRAINT `fk_masp` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hinhanhsanpham
-- ----------------------------
INSERT INTO `hinhanhsanpham` VALUES (1, 'biker-jacket', '/images/products/ao-khoac/BikerV3_Den_PT_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (2, 'biker-jacket', '/images/products/ao-khoac/BikerV3_Naum_PT_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (3, 'biker-jacket', '/images/products/ao-khoac/BikerV3_Xam_PT_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (4, 'biker-jacket', '/images/products/ao-khoac/BikerV3_Naum_PT_3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (5, 'biker-jacket', '/images/products/ao-khoac/BikerV3_Den_FL_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (6, 'biker-jacket', '/images/products/ao-khoac/BikerV3_Xam_FL_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (7, 'biker-jacket', '/images/products/ao-khoac/BikerV3_Xam_FL_3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (8, 'biker-jacket', '/images/products/ao-khoac/BikerV3_Naum_FL_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (9, 'win-coat', '/images/products/ao-khoac/wincoat-xam-pt-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (10, 'win-coat', '/images/products/ao-khoac/wincoat-nau-pt-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (11, 'win-coat', '/images/products/ao-khoac/sptuan3-thang11-fl-4-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (12, 'win-coat', '/images/products/ao-khoac/sptuan3-thang11-fl-2-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (13, 'win-coat', '/images/products/ao-khoac/sptuan3-thang11-fl-1-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (14, 'sky-sweater', '/images/products/ao-thun/SkySweater_Xanh_PT_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (15, 'sky-sweater', '/images/products/ao-thun/SkySweater_Xam_PT_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (16, 'sky-sweater', '/images/products/ao-thun/SkySweater_Xanh_PT_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (17, 'sky-sweater', '/images/products/ao-thun/SkySweater_Xanh_FL_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (18, 'sky-sweater', '/images/products/ao-thun/SkySweater_Xanh_FL_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (19, 'sky-sweater', '/images/products/ao-thun/SkySweater_Xam_FL_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (20, 'finn-shoes', '/images/products/giay/FINN-SHOES-DEN.jpg');
INSERT INTO `hinhanhsanpham` VALUES (21, 'finn-shoes', '/images/products/giay/FINN-SHOES-TRANG.jpg');
INSERT INTO `hinhanhsanpham` VALUES (22, 'finn-shoes', '/images/products/giay/FINN-SHOES-01.jpg');
INSERT INTO `hinhanhsanpham` VALUES (23, 'parcel-bag', '/images/products/balo/ParcelBag_FL_4.jpg');
INSERT INTO `hinhanhsanpham` VALUES (24, 'parcel-bag', '/images/products/balo/ParcelBag_FL_3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (25, 'parcel-bag', '/images/products/balo/ParcelBag_FL_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (26, 'parcel-bag', '/images/products/balo/ParcelBag_FL_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (27, 'parcel-bag', '/images/products/balo/ParcelBag_PT_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (28, 'bus-long-tee', '/images/products/ao-thun/buslongtee-fl-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (29, 'bus-long-tee', '/images/products/ao-thun/buslongtee-vang-fl-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (30, 'bus-long-tee', '/images/products/ao-thun/buslongtee-xanh-fl-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (31, 'bus-long-tee', '/images/products/ao-thun/buslongtee-xanh-pt-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (32, 'bus-long-tee', '/images/products/ao-thun/buslongtee-vang-pt-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (33, 'bus-long-tee', '/images/products/ao-thun/buslongtee-do-pt-3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (35, 'turtle-neck-sweatshi', '/images/products/ao-thun/TurtleNeckSS_Trang_PT_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (39, 'turtle-neck-sweatshi', '/images/products/ao-thun/TurtleNeckSS_Navy_PT_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (40, 'turtle-neck-sweatshi', '/images/products/ao-thun/TurtleNeckSS_Den_PT_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (41, 'turtle-neck-sweatshi', '/images/products/ao-thun/TurtleNeckSS_FL_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (42, 'morning-sweatshirt', '/images/products/so-mi/MorningSS_Xam_PT_3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (43, 'morning-sweatshirt', '/images/products/so-mi/MorningSS_Trang_PT_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (44, 'morning-sweatshirt', '/images/products/so-mi/MorningSS_Xam_PT_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (45, 'morning-sweatshirt', '/images/products/so-mi/MorningSS_Trang_PT_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (46, 'morning-sweatshirt', '/images/products/so-mi/MorningSS_Trang_PT_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (47, 'morning-sweatshirt', '/images/products/so-mi/MorningSS_Trang_FL_3.jpg\r\n');
INSERT INTO `hinhanhsanpham` VALUES (48, 'morning-sweatshirt', '/images/products/so-mi/MorningSS_Xam_FL_2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (49, 'morning-sweatshirt', '/images/products/so-mi/MorningSS_Xam_FL_3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (50, 'bali-short', '/images/products/quan-short/balishorts_be_pt_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (51, 'bali-short', '/images/products/quan-short/balishorts_den_pt_1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (52, 'thames-short', '/images/products/quan-short/thames_shorts_min-scaled.jpg');
INSERT INTO `hinhanhsanpham` VALUES (53, 'thames-short', '/images/products/quan-short/thames_shorts__3__min-scaled.jpg');
INSERT INTO `hinhanhsanpham` VALUES (54, 'thames-short', '/images/products/quan-short/thames_shorts__2__min-scaled.jpg');
INSERT INTO `hinhanhsanpham` VALUES (55, 'thames-short', '/images/products/quan-short/thames_shorts__1__min-scaled.jpg');
INSERT INTO `hinhanhsanpham` VALUES (56, 'gian-short', '/images/products/quan-short/gianshort4-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (57, 'gian-short', '/images/products/quan-short/gianshort5-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (58, 'gian-short', '/images/products/quan-short/gianshort5.jpg');
INSERT INTO `hinhanhsanpham` VALUES (59, 'gian-short', '/images/products/quan-short/gianshort4.jpg\r\n');
INSERT INTO `hinhanhsanpham` VALUES (60, 'gian-short', '/images/products/quan-short/gianshort6.jpg');
INSERT INTO `hinhanhsanpham` VALUES (61, 'gian-short', '/images/products/quan-short/gianshort7.jpg\r\n');
INSERT INTO `hinhanhsanpham` VALUES (62, 'gian-short', '/images/products/quan-short/gianshort3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (63, 'gian-short', '/images/products/quan-short/gianshort2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (64, 'gian-short', '/images/products/quan-short/gianshort1.jpg\r\n');
INSERT INTO `hinhanhsanpham` VALUES (65, 'gian-short', '/images/products/quan-short/gianshort3-2.jpg\r\n');
INSERT INTO `hinhanhsanpham` VALUES (66, 'basic-cross-bag', '/images/products/balo/basiccrossbag-den-pt-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (67, 'basic-cross-bag', '/images/products/balo/basiccrossbag-trang-fl-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (68, 'basic-cross-bag', '/images/products/balo/basiccrossbag-trang-fl-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (69, 'basic-cross-bag', '/images/products/balo/basiccrossbag-den-fl-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (70, 'henry-shoes', '/images/products/giay/HENRY-SHOES-DEN.jpg');
INSERT INTO `hinhanhsanpham` VALUES (71, 'seize-shirt', '/images/products/so-mi/seizeshirt-trang-pt-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (72, 'seize-shirt', '/images/products/so-mi/seizeshirt-xanh-pt-3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (73, 'seize-shirt', '/images/products/so-mi/seizeshirt-xanh-fl-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (74, 'seize-shirt', '/images/products/so-mi/seizeshirt-trang-fl-3.jpg');
INSERT INTO `hinhanhsanpham` VALUES (75, 'sheer-shirt', '/images/products/so-mi/sheershirt-xanh-pt-2.jpg');
INSERT INTO `hinhanhsanpham` VALUES (76, 'sheer-shirt', '/images/products/so-mi/sheershirt-xam-pt-1.jpg');
INSERT INTO `hinhanhsanpham` VALUES (77, 'sheer-shirt', '/images/products/so-mi/sheershirt-den-pt-1.jpg');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
                         `id` bigint NOT NULL AUTO_INCREMENT,
                         `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                         `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                         `createddate` timestamp NULL DEFAULT NULL,
                         `modifieddate` timestamp NULL DEFAULT NULL,
                         `createdby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                         `modifiedby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for sanpham
-- ----------------------------
DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham`  (
                            `masanpham` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                            `madanhmuc` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                            `tensanpham` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                            `gia` int NOT NULL,
                            `mota` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
                            `anhbia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                            `trangthai` bit(1) NULL DEFAULT b'1',
                            PRIMARY KEY (`masanpham`) USING BTREE,
                            INDEX `fk_mdm`(`madanhmuc`) USING BTREE,
                            CONSTRAINT `fk_mdm` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmuc` (`madanhmuc`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES ('bali-short', 'czqs', 'bali short', 349000, NULL, '/images/products/quan-short/balishorts_be_pt_1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('basic-cross-bag', 'czbl', 'basic cross bag', 349000, NULL, '/images/products/balo/basiccrossbag-den-pt-1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('berlin-shirt', 'czsm', 'berlin shirt', 419000, NULL, '/images/products/so-mi/berlinshirt_mau.jpg', b'1');
INSERT INTO `sanpham` VALUES ('biker-jacket', 'czak', 'biker jacket', 1199000, NULL, '/images/products/ao-khoac/BikerV3_Den_PT_2.jpg', b'1');
INSERT INTO `sanpham` VALUES ('bus-long-tee', 'czat', 'bus long tee', 299000, NULL, '/images/products/ao-thun/buslongtee-fl-1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('collar-shirt', 'czsm', 'collar shirt', 419000, NULL, '/images/products/so-mi/CollarShirt_Den_LB_1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('dos-shirt', 'czsm', 'dos shirt', 399000, NULL, '/images/products/so-mi/dosshirt-xanh-pt-1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('fall-shirt', 'czsm', 'fall shirt', 449000, NULL, '/images/products/so-mi/fallshirt-trang-pt-1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('finn-shoes', 'czgd', 'finn shoes', 599000, NULL, '/images/products/giay/FINN-SHOES-DEN.jpg', b'1');
INSERT INTO `sanpham` VALUES ('fluffy-blouse', 'czsm', 'fluffy blouse', 399000, NULL, '/images/products/so-mi/FluffyBlouse_Nau_PT_1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('gian-short', 'czqs', 'gian short', 369000, NULL, '/images/products/quan-short/gianshort6.jpg', b'1');
INSERT INTO `sanpham` VALUES ('gingham-shirt-her', 'czsm', 'gingham shirt', 399000, NULL, '/images/products/so-mi/ginghamshirther-den-pt-2.jpg', b'1');
INSERT INTO `sanpham` VALUES ('great-life-shirt', 'czsm', 'great life shirt', 299000, NULL, '/images/products/so-mi/121698075-2072071036256905-6359482538352416426-o.jpg', b'1');
INSERT INTO `sanpham` VALUES ('henry-shoes', 'czgd', 'henry shoes', 499000, NULL, '/images/products/giay/HENRY-SHOES-DEN.jpg', b'1');
INSERT INTO `sanpham` VALUES ('joy-short', 'czsm', 'joy short', 349000, NULL, '/images/products/quan-short/JoyShorts_Nau_PT_2.jpg', b'1');
INSERT INTO `sanpham` VALUES ('low-pocket-shirt', 'czsm', 'low pocket shirt', 399000, NULL, '/images/products/so-mi/lowpocketshirt5.jpg', b'1');
INSERT INTO `sanpham` VALUES ('match-shirt', 'czsm', 'match shirt', 499000, NULL, '/images/products/so-mi/MatchShirt_Den_LB_1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('millen-shirt', 'czsm', 'millen shirt', 419000, NULL, '/images/products/so-mi/MillenShirt_Den_PT_1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('morning-sweatshirt', 'czsm', 'morning sweatshirt', 349000, NULL, '/images/products/so-mi/MorningSS_Xam_PT_3.jpg', b'1');
INSERT INTO `sanpham` VALUES ('parcel-bag', 'czbl', 'parcel bag', 399000, NULL, '/images/products/balo/ParcelBag_FL_4.jpg', b'1');
INSERT INTO `sanpham` VALUES ('sam-shirt', 'czsm', 'sam shirt', 399000, NULL, '/images/products/so-mi/SamShirt_Den_PT_1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('seize-shirt', 'czsm', 'seize shirt', 449000, NULL, '/images/products/so-mi/seizeshirt-trang-pt-1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('sheer-blouse', 'czsm', 'sheer blouse', 399000, NULL, '/images/products/so-mi/sheerblouse-den-pt-2.jpg', b'1');
INSERT INTO `sanpham` VALUES ('sheer-shirt', 'czsm', 'sheer shirt', 449000, NULL, '/images/products/so-mi/sheershirt-xanh-pt-2.jpg', b'1');
INSERT INTO `sanpham` VALUES ('sky-sweater', 'czak', 'sky sweater', 549000, NULL, '/images/products/ao-thun/SkySweater_Xanh_PT_1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('thames-short', 'czqs', 'thames short', 250000, NULL, '/images/products/quan-short/thames_shorts__3__min-scaled.jpg', b'1');
INSERT INTO `sanpham` VALUES ('turtle-neck-sweatshi', 'czsm', 'turtle neck sweatshirt', 299000, NULL, '/images/products/ao-thun/TurtleNeckSS_Trang_PT_1.jpg', b'1');
INSERT INTO `sanpham` VALUES ('win-coat', 'czak', 'win coat', 999000, NULL, '/images/products/ao-khoac/wincoat-xam-pt-1.jpg', b'1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
                         `id` bigint NOT NULL AUTO_INCREMENT,
                         `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                         `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                         `fullname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                         `status` int NOT NULL,
                         `roleid` bigint NOT NULL,
                         `createddate` timestamp NULL DEFAULT NULL,
                         `modifieddate` timestamp NULL DEFAULT NULL,
                         `createdby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                         `modifiedby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                         PRIMARY KEY (`id`) USING BTREE,
                         INDEX `fk_user_role`(`roleid`) USING BTREE,
                         CONSTRAINT `fk_user_role` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
