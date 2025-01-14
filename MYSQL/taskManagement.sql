
 USE flask_login;
 CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
   title VARCHAR(255) NOT NULL,
    description TEXT,
     status ENUM('Pending', 'In Progress', 'Completed') DEFAULT 'Pending' );
ALTER TABLE tasks 
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN deadline DATETIME;