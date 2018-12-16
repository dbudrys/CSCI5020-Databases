INSERT INTO members 
VALUES (1, 'John', 'Doe', '123 College', 'Clarksville', 'TN', '5552221234');
INSERT INTO members 
VALUES (2, 'Jane', 'Smith', '312 University', 'Nashville', 'TN', '5554444321');


INSERT INTO groups
VALUES (1, 'Coldplay');
INSERT INTO groups
VALUES (2, 'AC/DC');


INSERT INTO members_groups
VALUES(1, 2);
INSERT INTO members_groups
VALUES(2, 1);
INSERT INTO members_groups
VALUES(2, 2);


SELECT g.group_name, m.last_name, m.first_name
FROM members m 
JOIN members_groups mg
    ON m.member_id = mg.member_id
JOIN groups g
    ON mg.group_id = g.group_id;
