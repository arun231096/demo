CREATE DATABASE sasurie_engg;

USE sasurie_engg;

CREATE TABLE sce_department (
								PRIMARY KEY (dept_id),
								dept_id    INT,
								dept_name VARCHAR(40) NOT NULL,
								dept_type VARCHAR(3) NOT NULL
);
