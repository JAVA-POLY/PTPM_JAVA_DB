CREATE DATABASE PTPM_JAVA_SQLSERVER
GO
USE PTPM_JAVA_SQLSERVER

GO 
CREATE TABLE chuyen_nganh
(
	id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID() NOT NULL,
	ma_chuyen_nganh VARCHAR(100) NULL,
	ten NVARCHAR(100) NULL
)
GO
CREATE TABLE lop
(
	id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID() NOT NULL,
	ma_lop VARCHAR(100) NULL,
	ten_lop NVARCHAR(100) NULL,
	so_luong_sv BIGINT NULL
)
GO
CREATE TABLE sinh_vien 
(
	id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID() NOT NULL,
	chuyen_nganh_id UNIQUEIDENTIFIER NULL,
	ma_sinh_vien VARCHAR(100) NULL,
	ten NVARCHAR(100) NULL,
	gioi_tinh BIT NULL,
	email VARCHAR(100) NULL
)
GO

ALTER TABLE dbo.sinh_vien ADD CONSTRAINT fk_chuyen_nganh
FOREIGN KEY (chuyen_nganh_id) REFERENCES chuyen_nganh(id)
ALTER TABLE dbo.sinh_vien_lop ADD CONSTRAINT fk_sinh_vien
FOREIGN KEY (sinh_vien_id) REFERENCES sinh_vien(id)
ALTER TABLE dbo.sinh_vien_lop ADD CONSTRAINT fk_lop
FOREIGN KEY (lop_id) REFERENCES lop(id)

ALTER TABLE PTPM_JAVA_SQLSERVER.dbo.sinh_vien ADD lop_id uniqueidentifier NULL;
ALTER TABLE PTPM_JAVA_SQLSERVER.dbo.sinh_vien ADD CONSTRAINT sinh_vien_FK FOREIGN KEY (lop_id) REFERENCES PTPM_JAVA_SQLSERVER.dbo.lop(id);

INSERT INTO dbo.chuyen_nganh(id, ma_chuyen_nganh, ten) VALUES
	('c7948e88-2b70-4703-b515-02ba539fe8a1', 'UDPM', N'Ứng dụng phần mềm'),
	('c7948e88-2b70-4703-b515-02ba539fe8a2', 'WEB', N'Thiết kế trang Web'),
	('c7948e88-2b70-4703-b515-02ba539fe8a3', 'MOB', N'Lập trình Android'),
	('c7948e88-2b70-4703-b515-02ba539fe8a4', 'TKDH', N'Thiết kế đồ họa')

INSERT INTO dbo.lop(id, ma_lop, ten_lop, so_luong_sv) VALUES
	('d82f302d-6507-4f07-9c51-94c8c97cdaa6', 'L001', N'IT17301', 35),
	('d82f302d-6507-4f07-9c51-94c8c97cdaa5', 'L002', N'IT17302', 35),
	('d82f302d-6507-4f07-9c51-94c8c97cdaa4', 'L003', N'IT17303', 35),
	('d82f302d-6507-4f07-9c51-94c8c97cdaa3', 'L004', N'IT17304', 35)

INSERT INTO dbo.sinh_vien(id,chuyen_nganh_id , ma_sinh_vien, ten, gioi_tinh, email) VALUES
	('6b3fea5b-a94b-4db5-9f6a-5d8313214281', 'c7948e88-2b70-4703-b515-02ba539fe8a1', 'PH0001', N'Nguyễn Văn A', 1, 'anvph0001@fpt.edu.vn'),
	('6b3fea5b-a94b-4db5-9f6a-5d8313214282', 'c7948e88-2b70-4703-b515-02ba539fe8a1', 'PH0002', N'Nguyễn Văn B', 1, 'bnvph0001@fpt.edu.vn'),
	('6b3fea5b-a94b-4db5-9f6a-5d8313214283', 'c7948e88-2b70-4703-b515-02ba539fe8a2', 'PH0003', N'Nguyễn Văn C', 1, 'vnvph0001@fpt.edu.vn'),
	('6b3fea5b-a94b-4db5-9f6a-5d8313214284', 'c7948e88-2b70-4703-b515-02ba539fe8a2', 'PH0004', N'Nguyễn Văn D', 1, 'dnvph0001@fpt.edu.vn'),
	('6b3fea5b-a94b-4db5-9f6a-5d8313214285', 'c7948e88-2b70-4703-b515-02ba539fe8a1', 'PH0005', N'Nguyễn Văn X', 1, 'xnvph0001@fpt.edu.vn'),
	('6b3fea5b-a94b-4db5-9f6a-5d8313214286', 'c7948e88-2b70-4703-b515-02ba539fe8a3', 'PH0006', N'Nguyễn Văn Y', 1, 'ynvph0001@fpt.edu.vn'),
	('6b3fea5b-a94b-4db5-9f6a-5d8313214287', 'c7948e88-2b70-4703-b515-02ba539fe8a3', 'PH0007', N'Nguyễn Văn Z', 1, 'znvph0001@fpt.edu.vn'),
	('6b3fea5b-a94b-4db5-9f6a-5d8313214288', 'c7948e88-2b70-4703-b515-02ba539fe8a4', 'PH0008', N'Nguyễn Văn E', 1, 'envph0001@fpt.edu.vn'),
	('6b3fea5b-a94b-4db5-9f6a-5d8313214289', 'c7948e88-2b70-4703-b515-02ba539fe8a4', 'PH0009', N'Nguyễn Văn K', 1, 'knvph0001@fpt.edu.vn'),
	('6b3fea5b-a94b-4db5-9f6a-5d8313214210', 'c7948e88-2b70-4703-b515-02ba539fe8a2', 'PH0010', N'Nguyễn Văn I', 1, 'invph0001@fpt.edu.vn')
