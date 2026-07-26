-- Структура базы данных микро-бизнеса
CREATE TABLE Clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    join_date DATE
);

CREATE TABLE Consoles (
    console_id INT PRIMARY KEY,
    model VARCHAR(100),
    status VARCHAR(20) -- 'available', 'rented', 'maintenance'
);

CREATE TABLE Rentals (
    rental_id INT PRIMARY KEY,
    client_id INT REFERENCES Clients(client_id),
    console_id INT REFERENCES Consoles(console_id),
    start_date DATE,
    end_date DATE,
    amount DECIMAL(10,2)
);
