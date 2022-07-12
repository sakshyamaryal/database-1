ALTER TABLE staff_role
ADD CONSTRAINT staffs_id
FOREIGN KEY(staff_id) REFERENCES staff(staff_id);

ALTER TABLE staff_role
ADD CONSTRAINT reg_no
FOREIGN KEY(registration_number) REFERENCES roles(registration_number);

ALTER TABLE groups_involved
ADD CONSTRAINT reg_no
FOREIGN KEY(registration_no) REFERENCES activity(registration_no);

ALTER TABLE groups_involved
ADD CONSTRAINT activityid
FOREIGN KEY(activity_id) REFERENCES activity(activity_id);

ALTER TABLE activity_resource
ADD CONSTRAINT itemno
FOREIGN KEY(item_number) REFERENCES resources_given(item_number);

ALTER TABLE activity_resource
ADD CONSTRAINT actid
FOREIGN KEY(activity_id) REFERENCES groups_involved(activity_id);

ALTER TABLE cost_list
ADD CONSTRAINT costs
FOREIGN KEY(cost) REFERENCES resources_given(cost);

ALTER TABLE plans
ADD CONSTRAINT actid
FOREIGN KEY(activity_id) REFERENCES activity_rresource;

ALTER TABLE plans
ADD CONSTRAINT stg
FOREIGN KEY(stage_id) REFERENCES stage(stage_id);

ALTER TABLE review
ADD CONSTRAINT gropno
FOREIGN KEY (group_number) REFERENCES review(group_number);

ALTER TABLE review
ADD CONSTRAINT planid
FOREIGN KEY(plan_id) REFERENCES review(plan_id);

ALTER TABLE action_required
ADD CONSTRAINT review
FOREIGN KEY(review_id) REFERENCES action_required(review_id);


