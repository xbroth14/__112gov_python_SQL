
SELECT *
FROM gate_count
left join stations
on 站點編號 = 編號
WHERE 進站人數 = (
	SELECT MAX(進站人數)
	FROM gate_count
)


/*各站點進站人數最多的一筆*/
SELECT 站點編號,名稱,MAX(進站人數)
FROM gate_count
left join stations
on 站點編號 = 編號
GROUP BY 站點編號 , 名稱 
ORDER BY 站點編號 ;


SELECT 站點編號,名稱,進站人數
FROM(

	SELECT 站點編號,名稱,MAX(進站人數) AS 進站人數
FROM gate_count
left join stations
on 站點編號 = 編號
GROUP BY 站點編號 , 名稱 
ORDER BY 站點編號 

)
GROUP BY 站點編號,名稱,進站人數
HAVING COUNT(*) >=2

SELECT 站點編號,名稱,進站人數
FROM
	(
	SELECT 站點編號,名稱,進站人數
	FROM gate_count
	left join stations
	on 站點編號 = 編號
	WHERE (站點編號,名稱,進站人數) IN (
			SELECT 站點編號,名稱,MAX(進站人數)
		    FROM gate_count
			GROUP BY 站點編號	
	)
)
	GROUP BY 站點編號,名稱,進站人數
HAVING COUNT(*) >=2

