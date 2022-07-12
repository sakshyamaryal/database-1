--creating table staffs
CREATE TABLE staffs (
	staff_id NUMBER(5),
	first_name VARCHAR2(100),
	last_name VARCHAR2(100),
	address VARCHAR2(150),
	contact_no VARCHAR2(20),
	date_joined DATE,
	date_left DATE,
	work_seniority VARCHAR2(50),
	monthly_salary VARCHAR2(100)
	);

--creating table roles
CREATE TABLE roles (
	registration_number NUMBER(5),
	role_name VARCHAR2(100)
	);

--creating table staff_roles
CREATE TABLE staff_roles (
	staff_id NUMBER(5),
	registration_number NUMBER(5)
	);

--creating table activities
CREATE TABLE activities (
	activity_id NUMBER(5),
	project_name VARCHAR2(100),
	aim VARCHAR2(150),
	time VARCHAR2(80),
	budget VARCHAR2(100)
	);

--creating table groups
CREATE TABLE groups (
	group_number NUMBER(5),
	group_name VARCHAR2(100),
	staff_id NUMBER(5),
	registration_number NUMBER(5),
	activity_id NUMBER(5)
	);

--creating table stages
CREATE TABLE stages (
	stage_number NUMBER(5),
	task VARCHAR2(100)
	);

--creating table plans
CREATE TABLE plans (
	plan_number NUMBER(5),
	start_date DATE,
	end_date DATE,
	activity_id NUMBER(5),
	stage_number NUMBER(5)
	);

--creating table reviews
CREATE TABLE reviews (
	review_id NUMBER(5),
	location VARCHAR2(150),
	time_spent VARCHAR2(50),
	group_number NUMBER(5),
	plan_number NUMBER(5)
	);

--creating table actions
CREATE TABLE actions (
	action_number NUMBER(5),
	owner VARCHAR2(100),
	deadline DATE,
	review_id NUMBER(5)
	);

--creating table costs
CREATE TABLE costs (
	cost_id NUMBER(5),
	price VARCHAR2(300),
	activity_id NUMBER(5)
	);

--creating table resources
CREATE TABLE resources (
	item_number NUMBER(5),
	item_name VARCHAR2(100),
	description VARCHAR2(500),
	cost VARCHAR2(100),
	quality VARCHAR2(50),
	quantity NUMBER(38)
	);

--creating table activity_resources
CREATE TABLE activity_resources (
	activity_id NUMBER(5),
	item_number NUMBER(5)
	);