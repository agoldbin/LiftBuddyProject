CREATE SCHEMA IF NOT EXISTS `liftbuddytest` DEFAULT CHARACTER SET latin1 ;
USE `liftbuddytest`;
DROP TABLE IF EXISTS `liftbuddytest`.`gym`;
CREATE TABLE gym(id INT AUTO_INCREMENT PRIMARY KEY, gym_name VARCHAR(255) NULL);
INSERT INTO gym VALUES (1,'YMCA'),(2,'Anytime Fitness'),(3,'Princeton Club'),(4,'Planet Fitness'),(5,'Other'),(6,'None');
DROP TABLE IF EXISTS `liftbuddytest`.`user`;
CREATE TABLE user(id INT AUTO_INCREMENT PRIMARY KEY, email VARCHAR(255) NULL, password   VARCHAR(255) NOT NULL, user_name  VARCHAR(255) NULL, first_name VARCHAR(255) NULL, last_name  VARCHAR(255) NULL, gymId INT NULL, location INT NULL, dob DATE  NULL, height VARCHAR(255) NULL, sex VARCHAR(1) NULL, CONSTRAINT user_user_name_uindex UNIQUE (user_name), CONSTRAINT user_gym_id_fk FOREIGN KEY (gymId) REFERENCES gym (id));
CREATE INDEX user_gym_id_fk ON user (gym_id);
INSERT INTO user VALUES (1,'jc123@gmail.com','supersecret1','jcoyne','Joe','Coyne',1,'53713','1964-04-01','5''2','M'),(2,'nightmareonelm@hotmail.com','supersecret2','fhensen','Fred','Hensen',1,'53706','1988-05-08','5''4','M'),(3,'curryman@yahoo.com','supersecret3','bcurry','Barney','Curry',4,'53704','1947-11-11','6''2','M'),(4,'mackattack@aol.com','supersecret4','kmack','Karen','Mack',3,'53594','1986-07-08','6''0','F'),(5,'calvinklein@gmail.com','supersecret5','dklein','Dianne','Klein',2,'53717','1991-09-22','5''8','F'),(6,'uptildawn@yahoo.com','supersecret6','dtillman','Dawn','Tillman',5,'53714','1979-08-3','6''4','F');