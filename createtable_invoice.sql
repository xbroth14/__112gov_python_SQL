CREATE TABLE IF NOT EXISTS  invoices
(
      invoiceid            SERIAL  PRIMARY KEY
	, customerid           INT
	, invoicedate          TIMESTAMP
	, billingaddress       VARCHAR(200)
	, billingcity          VARCHAR(200)
	, billingstate         VARCHAR(200)
	, billingcountry       VARCHAR(200)
	, billingpostalcode    VARCHAR(200)
	, total                FLOAT
);

SELECT  * FROM invoices  limit 100 ;
