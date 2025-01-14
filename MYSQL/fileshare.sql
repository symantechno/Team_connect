use flask_login;
CREATE TABLE IF NOT EXISTS files (
                id INT AUTO_INCREMENT PRIMARY KEY,
                filename VARCHAR(255) NOT NULL,
                original_filename VARCHAR(255) NOT NULL,
                upload_date DATETIME NOT NULL,
                file_size INT NOT NULL,
                download_count INT DEFAULT 0
            )