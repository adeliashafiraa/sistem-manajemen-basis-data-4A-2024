SOAL 1
DELIMITER // 
CREATE PROCEDURE BUKU(IN KODE VARCHAR(100))
	BEGIN
		SELECT * FROM buku WHERE kode = Kode_Buku; 
	END //
DELIMITER; 

CALL BUKU ('B001');

SOAL 2
DELIMITER //
CREATE PROCEDURE ANGGOTA(IN idnya VARCHAR(100))
	BEGIN
		SELECT * FROM anggota WHERE idnya = IdAnggota; 
	END //
DELIMITER; 

CALL ANGGOTA ("A001"); 

SOAL 3
DELIMITER //
CREATE PROCEDURE ANGGOTA2(IN idnya2 VARCHAR(100), IN namanya2 VARCHAR(100))
	BEGIN
		SELECT * FROM anggota 
		WHERE idnya2 = IdAnggota 
		AND  namanya2 = nama_anggota ; 
	END //
DELIMITER; 

CALL ANGGOTA2 ("A001", 'Agus Setiawan' ); 

SOAL 4
DELIMITER // 
CREATE PROCEDURE BUKU3(IN KODEEE3 VARCHAR(100), JUDULLL3 VARCHAR(100), PENGARANGNYAAA3 VARCHAR(100) )
	BEGIN
		SELECT * FROM buku 
		WHERE KODEEE3 = Kode_Buku
		AND JUDULLL3 = Judul_buku
		AND PENGARANGNYAAA3 = Pengarang_Buku; 
	END //
DELIMITER; 


CALL BUKU3 ('B001', 'Belajar SQL Dasar', 'Ahmad Yani');

SOAL5
DELIMITER // 
CREATE PROCEDURE PETUGAS5(IN ID VARCHAR(100), USERNAME VARCHAR(100), PW VARCHAR(100), NAMA VARCHAR(100) )
	BEGIN
		INSERT INTO petugas
		VALUES (ID, USERNAME, USERNAME, NAMA); 
	END //
DELIMITER;

CALL PETUGAS5 ('P016', 'admin16', 'pass664', 'Alimuddin'); 

SELECT * FROM petugas; 

SOAL6

DROP PROCEDURE IF EXISTS TOTALLAKI2;

DELIMITER //
CREATE PROCEDURE TOTALLAKI2(OUT TOTAL VARCHAR(100))
	BEGIN
		SELECT COUNT(IdAnggota), 
			Nama_Anggota, 
			Angkatan_Anggota, 
			Tempat_Lahir_Anggota, 
			Tanggal_Lahir_Anggota, 
			No_Telp, Jenis_Kelamin, 
			Status_Pinjam  
		AS Jumlah_Anggota_LakiLaki
		FROM anggota
		WHERE Jenis_Kelamin = 'Laki laki';

	END//
DELIMITER ;

CALL TOTALLAKI2(@Total);
SELECT @TOTAL;

SOAL7
DELIMITER //
CREATE PROCEDURE BUKUNYA7(INOUT TOTALE INT)
	BEGIN
		SELECT COUNT(*) INTO TOTALE FROM buku;
	END//
DELIMITER ;

CALL BUKUNYA7(@TOTALE);