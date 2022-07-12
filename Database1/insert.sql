--to insert records into companies table
CREATE SEQUENCE seq_company
MINVALUE 1 
START WITH 1
INCREMENT BY 1
MAXVALUE 5
CYCLE
CACHE 4;

INSERT INTO companies(company_id, company_name, address, contact_no, email)
VALUES (seq_company.nextval , 'KrishnaPauroti' , 'kathmandu' , '4877656' , 'krishna.pauroti@gmail.com');

INSERT INTO companies(company_id, company_name, address, contact_no, email)
VALUES (seq_company.nextval , 'HulasMotors' , 'Biratnagar' , '4762678' , 'hulasmotors@yahoo.com');

INSERT INTO companies(company_id, company_name, address, contact_no, email)
VALUES (seq_company.nextval  , 'DishHome' , 'kathmandu' , '4186245' , 'dishhome@dnet.com');

INSERT INTO companies(company_id, company_name, address, contact_no, email)
VALUES (seq_company.nextval  , 'BhatbhateniSupermarket' , 'kathmandu' , '4145435' , 'bbsm2068@hotmail.com');

INSERT INTO companies(company_id, company_name, address, contact_no, email)
VALUES (seq_company.nextval  , 'BajekoSekuwa' , 'kathmandu' , '4145238' , 'bajekosekuwa241@outlook.com');


--to insert records into customers table
CREATE SEQUENCE seq_customer
MINVALUE 10
START WITH 10
INCREMENT BY 5
MAXVALUE 30
CYCLE
CACHE 4;


INSERT INTO customers(customer_id, first_name, last_name, address, contact_number)
VALUES (seq_customer.nextval , 'Rajiv' , 'Budathoki' , 'Chabahil' , '9813426754');


INSERT INTO customers(customer_id, first_name, last_name, address, contact_number)
VALUES (seq_customer.nextval , 'Jiwan' , 'Neupane' , 'Bauddha' , '9826145428');

INSERT INTO customers(customer_id, first_name, last_name, address, contact_number)
VALUES (seq_customer.nextval  , 'Hari' , 'Timilsina' , 'Chabahil' , '9865123142'); 


INSERT INTO customers(customer_id, first_name, last_name, address, contact_number)
VALUES (seq_customer.nextval  , 'Shyam' , 'Gautam' , 'Kapan' , '9865132415');

INSERT INTO customers(customer_id, first_name, last_name, address, contact_number)
VALUES (seq_customer.nextval  , 'Nisha' , 'Adhikari' , 'Balaju' , '9876141327');



--to insert records into orders table
CREATE SEQUENCE seq_order
MINVALUE 35
START WITH 35
INCREMENT BY 10
MAXVALUE 75
CYCLE
CACHE 4;


INSERT INTO orders(order_id, dates, totals, customer_id)
VALUES (seq_order.nextval , '01 May 2021' , 'rs. 8000','15');

INSERT INTO orders(order_id, dates, totals, customer_id)
VALUES (seq_order.nextval , '18 June 2021' , 'rs. 4500','25');

INSERT INTO orders(order_id, dates, totals, customer_id)
VALUES (seq_order.nextval , '27 August 2021' , 'rs. 7140','25');

INSERT INTO orders(order_id, dates, totals, customer_id)
VALUES (seq_order.nextval , '05 September 2021' , 'rs. 12400','30'); 

INSERT INTO orders(order_id, dates, totals, customer_id)
VALUES (seq_order.nextval , '09 September 2021' , 'rs. 6000','10');



--to insert records into products table
CREATE SEQUENCE seq_product
MINVALUE 50
START WITH 50
INCREMENT BY 15
MAXVALUE 700
CYCLE
CACHE 4;

INSERT INTO products (product_id, product_name, description, costs, quantity, company_id)
VALUES (seq_product.nextval, 'BrownBread' , 'freshly prepared brown bread' , 'rs 7500' , '75pcs' , '2');  


INSERT INTO products (product_id, product_name, description, costs, quantity, company_id)
VALUES (seq_product.nextval , '1HP motor' , '4 copper pole single phase motor' , 'rs 3000' , '1pcs' , '3');


INSERT INTO products (product_id, product_name, description, costs, quantity, company_id)
VALUES (seq_product.nextval , 'seutup box' , 'dish home set up box for connection' , 'rs 6350' , '24pcs' , '5');


INSERT INTO products (product_id, product_name, description, costs, quantity, company_id)
VALUES (seq_product.nextval , 'toilet papers' , 'double layer toilet paper' , 'rs 11000' , '500packet' , '4');


INSERT INTO products (product_id, product_name, description, costs, quantity, company_id)
VALUES (seq_product.nextval , 'mutton sekuwa' , 'freshly made khasiko sekuwa' , 'rs 5000' , '80plates', '5');




--to insert records into order_products
INSERT INTO order_products (order_id, product_id)
VALUES ('35' , '65');

INSERT INTO order_products (order_id, product_id)
VALUES ('55' , '95');

INSERT INTO order_products (order_id, product_id)
VALUES ('65' , '110');

INSERT INTO order_products (order_id, product_id)
VALUES ('65' , '50');

INSERT INTO order_products (order_id, product_id)
VALUES ('75' , '110');



--to insert records into deliveries 
CREATE SEQUENCE seq_delivery
MINVALUE 150
START WITH 150
INCREMENT BY 20
MAXVALUE 500
CYCLE
CACHE 4;

INSERT INTO deliveries (delivery_number, descriptions, delivery_charge, order_date, order_id, product_id)
VALUES (seq_delivery.nextval , 'require immediately' , 'rs 500' , '01 May 2021' , '55' , '50');

INSERT INTO deliveries (delivery_number, descriptions, delivery_charge, order_date, order_id, product_id)
VALUES (seq_delivery.nextval , 'normal purchase' , 'rs 1500' , '20 June 2021' , '75' , '110');

INSERT INTO deliveries (delivery_number, descriptions, delivery_charge, order_date, order_id, product_id)
VALUES (seq_delivery.nextval , 'normal purchase' , 'rs 755' , '28 August 2021' , '35', '95');

INSERT INTO deliveries (delivery_number, descriptions, delivery_charge, order_date, order_id, product_id)
VALUES (seq_delivery.nextval , 'require immediately' , 'rs 1500' , '06 September 2021' , '65' , '65');

INSERT INTO deliveries (delivery_number, descriptions, delivery_charge, order_date, order_id, product_id)
VALUES (seq_delivery.nextval , 'normal purchase' , 'rs 1000', '09 September 2021' , '75' , '95'); 









