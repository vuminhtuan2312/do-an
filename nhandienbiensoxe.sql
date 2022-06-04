-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 24, 2021 lúc 05:33 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhandienbiensoxe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giaxe`
--

CREATE TABLE `tbl_giaxe` (
  `PKma_giaxe` int(11) NOT NULL,
  `PK_maloai` int(11) NOT NULL,
  `PK_matime` int(11) NOT NULL,
  `giatien` int(11) DEFAULT NULL,
  `loai_ve` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_giaxe`
--

INSERT INTO `tbl_giaxe` (`PKma_giaxe`, `PK_maloai`, `PK_matime`, `giatien`, `loai_ve`) VALUES
(1, 1, 1, 20000, 'Tiếng'),
(2, 1, 2, 500000, '500000 VNĐ(23h:7h)'),
(3, 1, 3, 1250000, '0'),
(4, 2, 1, 5000, '5000 VNĐ / Lượt'),
(5, 2, 2, 30000, '30000(23h:7h)'),
(6, 2, 3, 45000, '0'),
(7, 2, 4, 5000, '5000 VNĐ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_guixe`
--

CREATE TABLE `tbl_guixe` (
  `ma_guixe` int(11) NOT NULL,
  `bienso_vao` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bienso_ra` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ngaygui` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tg_bg_gui` int(11) NOT NULL DEFAULT 0,
  `tg_kt_gui` int(11) NOT NULL DEFAULT 0,
  `FK_giaxe` int(11) NOT NULL DEFAULT 0,
  `tongtien` int(11) NOT NULL DEFAULT 0,
  `ghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `trangthai` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Đang gửi xe',
  `id_khach` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_guixe`
--

INSERT INTO `tbl_guixe` (`ma_guixe`, `bienso_vao`, `bienso_ra`, `ngaygui`, `tg_bg_gui`, `tg_kt_gui`, `FK_giaxe`, `tongtien`, `ghichu`, `trangthai`, `id_khach`) VALUES
(29, '99-V1 2890 ', '', '24/04/2021 00:06:54', 1619197614, 1619198568, 6, 45000, '', 'Đã trả xe', NULL),
(35, '14-U1 048-35 ', '', '24/04/2021 00:24:33', 1619198673, 1619198796, 5, 30000, '', 'Đã trả xe', NULL),
(39, '29-P1 | 050.50 ', '', '24/04/2021 09:43:49', 1619232229, 1619232257, 4, 5000, '', 'Đã trả xe', NULL),
(40, '99-V1 2890 ', '', '24/04/2021 09:44:39', 1619232279, 0, 4, 0, '', 'Đang gửi xe', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khach`
--

CREATE TABLE `tbl_khach` (
  `id_khach` int(11) NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ngaysinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gioitinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cmnd` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_khach`
--

INSERT INTO `tbl_khach` (`id_khach`, `hoten`, `ngaysinh`, `gioitinh`, `diachi`, `cmnd`, `sdt`) VALUES
(1, 'Nguyễn Văn Lâm', '02/10/1999', 'Nam', 'Toà 1010 A5 pháp vân', '1258501570', '0'),
(4, 'Nguyễn Văn Hoàng', '1999-10-02', 'Nam', '1101 KTX A5 PHÁP VÂN', '127822221', '0868378653');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loaixe`
--

CREATE TABLE `tbl_loaixe` (
  `ma_loai` int(11) NOT NULL,
  `loai` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_loaixe`
--

INSERT INTO `tbl_loaixe` (`ma_loai`, `loai`) VALUES
(1, 'Ô tô'),
(2, 'Xe máy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhanvien`
--

CREATE TABLE `tbl_nhanvien` (
  `manv` int(11) NOT NULL,
  `tennv` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ngaysinh` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gioitinh` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sodienthoai` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nhanvien`
--

INSERT INTO `tbl_nhanvien` (`manv`, `tennv`, `ngaysinh`, `gioitinh`, `diachi`, `sodienthoai`) VALUES
(1, 'admin', '02/10/1999', 'Nam', 'Bắc Ninh', '086837853'),
(2, 'Nguyễn Văn Lâm', '02/10/1988', 'Nam', 'Hà Nội', '086832112'),
(3, 'Nguyễn Văn Bảo', '1999-10-02', 'Nam', '36 Bắc Giang', '0868378651');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_quyen`
--

CREATE TABLE `tbl_quyen` (
  `iMa_Quyen` int(11) NOT NULL,
  `sTenquyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tbl_quyen`
--

INSERT INTO `tbl_quyen` (`iMa_Quyen`, `sTenquyen`) VALUES
(1, 'Admin'),
(2, 'Nhân viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_taikhoan`
--

CREATE TABLE `tbl_taikhoan` (
  `ma_taikhoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `taikhoan` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maquyen` int(11) NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_manv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_taikhoan`
--

INSERT INTO `tbl_taikhoan` (`ma_taikhoan`, `taikhoan`, `maquyen`, `matkhau`, `FK_manv`) VALUES
('', 'lambnck99', 2, '123', 2),
('1', 'admin', 1, '123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_time`
--

CREATE TABLE `tbl_time` (
  `id_time` int(11) NOT NULL,
  `name_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_bd` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_kt` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_time`
--

INSERT INTO `tbl_time` (`id_time`, `name_time`, `time_bd`, `time_kt`) VALUES
(1, 'Ngày', '05:00', '17:00'),
(2, 'Đêm', '23:00', '05:00'),
(3, 'Tháng', '', ''),
(4, 'Tối', '17:00', '23:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_giaxe`
--
ALTER TABLE `tbl_giaxe`
  ADD PRIMARY KEY (`PKma_giaxe`),
  ADD KEY `PK_maloai` (`PK_maloai`,`PK_matime`),
  ADD KEY `PK_matime` (`PK_matime`);

--
-- Chỉ mục cho bảng `tbl_guixe`
--
ALTER TABLE `tbl_guixe`
  ADD PRIMARY KEY (`ma_guixe`),
  ADD KEY `FK_giaxe` (`FK_giaxe`);

--
-- Chỉ mục cho bảng `tbl_khach`
--
ALTER TABLE `tbl_khach`
  ADD PRIMARY KEY (`id_khach`);

--
-- Chỉ mục cho bảng `tbl_loaixe`
--
ALTER TABLE `tbl_loaixe`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `tbl_quyen`
--
ALTER TABLE `tbl_quyen`
  ADD PRIMARY KEY (`iMa_Quyen`);

--
-- Chỉ mục cho bảng `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
  ADD PRIMARY KEY (`ma_taikhoan`),
  ADD KEY `ma_user` (`ma_taikhoan`),
  ADD KEY `ma_user_2` (`ma_taikhoan`),
  ADD KEY `maquyen` (`maquyen`),
  ADD KEY `taikhoan` (`taikhoan`),
  ADD KEY `FK_manv` (`FK_manv`);

--
-- Chỉ mục cho bảng `tbl_time`
--
ALTER TABLE `tbl_time`
  ADD PRIMARY KEY (`id_time`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_giaxe`
--
ALTER TABLE `tbl_giaxe`
  MODIFY `PKma_giaxe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_guixe`
--
ALTER TABLE `tbl_guixe`
  MODIFY `ma_guixe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `tbl_khach`
--
ALTER TABLE `tbl_khach`
  MODIFY `id_khach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_loaixe`
--
ALTER TABLE `tbl_loaixe`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_quyen`
--
ALTER TABLE `tbl_quyen`
  MODIFY `iMa_Quyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_time`
--
ALTER TABLE `tbl_time`
  MODIFY `id_time` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_giaxe`
--
ALTER TABLE `tbl_giaxe`
  ADD CONSTRAINT `tbl_giaxe_ibfk_1` FOREIGN KEY (`PK_maloai`) REFERENCES `tbl_loaixe` (`ma_loai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_giaxe_ibfk_2` FOREIGN KEY (`PK_matime`) REFERENCES `tbl_time` (`id_time`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_guixe`
--
ALTER TABLE `tbl_guixe`
  ADD CONSTRAINT `tbl_guixe_ibfk_1` FOREIGN KEY (`FK_giaxe`) REFERENCES `tbl_giaxe` (`PKma_giaxe`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
  ADD CONSTRAINT `tbl_taikhoan_ibfk_1` FOREIGN KEY (`maquyen`) REFERENCES `tbl_quyen` (`iMa_Quyen`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_taikhoan_ibfk_2` FOREIGN KEY (`FK_manv`) REFERENCES `tbl_nhanvien` (`manv`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
