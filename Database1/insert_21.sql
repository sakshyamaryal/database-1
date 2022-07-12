INSERT INTO staff (staff_id, first_name, last_name, addresss, email, date_of_birth, contact_number, work_senority, date_joined, date_left)
VALUES 
(0324, "John", "Creg", "France", "john.creg45@gmail.com","1976-04-11",124356743, "staffManager", "2017-01-23","2019-09-17"),
(0344, "Ram", "Patel", "India", "patel56@hotmail.com","1974-01-13",9123178987765, "DeputyManager", "2019-04-28", "current"),
(0264, "Peter", "Aers", "Slovakia", "aerapeter_21@gmail.com","1986-09-27",7654215767817, "AssistatCEO", "2016-11-05","2020-09-19"),
(0544, "Aishworya", "Regmi", "Nepal", "regmi007@protonmail.com","1988-11-01",9876524567, "MarketingStaff", "2012-09-26","2019-05-18"),
(1854, "David", "Smith", "England", "davidsmith@workspace.com","1973-06-16",86624762, "BranchManager", "2018-11-13","2015-09-27")
;


INSERT INTO roles (registration_number, role_type)
VALUES 
(654798, "Finance"),
(525682, "Finance"),
(982526, "BoardOfDirectors"),
(215342, "Marketing"),
(762479, "Finance")
;


INSERT INTO staff_role (registration_number, staff_id)
VALUES 
(654798, 0324),
(525682, 0344),
(982526, 0264),
(215342, 0544),
(762479, 1854)
;


INSERT INTO activity (activity_id, department, time_table, project_name, budget_inUSD)
VALUES 
(1220, "Purchasing", "8AM-6PM", "Ligo-6", 5000),
(3205, "RnD", "8AM-6PM", "PensionTime", 2000),
(4557, "HumanResourceManagement", "10AM-1PM", "Research for effective manpower", 15000),
(1224, "Marketing", "9AM-5PM", "Door-to-Door", 6000),
(9187, "Purchasing", "8AM-6PM", "Customerservice", 2500)
;


INSERT INTO groups_involved (registration_number, activity_id)
VALUES 
(654798, 1220),
(525682, 3205),
(982526, 4557),
(215342, 1224),
(762479, 9187)
;


INSERT INTO resources_given (item_number, item_name, quality, quantity, cost, detail)
VALUES 
(002143, "printers", "new", 1, 3268, "newly bought printer for office usage"),
(002113, "stationary", "new", 560, 8, a4, "pen, pencil, markers"),
(003213, "sanitizer", "new", 5,130, "for health purpose"),
(005333, "flyers", "new", 1000, 4000, "printed flyers, leaflets"),
(008763, "sofa", "new", 1, 1200, "for office usage")
;


INSERT INTO activity_resource (item_number, activity_id)
VALUES 
(002143, 1220),
(002113, 3205),
(003213, 4557),
(005333, 1224),
(008763, 9187)
;


INSERT INTO cost_list (activity_id, cost_id, budget)
VALUES 
(1220, 0321, 2000),
(3205, 0321, 4500),
(4557, 0321, 5000),
(1224, 0321, 9000),
(9187, 0321, 3400)
;


INSERT INTO stage (stage_id, task)
VALUES 
(557, "OverlookingFinance"),
(908, "CostControl"),
(541, "BoardMeetings"), 
(665, "DoorToDoorSales"), 
(713, "Budgeting")
;


INSERT INTO plans (activity_id, stage_id)
VALUES 
(1220, 557),
(3205, 908),
(4557, 541),
(1224, 665),
(9187, 713)
;


INSERT INTO review (group_member, plan_id)
VALUES 
(004455, 12),
(013366, 99),
(025572, 4),
(036688, 74),
(045699, 69)
;


INSERT INTO action_required (action_number, review_id)
VALUES
(00056, 101),
(00014, 102),
(00079, 103),
(00051, 104),
(00099, 105)
;













