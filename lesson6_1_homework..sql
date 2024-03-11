/*- 全省各站點2022年進站總人數*/
SELECT DATE_PART('year',日期) AS 年份,名稱,sum(進站人數) AS 進站總人數
FROM gate_count A 
LEFT JOIN  stations B 
ON A.站點編號 = B.編號
WHERE 日期 BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY 年份,名稱
ORDER BY 進站總人數 DESC
;	

/*- 全省各站點2022年進站總人數大於5佰萬人的站點*/
	
SELECT 名稱,sum(進站人數) AS 進站總人數
FROM gate_count A 
LEFT JOIN  stations B 
ON A.站點編號 =B.編號
WHERE 日期 BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY 名稱
HAVING sum(進站人數) >= 5000000
ORDER BY 進站總人數 
;	

/*- 基隆火車站2020年,每月份進站人數*/
SELECT 名稱,EXTRACT(MONTH FROM 日期 :: DATE ) AS 月份,sum(進站人數) AS 進站總人數
FROM gate_count A 
LEFT JOIN  stations B 
ON A.站點編號 =B.編號
WHERE 名稱 = '基隆' 
  AND 日期 BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY 名稱 ,月份
ORDER BY 月份
;	

/*- 基隆火車站2020年,每月份進站人數,由多至少*/

SELECT 名稱,EXTRACT(MONTH FROM 日期 :: DATE ) AS 月份,sum(進站人數) AS 進站總人數
FROM gate_count A 
LEFT JOIN  stations B 
ON A.站點編號 =B.編號
WHERE 名稱 = '基隆' 
  AND 日期 BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY 名稱 ,月份
ORDER BY 進站總人數 DESC
;	

/*- 基隆火車站2020,2021,2022,每年進站人數*/

SELECT 名稱,EXTRACT(YEAR FROM 日期 :: DATE ) AS 年份,sum(進站人數) AS 進站總人數
FROM gate_count A 
LEFT JOIN  stations B 
ON A.站點編號 =B.編號
WHERE 名稱 = '基隆' 
  AND 日期 BETWEEN '2020-01-01' AND '2022-12-31'
GROUP BY 名稱 ,年份
ORDER BY 進站總人數 DESC
;	

/*- 基隆火車站,臺北火車站2020,2021,2022,每年進站人數*/

SELECT 名稱,EXTRACT(YEAR FROM 日期 :: DATE ) AS 年份,sum(進站人數) AS 進站總人數
FROM gate_count A 
LEFT JOIN  stations B 
ON A.站點編號 =B.編號
WHERE 名稱 IN ('基隆','臺北' )
  AND 日期 BETWEEN '2020-01-01' AND '2022-12-31'
GROUP BY 名稱 ,年份
ORDER BY 進站總人數 DESC
;	
