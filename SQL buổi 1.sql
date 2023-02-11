DROP DATABASE IF EXISTS fresher_training_management;
CREATE DATABASE if not EXISTS fresher_training_management;
USE fresher_training_management;

DROP TABLE IF EXISTS trainee;
CREATE TABLE IF NOT EXISTS trainee (
trainee_id         INT AUTO_INCREMENT PRIMARY KEY,
 full_name          VARCHAR(50) NOT NULL,
birth_date         DATE,
 gender             ENUM ('male','female','unknow'),
 et_iq              INT CHECK ( et_iq >= 0 AND et_iq <= 20),
et_gmath           INT CHECK ( et_gmath >= 0 AND et_gmath <=20),
et_english         INT CHECK (et_english >=0 AND et_english <=50),
training_class     CHAR(5) NOT NULL,
evaluation_notes   VARCHAR(50),
vti_account        VARCHAR(50) NOT NULL UNIQUE KEY
);

