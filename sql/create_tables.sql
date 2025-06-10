-- Tabel Clients
CREATE TABLE CLIENTS (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_num VARCHAR(15),
    email VARCHAR(100)
);

-- Tabel Themes
CREATE TABLE THEMES (
    code VARCHAR(10) PRIMARY KEY,
    description VARCHAR(100)
);

-- Tabel Events
CREATE TABLE EVENTS (
    id INT PRIMARY KEY,
    name VARCHAR(100),  -- Diubah dari INT ke VARCHAR untuk nama acara
    date DATE,
    description VARCHAR(100),
    cost DECIMAL(10, 2),
    client_id INT,
    theme_code VARCHAR(10),
    FOREIGN KEY (client_id) REFERENCES CLIENTS(id),
    FOREIGN KEY (theme_code) REFERENCES THEMES(code)
);

-- Tabel Clients_Events (Junction Table)
CREATE TABLE CLIENTS_EVENTS (
    client_id INT,
    event_id INT,
    PRIMARY KEY (client_id, event_id),
    FOREIGN KEY (client_id) REFERENCES CLIENTS(id),
    FOREIGN KEY (event_id) REFERENCES EVENTS(id)
);
