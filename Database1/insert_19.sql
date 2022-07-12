--inserting records into staffs table
CREATE SEQUENCE seq_staff
MINVALUE 1
START WITH 1
INCREMENT BY 1
MAXVALUE 5
CYCLE
CACHE 4;

INSERT INTO staffs (staff_id, first_name, last_name, contact_no, date_joined, date_left, work_seniority, monthly_salary)
VALUES (seq_staff.nextval,'Saugat','Pudasaini','9812345678','05 June 1998','','6years','Nrs 25,000');

INSERT INTO staffs (staff_id, first_name, last_name, contact_no, date_joined, date_left, work_seniority, monthly_salary)
VALUES (seq_staff.nextval,'Tshering','Sherpa','9841839410','06 April 2000','','4years','Nrs 18,000');

INSERT INTO staffs (staff_id, first_name, last_name, address, contact_no, date_joined, date_left, work_seniority, monthly_salary)
VALUES (seq_staff.nextval,'Rupesh','Thapa','Bhaktapur','9808327909','06 August 2000','','4 years','Nrs 15,000');

INSERT INTO staffs (staff_id, first_name, last_name, address, contact_no, date_joined, date_left, work_seniority, monthly_salary)
VALUES (seq_staff.nextval,'Gita','Barun','Lalitpur','9813329990','07 January 2001','','3 years','Nrs 10,000');

INSERT INTO staffs (staff_id, first_name, last_name, address, contact_no, date_joined, date_left, work_seniority)
VALUES (seq_staff.nextval,'Puskar','Desar','Bhaktapur','9813269794','07 April 2002','','2 years');



--inserting records into roles table
CREATE SEQUENCE seq_role
MINVALUE 10
START WITH 10
INCREMENT BY 5
MAXVALUE 30
CYCLE
CACHE 4;

INSERT INTO roles (registration_number, role_name)
VALUES (seq_role.nextval,'Managing_Director');

INSERT INTO roles (registration_number, role_name)
VALUES (seq_role.nextval,'Coordinator');

INSERT INTO roles (registration_number, role_name)
VALUES (seq_role.nextval,'Accountant');

INSERT INTO roles (registration_number, role_name)
VALUES (seq_role.nextval,'Receptionist');

INSERT INTO roles (registration_number, role_name)
VALUES (seq_role.nextval,'Assistant');



--inserting records into staff_roles table
INSERT INTO staff_roles (staff_id, registration_number)
VALUES ('1','15');

INSERT INTO staff_roles (staff_id, registration_number)
VALUES ('2','15');

INSERT INTO staff_roles (staff_id, registration_number)
VALUES ('1','20');

INSERT INTO staff_roles (staff_id, registration_number)
VALUES ('3','25');

INSERT INTO staff_roles (staff_id, registration_number)
VALUES ('5','10');



--inserting records into activities table
CREATE SEQUENCE seq_activity
MINVALUE 35
START WITH 35
INCREMENT BY 10
MAXVALUE 75
CYCLE
CACHE 4;

INSERT INTO activities (activity_id, project_name, aim, time, budget)
VALUES (seq_activity.nextval,'MBJCL_HYDROPOWER','To generate 150M of electricity','30years','NRs 20crores');

INSERT INTO activities (activity_id, project_name, aim, time, budget)
VALUES (seq_activity.nextval,'Boudha_Renovation','To fix broken walls','6months','NRs 30lakhs');

INSERT INTO activities (activity_id, project_name, aim, time, budget)
VALUES (seq_activity.nextval,'POKHARA_INTERNATIONAL_AIRPORT','To open second international airport','15years','NRs 20arabs');

INSERT INTO activities (activity_id, project_name, aim, time, budget)
VALUES (seq_activity.nextval,'Mulpani_Cricket_Stadium','To make international level stadium','10years','NRs 1arab');

INSERT INTO activities (activity_id, project_name, aim, time, budget)
VALUES (seq_activity.nextval,'Nijgadh_Fast_Track','To give best means of transportation','4years','NRs 10arabs');



--inserting records into groups table
CREATE SEQUENCE seq_group
MINVALUE 80
START WITH 80
INCREMENT BY 15
MAXVALUE 145
CYCLE
CACHE 4;

INSERT INTO groups (group_number, group_name, staff_id, registration_number, activity_id)
VALUES (seq_group.nextval,'Loyal_Creature','1','30','35');

INSERT INTO groups (group_number, group_name, staff_id, registration_number, activity_id)
VALUES (seq_group.nextval,'EKtara','3','25','55');

INSERT INTO groups (group_number, group_name, staff_id, registration_number, activity_id)
VALUES (seq_group.nextval,'Yonzan_Brothers','2','10','65');

INSERT INTO groups (group_number, group_name, staff_id, registration_number, activity_id)
VALUES (seq_group.nextval,'TC_Creations','2','20','45');

INSERT INTO groups (group_number, group_name, staff_id, registration_number, activity_id)
VALUES (seq_group.nextval,'Tech_Nepal','5','20','55');



--inserting records into stages table
CREATE SEQUENCE seq_stage
MINVALUE 150
START WITH 150
INCREMENT BY 20
MAXVALUE 230
CYCLE
CACHE 4;

INSERT INTO stages (stage_number, task)
VALUES (seq_stage.nextval,'Water dam development');

INSERT INTO stages (stage_number, task)
VALUES (seq_stage.nextval,'Renovating walls');

INSERT INTO stages (stage_number, task)
VALUES (seq_stage.nextval,'Building runways');

INSERT INTO stages (stage_number, task)
VALUES (seq_stage.nextval,'Parapet and pitch development');

INSERT INTO stages (stage_number, task)
VALUES (seq_stage.nextval,'Building tunnels');



