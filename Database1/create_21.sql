
CREATE TABLE staff(
  staff_id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  addresss VARCHAR(100) NOT NULL,
  email VARCHAR(50) UNIQUE,
  date_of_birth DATE,
  contact_number VARCHAR(15),
  work_senority VARCHAR(50),
  date_joined DATE,
  date_left DATE
);

CREATE TABLE roles(
  registration_number INT PRIMARY KEY,
  role_type VARCHAR(50) NOT NULL
);
  
CREATE TABLE staff_role(
  registration_number INT PRIMARY KEY,
  staff_id INT
);  
  
CREATE TABLE activity(
  activity_id INT PRIMARY KEY,
  department VARCHAR(50) NOT NULL,
  time_table VARCHAR(20) NOT NULL,
  project_name VARCHAR(100),
  budget INT NOT NULL
);
  
CREATE TABLE groups_involved(
  registration_number INT PRIMARY KEY,
  activity_id INT
);  
  
CREATE TABLE resources_given(
  item_number INT PRIMARY KEY,
  item_name VARCHAR(50) NOT NULL,
  quality VARCHAR(20) NOT NULL,
  quantity INT NOT NULL,
  cost INT NOT NULL,
  detail VARCHAR(100) NOT NULL
);  
  
CREATE TABLE activity_resource(
  item_number int primary key,
  activity_id int
);
  
CREATE TABLE cost_list(
  activity_id INT PRIMARY KEY,
  cost_id INT,
  budge_inUSD INT NOT NULL
);
  
CREATE TABLE stage(
 stage_id INT PRIMARY KEY,
 task VARCHAR(50) NOT NULL
);
 
CREATE TABLE plans(
 activity_id INT PRIMARY KEY,
 stage_id INT
);
 
CREATE TABLE review(
 group_number INT PRIMARY KEY,
 plan_id INT
);
 
CREATE TABLE action_required(
 action_number INT PRIMARY KEY,
 review_id INT
);
 
  