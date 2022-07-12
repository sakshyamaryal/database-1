--altering table staffs for constraints
ALTER TABLE staffs
	ADD CONSTRAINT PK_staffs PRIMARY KEY (staff_id)
	MODIFY first_name VARCHAR2(100) NOT NULL
	MODIFY last_name VARCHAR2(100) NOT NULL
	MODIFY address VARCHAR2(150) DEFAULT 'Kathmandu'
	ADD CONSTRAINT UC_staffs UNIQUE (contact_no)
	MODIFY date_joined DATE NOT NULL
	MODIFY work_seniority VARCHAR2(50) NOT NULL
	MODIFY monthly_salary VARCHAR2(100) DEFAULT 'NRS 5,000';
	
--altering table roles for constraints
ALTER TABLE roles
	ADD CONSTRAINT PK_roles PRIMARY KEY (registration_number)
	MODIFY role_name VARCHAR2(100) NOT NULL;
	
--altering table staffs_roles for constraints
ALTER TABLE staff_roles
	ADD CONSTRAINT FK_StaffRoles
	FOREIGN KEY (staff_id) REFERENCES staffs(staff_id)
	ADD CONSTRAINT FK_RoleStaffs
	FOREIGN KEY (registration_number) REFERENCES roles(registration_number);

--altering table activities for constraints
ALTER TABLE activities
	ADD CONSTRAINT PK_activities PRIMARY KEY (activity_id)
	MODIFY project_name VARCHAR2(100) NOT NULL
	MODIFY aim VARCHAR2(150) NOT NULL
	MODIFY time VARCHAR2(80) NOT NULL
	MODIFY budget VARCHAR2(100) NOT NULL;
	
--altering table groups for constraints
ALTER TABLE groups
	ADD CONSTRAINT PK_groups PRIMARY KEY (group_number)
	MODIFY group_name VARCHAR2(100) NOT NULL
	ADD CONSTRAINT FK_groups1
	FOREIGN KEY (staff_id) REFERENCES staffs(staff_id)
	ADD CONSTRAINT FK_groups
	FOREIGN KEY (registration_number) REFERENCES roles(registration_number)
	ADD CONSTRAINT FK_groups2
	FOREIGN KEY (activity_id) REFERENCES activities(activity_id);

--altering table stages for constraints
ALTER TABLE stages
	ADD CONSTRAINT PK_stages PRIMARY KEY (stage_number)
	MODIFY task VARCHAR2(100) NOT NULL;

--altering table plans for plans
ALTER TABLE plans
	ADD CONSTRAINT PK_plans PRIMARY KEY (plan_number)
	ADD plan_name VARCHAR2(100) NOT NULL
	MODIFY start_date DATE NOT NULL
	MODIFY end_date DATE NOT NULL
	ADD CONSTRAINT FK_plans
	FOREIGN KEY (activity_id) REFERENCES activities(activity_id)
	ADD CONSTRAINT FK_plans1
	FOREIGN KEY (stage_number) REFERENCES stages(stage_number);

--altering table reviews for constraints
ALTER TABLE reviews
	ADD CONSTRAINT PK_reviews PRIMARY KEY (review_id)
	MODIFY location VARCHAR2(150) NOT NULL
	MODIFY time_spent VARCHAR2(50) NOT NULL
	ADD CONSTRAINT FK_reviews 
	FOREIGN KEY (group_number) REFERENCES groups(group_number)
	ADD CONSTRAINT FK_reviews1
	FOREIGN KEY (plan_number) REFERENCES plans(plan_number);

--altering table actions for constraints
ALTER TABLE actions
	ADD CONSTRAINT PK_actions PRIMARY KEY (action_number)
	MODIFY owner VARCHAR2(100) NOT NULL
	MODIFY deadline DATE NOT NULL
	ADD CONSTRAINT FK_actions
	FOREIGN KEY (review_id) REFERENCES reviews(review_id);

--altering table costs for constraints
ALTER TABLE costs
	ADD CONSTRAINT PK_costs PRIMARY KEY (cost_id)
	MODIFY price VARCHAR2(300) NOT NULL
	ADD CONSTRAINT FK_costs
	FOREIGN KEY (activity_id) REFERENCES activities(activity_id);

--altering table resources for constraints
ALTER TABLE resources
	ADD CONSTRAINT PK_resources PRIMARY KEY (item_number)
	MODIFY item_name VARCHAR2(100) NOT NULL
	MODIFY description VARCHAR2(500) NOT NULL
	MODIFY cost VARCHAR2(100) NOT NULL
	MODIFY quality VARCHAR2(50) NOT NULL
	MODIFY quantity NUMBER(38) NOT NULL;	

--altering table activity_resources for constraints
ALTER TABLE activity_resources
	ADD CONSTRAINT FK_ActiviyResources
	FOREIGN KEY (activity_id) REFERENCES activities(activity_id)
	ADD CONSTRAINT FK_ResourcesActiviy
	FOREIGN KEY (item_number) REFERENCES resources(item_number);