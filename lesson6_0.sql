/*找出PAYMENT 所有客戶 CUSTOMER_ID (不重覆)*/

SELECT customer_id ,COUNT(*) AS 筆數
FROM payment
group by customer_id




/*取出PAYMENT 所有客戶的應收帳款總和,SUM()*/

SELECT (b.first_name || ' ' || b.last_name) as full_name
	/*b.first_name,b.last_name */
	, SUM(a.amount) AS 應收帳款總和
FROM payment a
LEFT JOIN customer b
using (customer_id)
--on a.customer_id = b.customer_id
group by full_name --b.first_name,b.last_name
HAVING SUM(a.amount) >= 200
order by 應收帳款總和 DESC

