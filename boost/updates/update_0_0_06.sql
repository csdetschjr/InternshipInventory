BEGIN;

CREATE TABLE intern_student (
       id INT NOT NULL,
       banner INT NOT NULL UNIQUE,
       first_name VARCHAR NOT NULL,
       middle_name VARCHAR,
       last_name VARCHAR NOT NULL,
       phone VARCHAR NOT NULL,
       email VARCHAR NOT NULL,
       ugrad_major VARCHAR,
       grad_prog VARCHAR, 
       graduated INT NOT NULL,
       PRIMARY KEY(id)
);
-- Below table is loaded with departments after CREATE TABLE statements.
CREATE TABLE intern_department (
       id INT NOT NULL,
       name VARCHAR NOT NULL UNIQUE,
       PRIMARY KEY(id)
);

CREATE TABLE intern_agency (
       id INT NOT NULL,
       name VARCHAR NOT NULL,  
       address VARCHAR NOT NULL,
       phone VARCHAR NOT NULL,
       supervisor_first_name VARCHAR NOT NULL,
       supervisor_last_name VARCHAR NOT NULL,
       supervisor_phone VARCHAR NOT NULL,
       supervisor_email VARCHAR NOT NULL,
       supervisor_fax VARCHAR NOT NULL,
       supervisor_address VARCHAR NOT NULL,
       PRIMARY KEY(id)
);

CREATE TABLE intern_faculty_supervisor (
       id INT NOT NULL,
       first_name VARCHAR NOT NULL,
       last_name VARCHAR NOT NULL,
       phone VARCHAR NOT NULL,
       email VARCHAR NOT NULL,
       department_id INT NOT NULL REFERENCES intern_department(id),
       PRIMARY KEY(id)              
);

-- Term format YYYY# (e.g. 20111 is Spring 2011, 20113 is Fall 2011)
CREATE TABLE intern_internship (
       id INT NOT NULL,
       term INT NOT NULL,
       student_id INT NOT NULL REFERENCES intern_student(id),
       agency_id INT NOT NULL REFERENCES intern_agency(id),
       faculty_supervisor_id INT NOT NULL REFERENCES intern_faculty_supervisor(id),
       department_id INT NOT NULL REFERENCES intern_department(id),
       start_date INT NOT NULL,
       end_date INT NOT NULL,
       credits INT NOT NULL,    
       avg_hours_week INT NOT NULL,
       domestic SMALLINT NOT NULL, 
       internatinoal SMALLINT NOT NULL,
       paid SMALLINT NOT NULL,    
       stipend SMALLINT NOT NULL, 
       unpaid SMALLINT NOT NULL,
       notes TEXT,
       PRIMARY KEY(id)
);

CREATE TABLE intern_document (
    id int NOT NULL,
    internship_id int NOT NULL REFERENCES intern_internship(id),
    document_fc_id int NOT NULL,
    PRIMARY KEY(id)
);



CREATE TABLE intern_admin (
    id INT NOT NULL,
    username VARCHAR NOT NULL,
    PRIMARY KEY (id)
);

-- Departments
INSERT INTO TABLE intern_department VALUES  (1, 'Accounting');
INSERT INTO TABLE intern_department VALUES  (2, 'Anthropology');
INSERT INTO TABLE intern_department VALUES  (3, 'Art');
INSERT INTO TABLE intern_department VALUES  (4, 'Biology');
INSERT INTO TABLE intern_department VALUES  (5, 'Chemistry');
INSERT INTO TABLE intern_department VALUES  (6, 'Communication Sciences & Disorder');
INSERT INTO TABLE intern_department VALUES  (7, 'Communication');
INSERT INTO TABLE intern_department VALUES  (8, 'Computer Information Systems');
INSERT INTO TABLE intern_department VALUES  (9, 'Computer Science');
INSERT INTO TABLE intern_department VALUES (10, 'Curriculum & Instruction');
INSERT INTO TABLE intern_department VALUES (11, 'Economics');
INSERT INTO TABLE intern_department VALUES (12, 'Educational Leadership');
INSERT INTO TABLE intern_department VALUES (13, 'English');
INSERT INTO TABLE intern_department VALUES (14, 'Family Languages & Literatures');
INSERT INTO TABLE intern_department VALUES (15, 'Finance and Banking & Insurance');
INSERT INTO TABLE intern_department VALUES (16, 'Foreign Languages & Literatures');
INSERT INTO TABLE intern_department VALUES (17, 'Geography & Planning');
INSERT INTO TABLE intern_department VALUES (18, 'Geology');
INSERT INTO TABLE intern_department VALUES (19, 'Government & Justice Studies');
INSERT INTO TABLE intern_department VALUES (20, 'Health, Leisure & Exercise Science');
INSERT INTO TABLE intern_department VALUES (21, 'History');
INSERT INTO TABLE intern_department VALUES (22, 'Hospitality and Tourism Management');
INSERT INTO TABLE intern_department VALUES (23, 'Human Development & Psychological Counseling');
INSERT INTO TABLE intern_department VALUES (24, 'Language & Educational Studies');
INSERT INTO TABLE intern_department VALUES (25, 'Management');
INSERT INTO TABLE intern_department VALUES (26, 'Marketing');
INSERT INTO TABLE intern_department VALUES (27, 'Mathematical Sciences');
INSERT INTO TABLE intern_department VALUES (28, 'Military Science & Leadership');
INSERT INTO TABLE intern_department VALUES (29, 'Music');
INSERT INTO TABLE intern_department VALUES (30, 'Nursing');
INSERT INTO TABLE intern_department VALUES (31, 'Nutrition & Health Care Management');
INSERT INTO TABLE intern_department VALUES (32, 'Philosophy & Religion');
INSERT INTO TABLE intern_department VALUES (33, 'Physics & Astronomy');
INSERT INTO TABLE intern_department VALUES (34, 'Psychology');
INSERT INTO TABLE intern_department VALUES (35, 'Social Work');
INSERT INTO TABLE intern_department VALUES (36, 'Sociology');
INSERT INTO TABLE intern_department VALUES (37, 'Technology');
INSERT INTO TABLE intern_department VALUES (38, 'Theatre and Dance');
INSERT INTO TABLE intern_department VALUES (39, 'University College');
-- End departments

COMMIT;
