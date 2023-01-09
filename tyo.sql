/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100422 (10.4.22-MariaDB)
 Source Host           : localhost:3307
 Source Schema         : tyo

 Target Server Type    : MySQL
 Target Server Version : 100422 (10.4.22-MariaDB)
 File Encoding         : 65001

 Date: 08/01/2023 20:16:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ___btl_alat
-- ----------------------------
DROP TABLE IF EXISTS `___btl_alat`;
CREATE TABLE `___btl_alat`  (
  `btl_alat_id` int NOT NULL,
  `alat_nm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `luas` int NULL DEFAULT NULL,
  `harga_per_meter` int NULL DEFAULT NULL,
  `masa_hidup` int NULL DEFAULT NULL,
  PRIMARY KEY (`btl_alat_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ___btl_alat
-- ----------------------------

-- ----------------------------
-- Table structure for bl_alat
-- ----------------------------
DROP TABLE IF EXISTS `bl_alat`;
CREATE TABLE `bl_alat`  (
  `alat_id` int NOT NULL AUTO_INCREMENT,
  `pelayanan_id` int NULL DEFAULT NULL,
  `alat_nm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alat_harga` int NULL DEFAULT NULL,
  `alat_umur` int NULL DEFAULT NULL,
  PRIMARY KEY (`alat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_alat
-- ----------------------------
INSERT INTO `bl_alat` VALUES (1, 1, 'TENSIMETER\r\n', 2300000, 5);
INSERT INTO `bl_alat` VALUES (2, 1, 'TERMOMETER\r\n', 80000, 5);
INSERT INTO `bl_alat` VALUES (3, 1, 'STETOSCOPE\r\n', 570000, 5);
INSERT INTO `bl_alat` VALUES (4, 1, 'TIMBANGAN BAYI\r\n', 130000, 5);
INSERT INTO `bl_alat` VALUES (5, 1, 'TIMBANGAN BESAR\r\n', 330000, 5);
INSERT INTO `bl_alat` VALUES (6, 1, 'BED PERIKSA\r\n', 5500000, 5);
INSERT INTO `bl_alat` VALUES (7, 2, 'NEBULIZER\r\n', 2400000, 5);
INSERT INTO `bl_alat` VALUES (8, 3, 'STETOSKOP\r\n', 2400000, 5);

-- ----------------------------
-- Table structure for bl_bahan
-- ----------------------------
DROP TABLE IF EXISTS `bl_bahan`;
CREATE TABLE `bl_bahan`  (
  `bahan_id` int NOT NULL AUTO_INCREMENT,
  `pelayanan_id` int NULL DEFAULT NULL,
  `bahan_nm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kebutuhan` int NULL DEFAULT NULL,
  `bahan_harga` int NULL DEFAULT NULL,
  PRIMARY KEY (`bahan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_bahan
-- ----------------------------
INSERT INTO `bl_bahan` VALUES (1, 1, 'HANDSCONE\r\n', 1, 5000);
INSERT INTO `bl_bahan` VALUES (2, 1, 'MASKER\r\n', 1, 2500);
INSERT INTO `bl_bahan` VALUES (3, 2, 'APD\r\n', 1, 50000);
INSERT INTO `bl_bahan` VALUES (4, 2, 'MASKER NEBU\r\n', 1, 13500);
INSERT INTO `bl_bahan` VALUES (5, 2, 'OBAT BRONCHODILATOR\r\n', 1, 45000);
INSERT INTO `bl_bahan` VALUES (6, 2, 'KASSA\r\n', 1, 1000);
INSERT INTO `bl_bahan` VALUES (7, 2, 'POT SPUTUM\r\n', 1, 4000);
INSERT INTO `bl_bahan` VALUES (8, 2, 'TISSUE\r\n', 1, 1000);
INSERT INTO `bl_bahan` VALUES (9, 2, 'BENGKOK\r\n', 1, 5000);
INSERT INTO `bl_bahan` VALUES (10, 3, 'MASKER\r\n', 1, 2500);

-- ----------------------------
-- Table structure for bl_sdm
-- ----------------------------
DROP TABLE IF EXISTS `bl_sdm`;
CREATE TABLE `bl_sdm`  (
  `sdm_id` int NOT NULL AUTO_INCREMENT,
  `poli_id` int NULL DEFAULT NULL,
  `sdm_nm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `biaya` int NULL DEFAULT NULL,
  PRIMARY KEY (`sdm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bl_sdm
-- ----------------------------
INSERT INTO `bl_sdm` VALUES (1, 1, 'DOKTER SPESIALIS\r\n', 540000000);
INSERT INTO `bl_sdm` VALUES (2, 1, 'PERAWAT\r\n', 110000000);

-- ----------------------------
-- Table structure for btl_gedung
-- ----------------------------
DROP TABLE IF EXISTS `btl_gedung`;
CREATE TABLE `btl_gedung`  (
  `btl_gedung_id` int NOT NULL AUTO_INCREMENT,
  `poli_id` int NULL DEFAULT NULL,
  `gedung_nm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `luas` float NULL DEFAULT NULL,
  `harga_per_meter` float NULL DEFAULT NULL,
  `masa_hidup` int NULL DEFAULT NULL,
  PRIMARY KEY (`btl_gedung_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of btl_gedung
-- ----------------------------
INSERT INTO `btl_gedung` VALUES (1, 1, ' KLINIK ANAK \r\n', 129.01, 10492600, 50);

-- ----------------------------
-- Table structure for btl_nonmedis
-- ----------------------------
DROP TABLE IF EXISTS `btl_nonmedis`;
CREATE TABLE `btl_nonmedis`  (
  `nonmedis_id` int NOT NULL AUTO_INCREMENT,
  `poli_id` int NULL DEFAULT NULL,
  `nonmedis_nm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga` int NULL DEFAULT NULL,
  `masa_hidup` int NULL DEFAULT NULL,
  PRIMARY KEY (`nonmedis_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of btl_nonmedis
-- ----------------------------
INSERT INTO `btl_nonmedis` VALUES (1, 1, 'Kursi Rapat\r\n', 2877000, 5);
INSERT INTO `btl_nonmedis` VALUES (2, 1, 'Kursi Putar\r\n', 625000, 5);
INSERT INTO `btl_nonmedis` VALUES (3, 1, 'Kursi Putar\r\n', 1200000, 5);
INSERT INTO `btl_nonmedis` VALUES (4, 1, 'Meja Biro\r\n', 1403900, 5);
INSERT INTO `btl_nonmedis` VALUES (5, 1, 'Uninterruptible Power Supply (UPS)\r\n', 600000, 5);
INSERT INTO `btl_nonmedis` VALUES (6, 1, 'Alat Rumah Tangga Lain-lain\r\n', 5554050, 5);
INSERT INTO `btl_nonmedis` VALUES (7, 1, 'Alat Rumah Tangga Lain-lain\r\n', 450000, 5);
INSERT INTO `btl_nonmedis` VALUES (8, 1, 'P.C Unit\r\n', 7688000, 4);
INSERT INTO `btl_nonmedis` VALUES (9, 1, 'Monitor\r\n', 1415700, 4);
INSERT INTO `btl_nonmedis` VALUES (10, 1, 'Printer\r\n', 2794000, 4);

-- ----------------------------
-- Table structure for btl_operasional
-- ----------------------------
DROP TABLE IF EXISTS `btl_operasional`;
CREATE TABLE `btl_operasional`  (
  `operasional_id` int NOT NULL AUTO_INCREMENT,
  `poli_id` int NULL DEFAULT NULL,
  `operasional_nm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga` int NULL DEFAULT NULL,
  PRIMARY KEY (`operasional_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of btl_operasional
-- ----------------------------
INSERT INTO `btl_operasional` VALUES (1, 1, 'BHP NON MEDIS\r\n', 10000000);

-- ----------------------------
-- Table structure for dat_aktivitas
-- ----------------------------
DROP TABLE IF EXISTS `dat_aktivitas`;
CREATE TABLE `dat_aktivitas`  (
  `aktivitas_id` int NOT NULL AUTO_INCREMENT,
  `pelayanan_id` int NULL DEFAULT NULL,
  `kategori` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pelayanan_nm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_pelayanan` int NULL DEFAULT NULL,
  `waktu_primer_pelayanan` int NULL DEFAULT NULL,
  `cost_btl_rs` int NULL DEFAULT NULL,
  PRIMARY KEY (`aktivitas_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dat_aktivitas
-- ----------------------------
INSERT INTO `dat_aktivitas` VALUES (1, 1, 'P', 'KIE DANA INFORM CONCENTS\r\n', 2, 2, NULL);
INSERT INTO `dat_aktivitas` VALUES (2, 1, 'S', 'PERSIAPAN ALAT\r\n', 1, NULL, NULL);
INSERT INTO `dat_aktivitas` VALUES (3, 1, 'P', 'PERSIAPAN PASIEN\r\n', 1, 1, NULL);
INSERT INTO `dat_aktivitas` VALUES (4, 1, 'P', 'PEMERIKSAAN PERAWAT\r\n', 1, 1, NULL);
INSERT INTO `dat_aktivitas` VALUES (5, 1, 'P', 'PEMERIKSAAN DOKTER\r\n', 1, 1, NULL);
INSERT INTO `dat_aktivitas` VALUES (6, 1, 'S', 'PEMBUATAN CATATAN MEDIS\r\n', 1, NULL, NULL);
INSERT INTO `dat_aktivitas` VALUES (7, 2, 'S', 'PERSIAPAN ALAT\r\n', 3, NULL, NULL);
INSERT INTO `dat_aktivitas` VALUES (8, 2, 'P', 'PERSIAPAN PASIEN\r\n', 1, 1, NULL);
INSERT INTO `dat_aktivitas` VALUES (9, 2, 'P', 'PELAYANAN NEBULIZER\r\n', 20, 20, NULL);
INSERT INTO `dat_aktivitas` VALUES (10, 2, 'S', 'PEMBUATAN CATATAN MEDIS\r\n', 1, NULL, NULL);
INSERT INTO `dat_aktivitas` VALUES (11, 3, 'S', 'PERSIAPAN ALAT\r\n', 1, NULL, NULL);
INSERT INTO `dat_aktivitas` VALUES (12, 3, 'P', 'PERSIAPAN PASIEN\r\n', 1, 1, NULL);
INSERT INTO `dat_aktivitas` VALUES (13, 3, 'P', 'PELAYANAN TTV\r\n', 1, 1, NULL);
INSERT INTO `dat_aktivitas` VALUES (14, 3, 'S', 'PEMBUATAN CATATAN MEDIS\r\n', 1, NULL, NULL);
INSERT INTO `dat_aktivitas` VALUES (15, NULL, 'S', 'PELAYANAN RM\r\n', NULL, NULL, 16892282);
INSERT INTO `dat_aktivitas` VALUES (16, NULL, 'S', 'PELAYANAN IPSRS\r\n', NULL, NULL, 2014893);
INSERT INTO `dat_aktivitas` VALUES (17, NULL, 'S', 'PELAYANAN LAUNDRY\r\n', NULL, NULL, 5875279);
INSERT INTO `dat_aktivitas` VALUES (18, NULL, 'S', 'PELAYANAN KEAMANAN\r\n', NULL, NULL, 5028722);
INSERT INTO `dat_aktivitas` VALUES (19, NULL, 'S', 'PELAYANAN CLEANING SERVICE DAN HS\r\n', NULL, NULL, 12063914);
INSERT INTO `dat_aktivitas` VALUES (20, NULL, 'S', 'PELAYANAN ADM DAN MANAJEMEN\r\n', NULL, NULL, 81180170);
INSERT INTO `dat_aktivitas` VALUES (21, NULL, 'S', 'PELAYANAN CSSD\r\n', NULL, NULL, 350487);
INSERT INTO `dat_aktivitas` VALUES (22, NULL, 'S', 'PELAYANAN PARKIR\r\n', NULL, NULL, 3622604);
INSERT INTO `dat_aktivitas` VALUES (23, NULL, 'S', 'PELAYANAN FARMASI\r\n', NULL, NULL, 13526540);
INSERT INTO `dat_aktivitas` VALUES (24, NULL, 'S', 'PELAYANAN GIZI\r\n', NULL, NULL, 10535);

-- ----------------------------
-- Table structure for mst_parameter
-- ----------------------------
DROP TABLE IF EXISTS `mst_parameter`;
CREATE TABLE `mst_parameter`  (
  `parameter_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parameter_nm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parameter_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`parameter_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_parameter
-- ----------------------------
INSERT INTO `mst_parameter` VALUES ('WP', 'WAKTU PELAYANAN SETAHUN (menit)', '101520');

-- ----------------------------
-- Table structure for mst_pelayanan
-- ----------------------------
DROP TABLE IF EXISTS `mst_pelayanan`;
CREATE TABLE `mst_pelayanan`  (
  `pelayanan_id` int NOT NULL AUTO_INCREMENT,
  `poli_id` int NULL DEFAULT NULL,
  `pelayanan_nm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pelayanan_jml` int NULL DEFAULT NULL,
  PRIMARY KEY (`pelayanan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_pelayanan
-- ----------------------------
INSERT INTO `mst_pelayanan` VALUES (1, 1, 'PEMERIKSAAN DOKTER\r\n', 15012);
INSERT INTO `mst_pelayanan` VALUES (2, 1, 'NEBULIZER\r\n', 4);
INSERT INTO `mst_pelayanan` VALUES (3, 1, 'TTV\r\n', 36);

-- ----------------------------
-- Table structure for mst_poli
-- ----------------------------
DROP TABLE IF EXISTS `mst_poli`;
CREATE TABLE `mst_poli`  (
  `poli_id` int NOT NULL AUTO_INCREMENT,
  `poli_nm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`poli_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_poli
-- ----------------------------
INSERT INTO `mst_poli` VALUES (1, 'Poli Anak');
INSERT INTO `mst_poli` VALUES (2, 'Poli Jantung');

-- ----------------------------
-- Table structure for mst_sdm
-- ----------------------------
DROP TABLE IF EXISTS `mst_sdm`;
CREATE TABLE `mst_sdm`  (
  `sdm_id` int NOT NULL,
  `poli_id` int NULL DEFAULT NULL,
  `sdm_biaya` int NULL DEFAULT NULL,
  PRIMARY KEY (`sdm_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_sdm
-- ----------------------------

-- ----------------------------
-- View structure for v_bl_bahan
-- ----------------------------
DROP VIEW IF EXISTS `v_bl_bahan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_bl_bahan` AS SELECT
	b.pelayanan_nm,
	a.pelayanan_id,
	SUM( a.kebutuhan * a.bahan_harga ) bahan_harga 
FROM
	bl_bahan a
	JOIN mst_pelayanan b ON a.pelayanan_id = b.pelayanan_id 
GROUP BY
	a.pelayanan_id ;

-- ----------------------------
-- View structure for v_bl_sdm
-- ----------------------------
DROP VIEW IF EXISTS `v_bl_sdm`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_bl_sdm` AS SELECT poli_id, ROUND( SUM( biaya )/( SELECT parameter_value FROM mst_parameter WHERE parameter_id = 'WP' ),
	0 
) AS biaya_per_menit 
FROM
	bl_sdm 
GROUP BY
	poli_id ;

-- ----------------------------
-- View structure for v_btl_gedung
-- ----------------------------
DROP VIEW IF EXISTS `v_btl_gedung`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_btl_gedung` AS SELECT poli_id, ROUND((luas*harga_per_meter/masa_hidup),0) harga FROM btl_gedung GROUP BY poli_id ;

-- ----------------------------
-- View structure for v_btl_nonmedis
-- ----------------------------
DROP VIEW IF EXISTS `v_btl_nonmedis`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_btl_nonmedis` AS SELECT
	a.poli_id,
	ROUND( SUM( biaya_depresiasi ), 0 ) harga 
FROM
	( SELECT *, ROUND( harga / masa_hidup, 0 ) biaya_depresiasi FROM btl_nonmedis ) a 
GROUP BY
	a.poli_id ;

-- ----------------------------
-- View structure for v_btl_operasional
-- ----------------------------
DROP VIEW IF EXISTS `v_btl_operasional`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_btl_operasional` AS SELECT poli_id, SUM(harga) harga FROM btl_operasional GROUP BY poli_id ;

-- ----------------------------
-- View structure for v_btl_total
-- ----------------------------
DROP VIEW IF EXISTS `v_btl_total`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_btl_total` AS SELECT a.poli_id, SUM(harga) harga FROM 
(
SELECT * FROM v_btl_gedung UNION ALL 
SELECT * FROM v_btl_nonmedis UNION ALL 
SELECT * FROM v_btl_operasional
) a
GROUP BY a.poli_id ;

-- ----------------------------
-- View structure for v_btl_total_cd
-- ----------------------------
DROP VIEW IF EXISTS `v_btl_total_cd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_btl_total_cd` AS SELECT
	b.poli_id,
	SUM( a.waktu_pelayanan * pelayanan_jml ) total_cd 
FROM
	dat_aktivitas a
	JOIN mst_pelayanan b ON a.pelayanan_id = b.pelayanan_id 
GROUP BY
	poli_id ;

-- ----------------------------
-- View structure for v_btl_total_cd_primer
-- ----------------------------
DROP VIEW IF EXISTS `v_btl_total_cd_primer`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_btl_total_cd_primer` AS SELECT
	b.poli_id,
	SUM( a.waktu_primer_pelayanan * pelayanan_jml ) total_cd 
FROM
	dat_aktivitas a
	JOIN mst_pelayanan b ON a.pelayanan_id = b.pelayanan_id 
GROUP BY
	poli_id ;

SET FOREIGN_KEY_CHECKS = 1;
