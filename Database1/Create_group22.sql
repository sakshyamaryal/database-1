CREATE TABLE companies(
	company_id NUMBER(5),
	company_name VARCHAR2(50),
	address VARCHAR2(50),
	email VARCHAR2(50),
	telephone VARCHAR2(20) NOT NULL,
    total_employee NUMBER(5) NOT NULL

);

CREATE TABLE products(
	product_id NUMBER(5),
	company_id NUMBER(5),
	price NUMBER(10),
	Product_detail VARCHAR2(50),
	vendor VARCHAR2(50)	
);	

CREATE TABLE customers(
	customer_id NUMBER(5),
	f_name VARCHAR2(50),
	L_name VARCHAR2(50),
	email VARCHAR2(50),
	mobile VARCHAR2(50),
	address VARCHAR2(50),
	city VARCHAR2(50)
);

CREATE TABLE orders(
	order_id NUMBER(5),
	customer_id NUMBER(5),
	order_date date,
	required_date date,
	shipped_date date,
	comments VARCHAR2(50)
);

CREATE TABLE order_items(
	o_id NUMBER(5),
	order_id NUMBER(5),
	product_id NUMBER(5),
	quantity NUMBER(5),
	each_price NUMBER(5)
);

CREATE TABLE deleveies(
	delevery_id NUMBER(5),
	o_id NUMBER(5),
	delevery_location VARCHAR2(50),
	deliveredItem VARCHAR2(50)
);