--inserting records into plans table
CREATE SEQUENCE seq_plan
MINVALUE 240
START WITH 240
INCREMENT BY 25
MAXVALUE 340
CYCLE
CACHE 4;

INSERT INTO plans (plan_number, start_date, end_date, activity_id, stage_number, plan_name)
VALUES (seq_plan.nextval,'03 January 1998','03 January 2028','45','170','Electicity_Production');

INSERT INTO plans (plan_number, start_date, end_date, activity_id, stage_number, plan_name)
VALUES (seq_plan.nextval,'01 February 2000','01 August 2000','35','190','Preserving_Historical_walls');

INSERT INTO plans (plan_number, start_date, end_date, activity_id, stage_number, plan_name)
VALUES (seq_plan.nextval,'06 March 2005','06 March 2020','55','190','Second_International_Airport');

INSERT INTO plans (plan_number, start_date, end_date, activity_id, stage_number, plan_name)
VALUES (seq_plan.nextval,'10 May 2015','10 May 2025','65','210','International_Cricket_Pitch_Development');

INSERT INTO plans (plan_number, start_date, end_date, activity_id, stage_number, plan_name)
VALUES (seq_plan.nextval,'17 August 2018','10 August 2022','65','150','Highway_Construction');



--inserting records into reviews table
CREATE SEQUENCE seq_review
MINVALUE 350
START WITH 350
INCREMENT BY 30
MAXVALUE 470
CYCLE
CACHE 4;

INSERT INTO reviews (review_id, location, time_spent, group_number, plan_number)
VALUES (seq_review.nextval,'Sindhupalchowk','23years','95','240');

INSERT INTO reviews (review_id, location, time_spent, group_number, plan_number)
VALUES (seq_review.nextval,'Kathmandu','Finished','125','265');

INSERT INTO reviews (review_id, location, time_spent, group_number, plan_number)
VALUES (seq_review.nextval,'Pokhara','Finished','80','265');

INSERT INTO reviews (review_id, location, time_spent, group_number, plan_number)
VALUES (seq_review.nextval,'Kathmandu','6years','80','315');

INSERT INTO reviews (review_id, location, time_spent, group_number, plan_number)
VALUES (seq_review.nextval,'Nijgadh','3years','140','290');



--inserting records into actions table
CREATE SEQUENCE seq_action
MINVALUE 490
START WITH 490
INCREMENT BY 40
MAXVALUE 650
CYCLE
CACHE 4;

INSERT INTO actions (action_number, owner, deadline, review_id)
VALUES (seq_action.nextval,'Loyal_Creature','03 January 2028','350'); 

INSERT INTO actions (action_number, owner, deadline, review_id)
VALUES (seq_action.nextval,'Ektara','01 August 2000','410'); 

INSERT INTO actions (action_number, owner, deadline, review_id)
VALUES (seq_action.nextval,'Yonzan_Brothers','06 March 2020','410'); 

INSERT INTO actions (action_number, owner, deadline, review_id)
VALUES (seq_action.nextval,'TC_Creations','10 May 2025','380'); 

INSERT INTO actions (action_number, owner, deadline,review_id)
VALUES (seq_action.nextval,'Tech_Nepal','10 August 2022','440'); 



--inserting records into costs table
CREATE SEQUENCE seq_cost
MINVALUE 500
START WITH 500
INCREMENT BY 50
MAXVALUE 700
CYCLE
CACHE 4;

INSERT INTO costs (cost_id, price, activity_id)
VALUES (seq_cost.nextval,'Nrs 10crores','45'); 

INSERT INTO costs (cost_id, price, activity_id)
VALUES (seq_cost.nextval,'Nrs 20lakhs','45'); 

INSERT INTO costs (cost_id, price, activity_id)
VALUES (seq_cost.nextval,'Nrs 10arabs','35'); 

INSERT INTO costs (cost_id, price, activity_id)
VALUES (seq_cost.nextval,'Nrs 50crores','65'); 

INSERT INTO costs (cost_id, price, activity_id)
VALUES (seq_cost.nextval,'Nrs 3arabs','75'); 



--inserting records into resources table
CREATE SEQUENCE seq_resource
MINVALUE 600
START WITH 600
INCREMENT BY 100
MAXVALUE 1000
CYCLE
CACHE 4;

INSERT INTO resources (item_number, item_name, description, cost, quality, quantity)
VALUES (seq_resource.nextval,'Turbine','To generate electricty using pressure of water','Nrs 10crores','High','3');

INSERT INTO resources (item_number, item_name, description, cost, quality, quantity)
VALUES (seq_resource.nextval,'Bricks','To make it look like a hositoric walls','Nrs 8lakhs','Excellent','50000');

INSERT INTO resources (item_number, item_name, description, cost, quality, quantity)
VALUES (seq_resource.nextval,'Ground support equipments','Making trackways strong to support the weight of aeroplanes','Nrs 2crores','Excellent','30');

INSERT INTO resources (item_number, item_name, description, cost, quality, quantity)
VALUES (seq_resource.nextval,'Chairs','Keeping chairs on stairs in an attractive ways','Nrs 4crores','Medium','20000');

INSERT INTO resources (item_number, item_name, description, cost, quality, quantity)
VALUES (seq_resource.nextval,'Tunnel Boring Machine','Excavating tunnels for connecting highways','Nrs 10crores','Excellent','10');



--inserting records into activity_resources table
INSERT INTO activity_resources (activity_id, item_number)
VALUES ('75','600');

INSERT INTO activity_resources (activity_id, item_number)
VALUES ('55','1000');

INSERT INTO activity_resources (activity_id, item_number)
VALUES ('65','1000');

INSERT INTO activity_resources (activity_id, item_number)
VALUES ('65','800');

INSERT INTO activity_resources (activity_id, item_number)
VALUES ('45','700');
