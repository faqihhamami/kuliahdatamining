-- Tabel Dimensi Produk
CREATE TABLE produk_dim (
    id_produk INT PRIMARY KEY,
    nama_produk VARCHAR(100)
);

-- Tabel Dimensi Wilayah
CREATE TABLE wilayah_dim (
    id_wilayah INT PRIMARY KEY,
    nama_wilayah VARCHAR(100)
);

-- Tabel Dimensi Waktu
CREATE TABLE waktu_dim (
    id_waktu INT PRIMARY KEY,
    tahun INT,
    bulan INT,
    nama_bulan VARCHAR(20)
);

-- Tabel Fakta Penjualan
CREATE TABLE penjualan_fakta (
    id_fakta INT PRIMARY KEY,
    id_produk INT,
    id_waktu INT,
    id_wilayah INT,
    jumlah INT,
    total_penjualan BIGINT,
    FOREIGN KEY (id_produk) REFERENCES produk_dim(id_produk),
    FOREIGN KEY (id_waktu) REFERENCES waktu_dim(id_waktu),
    FOREIGN KEY (id_wilayah) REFERENCES wilayah_dim(id_wilayah)
);


INSERT INTO produk_dim (id_produk, nama_produk) VALUES (101, 'Produk A');
INSERT INTO produk_dim (id_produk, nama_produk) VALUES (102, 'Produk B');
INSERT INTO produk_dim (id_produk, nama_produk) VALUES (103, 'Produk C');
INSERT INTO produk_dim (id_produk, nama_produk) VALUES (104, 'Produk D');

INSERT INTO wilayah_dim (id_wilayah, nama_wilayah) VALUES (1, 'Jakarta');
INSERT INTO wilayah_dim (id_wilayah, nama_wilayah) VALUES (2, 'Surabaya');
INSERT INTO wilayah_dim (id_wilayah, nama_wilayah) VALUES (3, 'Bandung');

INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202301, 2023, 1, 'January');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202302, 2023, 2, 'February');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202303, 2023, 3, 'March');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202304, 2023, 4, 'April');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202305, 2023, 5, 'May');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202306, 2023, 6, 'June');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202307, 2023, 7, 'July');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202308, 2023, 8, 'August');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202309, 2023, 9, 'September');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202310, 2023, 10, 'October');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202311, 2023, 11, 'November');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202312, 2023, 12, 'December');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202401, 2024, 1, 'January');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202402, 2024, 2, 'February');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202403, 2024, 3, 'March');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202404, 2024, 4, 'April');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202405, 2024, 5, 'May');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202406, 2024, 6, 'June');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202407, 2024, 7, 'July');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202408, 2024, 8, 'August');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202409, 2024, 9, 'September');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202410, 2024, 10, 'October');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202411, 2024, 11, 'November');
INSERT INTO waktu_dim (id_waktu, tahun, bulan, nama_bulan) VALUES (202412, 2024, 12, 'December');

INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (1, 103, 202310, 2, 3, 220620);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (2, 103, 202304, 3, 10, 745330);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (3, 101, 202404, 2, 1, 82984);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (4, 104, 202304, 2, 4, 272188);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (5, 104, 202301, 3, 8, 967552);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (6, 103, 202402, 2, 10, 1308180);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (7, 102, 202301, 3, 6, 302208);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (8, 102, 202301, 1, 2, 271870);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (9, 104, 202412, 3, 9, 1019790);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (10, 103, 202304, 1, 7, 1039276);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (11, 103, 202301, 2, 2, 233436);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (12, 101, 202309, 2, 2, 299526);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (13, 102, 202308, 2, 1, 96690);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (14, 101, 202301, 3, 7, 812525);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (15, 101, 202307, 2, 10, 1322430);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (16, 101, 202311, 3, 3, 373932);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (17, 104, 202310, 2, 3, 307692);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (18, 102, 202304, 2, 7, 991214);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (19, 101, 202305, 1, 1, 111267);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (20, 103, 202408, 3, 10, 1336090);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (21, 101, 202303, 1, 3, 255300);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (22, 101, 202406, 1, 7, 421862);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (23, 101, 202403, 1, 4, 264228);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (24, 102, 202308, 3, 3, 164784);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (25, 104, 202304, 1, 6, 459936);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (26, 102, 202307, 3, 5, 466615);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (27, 102, 202407, 3, 9, 543573);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (28, 103, 202407, 3, 8, 1060432);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (29, 104, 202411, 3, 1, 108523);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (30, 101, 202412, 1, 6, 412356);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (31, 104, 202406, 1, 1, 139889);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (32, 102, 202403, 2, 10, 1473810);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (33, 102, 202409, 3, 3, 175974);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (34, 103, 202411, 3, 6, 794532);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (35, 103, 202312, 1, 3, 429132);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (36, 101, 202412, 1, 10, 1038610);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (37, 103, 202303, 1, 10, 539180);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (38, 103, 202407, 3, 3, 265578);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (39, 102, 202407, 2, 6, 567306);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (40, 103, 202304, 3, 9, 776709);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (41, 102, 202306, 2, 4, 354800);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (42, 101, 202310, 2, 6, 652992);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (43, 103, 202305, 3, 10, 1303570);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (44, 104, 202406, 1, 3, 362073);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (45, 101, 202404, 3, 1, 134861);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (46, 101, 202411, 2, 6, 428472);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (47, 102, 202412, 1, 2, 224004);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (48, 101, 202307, 3, 9, 537822);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (49, 101, 202307, 3, 9, 1058652);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (50, 103, 202406, 3, 4, 401844);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (51, 103, 202301, 1, 7, 954177);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (52, 101, 202307, 1, 10, 946990);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (53, 103, 202401, 3, 2, 170028);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (54, 101, 202311, 1, 2, 200804);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (55, 104, 202401, 1, 8, 690552);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (56, 101, 202308, 3, 3, 211098);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (57, 103, 202403, 3, 4, 544196);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (58, 104, 202401, 2, 9, 643185);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (59, 104, 202301, 1, 3, 321429);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (60, 103, 202406, 1, 6, 484056);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (61, 103, 202302, 2, 6, 523368);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (62, 103, 202304, 3, 1, 109330);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (63, 103, 202402, 1, 5, 460875);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (64, 103, 202305, 2, 2, 261090);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (65, 101, 202306, 1, 10, 791070);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (66, 102, 202309, 3, 7, 447776);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (67, 101, 202309, 2, 6, 517242);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (68, 104, 202310, 1, 1, 148848);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (69, 101, 202409, 3, 4, 242992);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (70, 102, 202305, 2, 10, 1437000);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (71, 104, 202408, 1, 2, 115816);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (72, 101, 202403, 1, 2, 148706);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (73, 102, 202301, 3, 3, 250824);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (74, 104, 202406, 3, 2, 136588);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (75, 104, 202411, 3, 4, 538576);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (76, 101, 202312, 2, 8, 1181176);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (77, 104, 202407, 3, 3, 291360);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (78, 103, 202308, 2, 5, 379325);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (79, 103, 202301, 2, 4, 370924);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (80, 102, 202407, 1, 3, 387396);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (81, 104, 202403, 1, 1, 132945);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (82, 104, 202406, 2, 4, 264060);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (83, 104, 202411, 3, 10, 1440230);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (84, 101, 202404, 3, 3, 217293);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (85, 104, 202308, 3, 9, 1256094);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (86, 104, 202306, 3, 6, 642744);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (87, 103, 202308, 1, 3, 318483);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (88, 101, 202308, 3, 3, 150381);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (89, 101, 202303, 1, 2, 264244);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (90, 104, 202311, 2, 1, 66053);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (91, 101, 202401, 2, 8, 514656);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (92, 101, 202403, 1, 1, 134552);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (93, 103, 202311, 1, 8, 1182640);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (94, 102, 202410, 3, 3, 232155);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (95, 101, 202303, 2, 9, 792828);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (96, 103, 202304, 1, 8, 1016368);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (97, 101, 202301, 2, 6, 440826);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (98, 102, 202409, 3, 10, 594630);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (99, 102, 202409, 2, 2, 202300);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (100, 103, 202405, 1, 4, 355628);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (101, 104, 202305, 1, 1, 147376);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (102, 101, 202405, 1, 10, 922500);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (103, 102, 202411, 1, 10, 1245550);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (104, 103, 202303, 1, 6, 385350);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (105, 103, 202304, 2, 8, 540608);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (106, 103, 202402, 3, 1, 51409);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (107, 102, 202310, 2, 4, 275692);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (108, 101, 202405, 3, 1, 59467);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (109, 101, 202407, 1, 3, 220533);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (110, 103, 202311, 3, 3, 430029);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (111, 103, 202310, 3, 7, 419391);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (112, 101, 202411, 2, 3, 276792);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (113, 101, 202310, 2, 9, 596358);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (114, 102, 202304, 3, 9, 935172);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (115, 104, 202403, 3, 3, 264606);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (116, 103, 202304, 2, 7, 985712);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (117, 104, 202307, 1, 7, 933807);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (118, 104, 202307, 2, 7, 449239);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (119, 104, 202301, 1, 10, 647870);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (120, 103, 202409, 1, 6, 638352);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (121, 103, 202408, 2, 2, 119328);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (122, 104, 202409, 3, 7, 617841);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (123, 103, 202405, 1, 4, 410992);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (124, 101, 202406, 3, 5, 629070);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (125, 104, 202406, 3, 10, 661420);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (126, 102, 202402, 3, 6, 695310);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (127, 102, 202411, 3, 4, 441696);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (128, 103, 202304, 3, 10, 885050);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (129, 102, 202309, 3, 7, 987735);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (130, 103, 202301, 2, 8, 593176);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (131, 104, 202407, 2, 10, 1011510);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (132, 103, 202406, 3, 5, 737235);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (133, 104, 202311, 2, 10, 584590);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (134, 103, 202304, 2, 10, 666470);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (135, 104, 202410, 2, 6, 773538);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (136, 102, 202409, 1, 3, 365499);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (137, 103, 202303, 1, 8, 510216);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (138, 101, 202301, 2, 10, 554990);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (139, 101, 202303, 2, 3, 389070);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (140, 103, 202304, 3, 2, 277312);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (141, 104, 202301, 2, 8, 715320);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (142, 102, 202308, 2, 8, 645560);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (143, 101, 202408, 3, 8, 1055560);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (144, 103, 202412, 3, 6, 301830);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (145, 102, 202305, 1, 4, 294828);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (146, 104, 202410, 2, 3, 441333);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (147, 103, 202301, 1, 3, 377223);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (148, 102, 202304, 3, 5, 559105);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (149, 103, 202309, 1, 7, 407162);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (150, 102, 202402, 3, 3, 349767);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (151, 103, 202308, 1, 4, 256464);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (152, 101, 202306, 1, 4, 534128);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (153, 101, 202304, 1, 8, 1071504);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (154, 103, 202402, 3, 3, 449100);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (155, 104, 202305, 1, 2, 162982);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (156, 104, 202401, 3, 3, 166572);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (157, 104, 202302, 3, 1, 59080);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (158, 102, 202408, 3, 8, 968096);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (159, 103, 202406, 2, 5, 586610);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (160, 102, 202404, 3, 2, 116342);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (161, 104, 202404, 1, 4, 482456);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (162, 104, 202310, 3, 10, 1372940);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (163, 104, 202307, 2, 8, 750776);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (164, 101, 202404, 1, 8, 1061624);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (165, 102, 202306, 2, 5, 651080);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (166, 102, 202401, 3, 10, 644230);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (167, 102, 202311, 3, 1, 77673);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (168, 104, 202406, 2, 3, 308538);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (169, 102, 202307, 1, 4, 310392);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (170, 104, 202304, 3, 4, 224220);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (171, 103, 202410, 2, 2, 233774);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (172, 101, 202306, 1, 6, 710256);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (173, 103, 202306, 2, 1, 61380);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (174, 101, 202402, 2, 8, 1062904);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (175, 102, 202312, 1, 9, 622647);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (176, 104, 202408, 2, 6, 843702);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (177, 102, 202401, 1, 5, 336120);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (178, 102, 202409, 1, 1, 146136);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (179, 104, 202308, 2, 5, 444205);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (180, 103, 202404, 3, 10, 1043900);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (181, 104, 202309, 3, 2, 274488);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (182, 104, 202311, 1, 1, 77768);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (183, 102, 202407, 2, 10, 1160510);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (184, 101, 202411, 3, 8, 711384);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (185, 102, 202411, 3, 7, 461503);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (186, 103, 202304, 2, 6, 389790);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (187, 102, 202312, 1, 1, 56652);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (188, 104, 202310, 2, 2, 263306);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (189, 104, 202404, 2, 2, 189792);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (190, 102, 202412, 2, 4, 474548);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (191, 103, 202409, 2, 7, 1007573);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (192, 101, 202405, 1, 7, 775243);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (193, 101, 202310, 2, 6, 649818);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (194, 102, 202312, 3, 4, 494864);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (195, 101, 202303, 2, 2, 238218);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (196, 103, 202302, 2, 7, 919226);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (197, 104, 202404, 3, 1, 127151);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (198, 102, 202301, 2, 4, 420836);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (199, 103, 202302, 2, 7, 935473);
INSERT INTO penjualan_fakta (id_fakta, id_produk, id_waktu, id_wilayah, jumlah, total_penjualan) VALUES (200, 103, 202308, 3, 8, 821096);