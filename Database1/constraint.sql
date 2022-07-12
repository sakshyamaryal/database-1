--altering table companies for constraints
ALTER TABLE companies
	ADD CONSTRAINT PK_companies PRIMARY KEY (company_id)
	MODIFY company_name VARCHAR2(150) NOT NULL
	MODIFY city VARCHAR2(100)
	MODIFY country 	VARCHAR2(100) DEFAULT 'Nepal'
	MODIFY email VARCHAR2(200) NOT NULL
	ADD CONSTRAINT UC_companies UNIQUE (contact_number);



--altering table customers for constraints
ALTER TABLE customers
	ADD CONSTRAINT PK_customers PRIMARY KEY (customer_id)
	MODIFY first_name VARCHAR2(100) NOT NULL
	MODIFY last_name VARCHAR2(100) NOT NULL
	ADD CONSTRAINT UC_customers UNIQUE (contact_number)
	MODIFY email VARCHAR2(200);



--altering table orders for constraints
ALTER TABLE orders
	ADD CONSTRAINT PK_orders PRIMARY KEY (order_id)
	ADD CONSTRAINT FK_customerid
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
	MODIFY  order_type VARCHAR2(50)
	MODIFY order_date DATE NOT NULL
	MODIFY order_description VARCHAR2(500)
	MODIFY  total_amount VARCHAR2(100) NOT NULL;



--altering table products for constraints
ALTER TABLE products
	ADD CONSTRAINT PK_products PRIMARY KEY (product_id)
	MODIFY product_name VARCHAR2(100) NOT NULL
	MODIFY product_type VARCHAR2(50) NOT NULL
	ADD CONSTRAINTS FK_companyid
	FOREIGN KEY (company_id) REFERENCES companies(company_id)
	MODIFY total_cost VARCHAR2(200) NOT NULL
	MODIFY quantity VARCHAR2(50) NOT NULL
	MODIFY product_description(200) NOT NULL;



--altering table order_products for constraints
ALTER TABLE order_products
	ADD CONSTRAINT FK_orderid
	FOREIGN KEY (order_id) REFERENCES orders(order_id)
	ADD CONSTRAINT FK_productid
	FOREIGN KEY (product_id) REFERENCES products(product_id);




--altering table deliveries for constraints
ALTER TABLE deliveries
	ADD CONSTRAINT PK_deliveries PRIMARY KEY (delivery_no)
	ADD CONSTRAINT FK_orderid
	FOREIGN KEY (order_id) REFERENCES orders(order_id)
	ADD CONSTRAINT FK_productid
	FOREIGN KEY (product_id) REFERENCES products(product_id)
	MODIFY delivery_location VARCHAR2(100) NOT NULL
	MODIFY delivery_person VARCHAR2(100) NOT NULL
	MODIFY delivery_date DATE NOT NULL
	MODIFY delivery_charge 	VARCHAR2(100) NOT NULL
	MODIFY total_weight VARCHAR2(100) NOT NULL;