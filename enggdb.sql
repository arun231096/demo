CREATE DATABASE sasurie_engg;

USE sasurie_engg;

CREATE TABLE sce_department (
	PRIMARY KEY (dept_id),
	dept_id    INT,
	dept_name VARCHAR(40) NOT NULL,
	dept_type VARCHAR(3)  NOT NULL
);

CREATE TABLE sce_admin (
	PRIMARY KEY (id),
	id         INT         AUTO_INCREMENT,
	dept_id    INT,
	username   VARCHAR(30) NOT NULL,
	`password` VARCHAR(60) NOT NULL,
			   KEY k_deptid (dept_id),
			   CONSTRAINT fk_dept_id 
			   FOREIGN KEY (dept_id) REFERENCES sce_department (dept_id)
);

CREATE TABLE sce_department_details (
	PRIMARY KEY (id),
	id                INT         AUTO_INCREMENT,
	dept_id           INT,
	dept_message      LONGTEXT,
	dept_sub_message1 LONGTEXT,
	dept_sub_message2 LONGTEXT,
	dept_sub_message3 LONGTEXT,
	dept_sub_message4 LONGTEXT,
	dept_sub_message5 LONGTEXT,
	dept_hod_name     VARCHAR(60) NOT NULL,
	dept_hod_address  LONGTEXT    NOT NULL,
					  KEY k_deptid (dept_id),
					  CONSTRAINT fk_dept_details_department
					  FOREIGN KEY (dept_id) REFERENCES sce_department(dept_id)
);

CREATE TABLE sce_faculty_details (
	PRIMARY KEY (id),
	id          INT 		AUTO_INCREMENT,
	dept_id     INT,
	`name`      VARCHAR(50) NOT NULL,
	degree      VARCHAR(50) NOT NULL,
	designation VARCHAR(50) NOT NULL,
				KEY k_faculty_dept (dept_id),
				CONSTRAINT fk_faculty_details_department
				FOREIGN KEY (dept_id) REFERENCES sce_department(dept_id)
);

CREATE TABLE sce_request_form (
	PRIMARY KEY (id),
	id INT AUTO_INCREMENT,
	dept_id INT,
	`name` VARCHAR(60) NOT NULL,
	email VARCHAR(40) NOT NULL,
	message LONGTEXT NOT NULL,
	date_time DATE,
	KEY k_requeast_key_dept(dept_id),
	CONSTRAINT fk_request_from_department
	FOREIGN KEY (dept_id) REFERENCES sce_department(dept_id)
);

CREATE TABLE sce_alumni_form (
	PRIMARY KEY (id),
	id INT AUTO_INCREMENT,
	dept_id INT,
	`name` VARCHAR(60) NOT NULL,
	email VARCHAR(40) NOT NULL,
	contact VARCHAR(40) NOT NULL,
	message LONGTEXT NOT NULL,
	`date` DATE,
	KEY k_alumni_key_dept(dept_id),
	CONSTRAINT fk_alumni_from_department
	FOREIGN KEY (dept_id) REFERENCES sce_department(dept_id)
);

CREATE TABLE sce_facilities (
	PRIMARY KEY (id),
	id      INT          AUTO_INCREMENT,
	dept_id INT,
	title   VARCHAR(30)  NOT NULL,
	image1  BLOB DEFAULT NULL,
	image2  BLOB DEFAULT NULL,
	image4  BLOB DEFAULT NULL,
	image5  BLOB DEFAULT NULL,
	image6  BLOB DEFAULT NULL,
	message LONGTEXT,
	KEY k_sce_facilities (dept_id),
	CONSTRAINT fk_sce_facilities_department
	FOREIGN KEY (dept_id) REFERENCES sce_department(dept_id)
);

CREATE TABLE sce_newsandevents (
	PRIMARY KEY (id),
	id INT AUTO_INCREMENT,
	dept_id INT,
	title VARCHAR(70)NOT NULL,
	message LONGTEXT NOT NULL,
	`date` DATE, 
	image1 BLOB,
	image2 BLOB,
	image3 BLOB,
	image4 BLOB,
	image5 BLOB,
	image6 BLOB,
	image7 BLOB,
	image8 BLOB,
	image9 BLOB,
	image0 BLOB,
	KEY k_sce_newsandevents (dept_id),
	CONSTRAINT fk_newsandevents_department
	FOREIGN KEY (dept_id) REFERENCES sce_department(dept_id)
);

CREATE TABLE sce_advertisement (
	PRIMARY KEY (id),
	id INT AUTO_INCREMENT,
	dept_id INT,
	title VARCHAR(70)NOT NULL,
	message LONGTEXT NOT NULL,
	`date` DATE, 
	image1 BLOB,
	image2 BLOB,
	image3 BLOB,
	reglink VARCHAR(60),
	KEY k_sce_advertisement (dept_id),
	CONSTRAINT fk_advertisement_department
	FOREIGN KEY (dept_id) REFERENCES sce_department(dept_id)
);

CREATE TABLE sce_achievement (
	PRIMARY KEY (id),
	id INT AUTO_INCREMENT,
	dept_id INT,
	achieversname VARCHAR(60) NOT NULL,
	title VARCHAR(70)NOT NULL,
	message LONGTEXT NOT NULL,
	`date` DATE, 
	image1 BLOB,
	KEY k_sce_achievement (dept_id),
	CONSTRAINT fk_achievement_department
	FOREIGN KEY (dept_id) REFERENCES sce_department(dept_id)
);

CREATE TABLE sce_lab (
	PRIMARY KEY (id),
	id INT AUTO_INCREMENT,
	dept_id INT,
	message LONGTEXT NOT NULL, 
	image1 BLOB,
	image2 BLOB,
	image3 BLOB,
	image4 BLOB,
	KEY k_sce_lab (dept_id),
	CONSTRAINT fk_lab_department
	FOREIGN KEY (dept_id) REFERENCES sce_department(dept_id)
);

CREATE TABLE sce_tieups (
	PRIMARY KEY (id),
	id INT AUTO_INCREMENT,
	dept_id INT,
	title VARCHAR(60),
	image1 BLOB,
	image2 BLOB,
	message LONGTEXT,
	KEY k_sce_tieups (dept_id),
	CONSTRAINT fk_tieups_department
	FOREIGN KEY (dept_id) REFERENCES sce_department(dept_id)

);

CREATE TABLE sce_rd (
	PRIMARY KEY (id),
	id INT AUTO_INCREMENT,
	dept_id INT,
	title VARCHAR(60),
	image1 BLOB,
	image2 BLOB,
	message LONGTEXT,
	KEY k_sce_rd (dept_id),
	CONSTRAINT fk_rd_department
	FOREIGN KEY (dept_id) REFERENCES sce_department(dept_id)

);















