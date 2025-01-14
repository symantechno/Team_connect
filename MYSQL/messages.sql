USE flask_login;

CREATE TABLE IF NOT EXISTS rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_code VARCHAR(10) NOT NULL UNIQUE,
    created_at DATETIME NOT NULL,
    INDEX (room_code)
);

-- Create messages table with message type
CREATE TABLE IF NOT EXISTS messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_code VARCHAR(10) NOT NULL,
    username VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    timestamp DATETIME NOT NULL,
    message_type VARCHAR(10) DEFAULT 'message',
    INDEX room_idx (room_code),
    FOREIGN KEY (room_code) REFERENCES rooms(room_code)
);

select * from rooms;
select * from messages;

truncate table messages;