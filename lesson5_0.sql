DROP TABLE IF EXISTS 客戶;


CREATE TABLE IF NOT EXISTS 客戶(
	客戶_id SERIAL ,
	客戶名稱 VARCHAR(255) NOT NULL,
	PRIMARY KEY(客戶_id)
	
);

DROP TABLE IF EXISTS 聯絡人;

CREATE TABLE IF NOT EXISTS 聯絡人
(
	聯絡人_id SERIAL ,
	客戶_id INT,
	聯絡人姓名 VARCHAR(255) NOT NULL,
	電話 VARCHAR(15),
	郵件 VARCHAR(255),
	PRIMARY KEY(聯絡人_id),
	FOREIGN KEY(客戶_id)
	REFERENCES 客戶(客戶_id)
	
);

INSERT INTO 客戶(客戶名稱)
VALUES ('遠傳電信'),
	   ('台灣大車隊'),
       ('台灣大哥大'),
       ('中華電信')
;

INSERT INTO 聯絡人(客戶_id,聯絡人姓名,電話,郵件)
VALUES(1,'Josh Doe' ,'0978142456','ASVB123@GMAIL.COM'),
      (1,'Josh Hung' ,'0978142789','ASVB456@GMAIL.COM'),
      (2,'Jhone Chen' ,'097814321','Chen123@GMAIL.COM');


DELETE FROM 客戶
WHERE 客戶_id = 1 ; --未保持資料一致性，有關連的資料，無法刪除



