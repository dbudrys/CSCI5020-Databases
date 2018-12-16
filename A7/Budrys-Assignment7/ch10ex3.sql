CREATE TABLE members 
(
    member_id NUMERIC(25),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    phone VARCHAR(255), 
    
    CONSTRAINT membersPK PRIMARY KEY (member_id)
);

CREATE TABLE groups 
(
    group_id NUMERIC(25),
    group_name VARCHAR(255),
    
    CONSTRAINT groupsPK PRIMARY KEY (group_id)
);

CREATE TABLE members_groups
(
    member_id NUMERIC(25),
    group_id NUMERIC(25),
    
    CONSTRAINT memberFK FOREIGN KEY(member_id)
        REFERENCES members(member_id),
        
    CONSTRAINT groupsFK FOREIGN KEY(group_id)
        REFERENCES groups(group_id)
);