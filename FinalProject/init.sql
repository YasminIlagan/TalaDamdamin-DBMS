CREATE DATABASE taladamdamin;

USE taladamdamin;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE journal_entries (
    entry_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    entry_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    content TEXT NOT NULL,
    mood VARCHAR(50) NOT NULL,
    stress_level INT NOT NULL,
    energy_level INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE daily_goals (
    goal_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    goal_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    goal_text VARCHAR(255) NOT NULL,
    is_completed BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE advice (
    advice_id INT AUTO_INCREMENT PRIMARY KEY,
    advice_text TEXT NOT NULL
);

INSERT INTO advice (advice_text) Values (
"Stay positive, work hard, make it happen." 
);
INSERT INTO advice (advice_text) Values (
"slow down, you're doing fine."
);
INSERT INTO advice (advice_text) Values (
"Believe you can, and you're half way there."
);
INSERT INTO advice (advice_text) Values (
"Don't forget your coffee."
);
INSERT INTO advice (advice_text) Values (
"It's okay not to be okay."
);
INSERT INTO advice (advice_text) Values (
"You can't win at everything but you can try."
);
INSERT INTO advice (advice_text) Values (
"Learn, rise, and shine."
);
INSERT INTO advice (advice_text) Values (
"Love Yourself"
);
