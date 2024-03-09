DROP TABLE IF EXISTS stations;
DROP TABLE IF EXISTS gate_count;

CREATE TABLE IF NOT EXISTS stations(
	編號 INT PRIMARY KEY,
	名稱 VARCHAR(20) NOT NULL,
	英文名稱 VARCHAR(50),
	地名 VARCHAR(20),
	英文地名 VARCHAR(50),
	地址 VARCHAR(255),
	英文地址 VARCHAR(255),
	電話 VARCHAR(20),
	gps VARCHAR(50),
	youbike BOOL
);

SELECT COUNT(*) AS 筆數
FROM stations


DROP TABLE IF EXISTS gate_count ;
	
CREATE TABLE IF NOT EXISTS gate_count(
	id SERIAL ,
	日期 DATE NOT NULL,
	站點編號 INT,
	進站人數 INT DEFAULT 0 ,
	出站人數 INT DEFAULT 0 ,
	PRIMARY KEY(id),
	FOREIGN KEY(站點編號)
	REFERENCES stations(編號)
	ON DELETE SET NULL
	ON UPDATE CASCADE
);


SELECT COUNT(*) AS 筆數
FROM gate_count

;

SELECT *
FROM stations A 
LEFT JOIN gate_count B 
ON A.編號 =B.站點編號

;
	
/*將兩張表合併*/
SELECT 日期,進站人數,出站人數,名稱,地名,地址,YOUBIKE
FROM gate_count A 
LEFT JOIN  stations B 
ON A.站點編號 =B.編號
	
/*找出基隆市有哪些火車站*/	
SELECT DISTINCT 名稱
FROM gate_count A 
LEFT JOIN  stations B 
ON A.站點編號 =B.編號
WHERE 地址 LIKE '基隆市%'


/*找出基隆市2022年3月1日資料*/	
SELECT 日期,進站人數,出站人數,名稱,地名,地址,YOUBIKE
FROM gate_count A 
LEFT JOIN  stations B 
ON A.站點編號 =B.編號
WHERE 地址 LIKE '基隆市%'
AND  日期 = '2022-03-01'



/*找出基隆市2022年3月1日資料*/	
SELECT 日期,進站人數,出站人數,名稱,地名,地址,YOUBIKE
FROM gate_count A 
LEFT JOIN  stations B 
ON A.站點編號 =B.編號
WHERE 名稱 = '基隆'
AND  日期 = '2022-03-01'

/*找出基隆火車站2022年3月份資料，時間由小到大*/	
SELECT 日期,進站人數,出站人數,名稱,地名,地址,YOUBIKE
FROM gate_count A 
LEFT JOIN  stations B 
ON A.站點編號 =B.編號
WHERE 名稱 = '基隆'
AND  日期 BETWEEN '2022-03-01' AND '2022-03-31'
ORDER BY 日期 
;	

SELECT *
FROM stations