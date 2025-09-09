drop table if exists Payment;
drop table if exists Booking;
drop table if exists Room;
drop table if exists RoomType;
drop table if exists Customer_Service;
drop table if exists Role_Service;
drop table if exists Service;
drop table if exists Staff;
drop table if exists Role;
drop table if exists Customer;


-- Customer Table
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20) UNIQUE,
    address VARCHAR(255)
);

-- Role Table
CREATE TABLE Role (
    RoleID INT AUTO_INCREMENT PRIMARY KEY,
    RoleName VARCHAR(50) NOT NULL,
    Description VARCHAR(255)
);

-- Staff Table
CREATE TABLE Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20) UNIQUE,
    RoleID INT,
    FOREIGN KEY (RoleID) REFERENCES Role(RoleID)
);

-- Service Table
CREATE TABLE Service (
    serviceTypeID INT AUTO_INCREMENT PRIMARY KEY,
    ServiceName VARCHAR(100) NOT NULL,
    Description VARCHAR(255)
);

-- Role_Service Table (Many-to-Many between Role and Service)
CREATE TABLE Role_Service (
    RoleID INT,
    serviceTypeID INT,
    Remarks VARCHAR(255),
    PRIMARY KEY (RoleID, serviceTypeID),
    FOREIGN KEY (RoleID) REFERENCES Role(RoleID),
    FOREIGN KEY (serviceTypeID) REFERENCES Service(serviceTypeID)
);

-- Customer_Service Table (Many-to-Many between Customer and Service)
CREATE TABLE Customer_Service (
    customer_id INT,
    serviceTypeID INT,
    request_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    remarks VARCHAR(255),
    PRIMARY KEY (customer_id, serviceTypeID, request_date),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (serviceTypeID) REFERENCES Service(serviceTypeID)
);

-- RoomType Table
CREATE TABLE RoomType (
    room_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL,
    price_per_night DECIMAL(10,2) NOT NULL
);

-- Room Table
CREATE TABLE Room (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10) UNIQUE NOT NULL,
    room_type_id INT NOT NULL,
    floor INT,
    status ENUM('Available', 'Occupied', 'Maintenance') DEFAULT 'Available',
    FOREIGN KEY (room_type_id) REFERENCES RoomType(room_type_id)
);

-- Booking Table
CREATE TABLE Booking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    room_id INT NOT NULL,
    staff_id INT,
    check_in_date DATE NOT NULL,
    check_out_date DATE,
    booking_status ENUM('Confirmed', 'Cancelled', 'Completed') DEFAULT 'Confirmed',
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (room_id) REFERENCES Room(room_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

-- Payment Table
CREATE TABLE Payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM('Card', 'UPI', 'Cash', 'Online') NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);


-- ----------------------
-- 1. Role
-- ----------------------
INSERT INTO Role (RoleName, Description) VALUES
('Receptionist', 'Handles bookings and customer queries'),
('Housekeeping', 'Responsible for room cleaning and upkeep'),
('Manager', 'Manages hotel operations'),
('Chef', 'Prepares meals and supervises kitchen'),
('Security', 'Ensures guest safety');

-- ----------------------
-- 2. Staff
-- ----------------------
INSERT INTO Staff (name, role, email, phone, RoleID) VALUES
('Alice Johnson', 'Receptionist', 'alice@hotel.com', '9876543210', 1),
('Bob Smith', 'Housekeeping', 'bob@hotel.com', '9876543211', 2),
('Charlie Brown', 'Manager', 'charlie@hotel.com', '9876543212', 3),
('David Miller', 'Chef', 'david@hotel.com', '9876543213', 4),
('Eva Green', 'Security', 'eva@hotel.com', '9876543214', 5),
('Frank Wilson', 'Receptionist', 'frank@hotel.com', '9876543215', 1),
('Grace Lee', 'Housekeeping', 'grace@hotel.com', '9876543216', 2),
('Hannah White', 'Chef', 'hannah@hotel.com', '9876543217', 4),
('Ian Scott', 'Security', 'ian@hotel.com', '9876543218', 5),
('Julia Adams', 'Manager', 'julia@hotel.com', '9876543219', 3);

-- ----------------------
-- 3. Customer
-- ----------------------
INSERT INTO Customer (name, email, phone, address) VALUES
('John Doe', 'john@example.com', '9998887770', 'Mumbai'),
('Jane Smith', 'jane@example.com', '9998887771', 'Delhi'),
('Michael Clark', 'mike@example.com', '9998887772', 'Bangalore'),
('Emily Davis', 'emily@example.com', '9998887773', 'Chennai'),
('Daniel Lewis', 'daniel@example.com', '9998887774', 'Pune'),
('Sophia Hall', 'sophia@example.com', '9998887775', 'Hyderabad'),
('Liam Young', 'liam@example.com', '9998887776', 'Kolkata'),
('Olivia King', 'olivia@example.com', '9998887777', 'Jaipur'),
('Noah Wright', 'noah@example.com', '9998887778', 'Ahmedabad'),
('Ava Lopez', 'ava@example.com', '9998887779', 'Surat'),
('William Allen', 'william@example.com', '9998887780', 'Nagpur'),
('Isabella Scott', 'isabella@example.com', '9998887781', 'Indore'),
('James Harris', 'james@example.com', '9998887782', 'Lucknow'),
('Mia Turner', 'mia@example.com', '9998887783', 'Patna'),
('Benjamin Baker', 'benjamin@example.com', '9998887784', 'Bhopal'),
('Charlotte Hill', 'charlotte@example.com', '9998887785', 'Kanpur'),
('Lucas Nelson', 'lucas@example.com', '9998887786', 'Agra'),
('Amelia Carter', 'amelia@example.com', '9998887787', 'Varanasi'),
('Henry Mitchell', 'henry@example.com', '9998887788', 'Rajkot'),
('Evelyn Perez', 'evelyn@example.com', '9998887789', 'Thane');

-- ----------------------
-- 4. Service
-- ----------------------
INSERT INTO Service (ServiceName, Description) VALUES
('Room Cleaning', 'Daily cleaning service'),
('Room Booking', 'Reservation of rooms'),
('Food Delivery', 'Deliver food to rooms'),
('Laundry', 'Washing and ironing clothes'),
('Spa', 'Relaxation and wellness services');

-- ----------------------
-- 5. Role_Service
-- ----------------------
INSERT INTO Role_Service (RoleID, serviceTypeID, Remarks) VALUES
(1, 2, 'Receptionist handles bookings'),
(2, 1, 'Housekeeping does room cleaning'),
(4, 3, 'Chef manages food delivery'),
(2, 4, 'Housekeeping manages laundry'),
(3, 5, 'Manager oversees spa services');

-- ----------------------
-- 6. RoomType
-- ----------------------
INSERT INTO RoomType (type_name, price_per_night) VALUES
('Standard', 2000.00),
('Deluxe', 3500.00),
('Suite', 5000.00);

-- ----------------------
-- 7. Room
-- ----------------------
INSERT INTO Room (room_number, room_type_id, floor, status) VALUES
('101', 1, 1, 'Available'),
('102', 2, 1, 'Occupied'),
('103', 3, 1, 'Available'),
('201', 1, 2, 'Available'),
('202', 2, 2, 'Occupied'),
('203', 3, 2, 'Maintenance'),
('301', 1, 3, 'Available'),
('302', 2, 3, 'Available'),
('303', 3, 3, 'Occupied'),
('304', 1, 3, 'Available');

-- ----------------------
-- 8. Booking
-- ----------------------
INSERT INTO Booking (customer_id, room_id, staff_id, check_in_date, check_out_date, booking_status) VALUES
(1, 1, 1, '2025-09-01', '2025-09-05', 'Completed'),
(2, 2, 6, '2025-09-02', '2025-09-06', 'Completed'),
(3, 3, NULL, '2025-09-03', '2025-09-04', 'Cancelled'),
(4, 4, 1, '2025-09-04', '2025-09-07', 'Confirmed'),
(5, 5, 6, '2025-09-05', '2025-09-08', 'Confirmed'),
(6, 6, NULL, '2025-09-06', NULL, 'Cancelled'),
(7, 7, 1, '2025-09-07', '2025-09-09', 'Confirmed'),
(8, 8, 1, '2025-09-07', '2025-09-10', 'Confirmed'),
(9, 9, 6, '2025-09-08', NULL, 'Confirmed'),
(10, 10, NULL, '2025-09-08', '2025-09-11', 'Completed');

-- ----------------------
-- 9. Payment
-- ----------------------
INSERT INTO Payment (booking_id, amount, payment_date, payment_method) VALUES
(1, 8000, '2025-09-05 10:00:00', 'Card'),
(2, 14000, '2025-09-06 12:00:00', 'UPI'),
(4, 6000, '2025-09-07 09:30:00', 'Cash'),
(5, 10500, '2025-09-08 15:00:00', 'Online'),
(7, 4000, '2025-09-09 11:00:00', 'UPI'),
(8, 10500, '2025-09-10 14:00:00', 'Card'),
(10, 6000, '2025-09-11 18:00:00', 'Cash');

-- ----------------------
-- 10. Customer_Service
-- ----------------------
INSERT INTO Customer_Service (customer_id, serviceTypeID, request_date, remarks) VALUES
(1, 1, '2025-09-01 09:00:00', 'Requested room cleaning'),
(2, 3, '2025-09-02 13:00:00', 'Ordered lunch'),
(3, 4, '2025-09-03 10:30:00', 'Laundry service required'),
(4, 5, '2025-09-04 17:00:00', 'Spa appointment'),
(5, 2, '2025-09-05 08:00:00', 'Booking assistance needed'),
(6, 1, '2025-09-06 09:30:00', 'Cleaning before checkout'),
(7, 3, '2025-09-07 20:00:00', 'Ordered dinner'),
(8, 4, '2025-09-08 11:00:00', 'Laundry requested'),
(9, 5, '2025-09-09 15:30:00', 'Spa relaxation session'),
(10, 2, '2025-09-10 12:00:00', 'Asked about room availability');



🔹 A. Basic Queries

List all available rooms.

Show all room numbers and types on the 3rd floor.

Find the total number of rooms per type (Standard, Deluxe, Suite).

Display the count of rooms that are currently Occupied.

Show all Suite rooms which are under Maintenance.

🔹 B. Joins (rooms + room_assigned)

List all customers with their room number, type, and floor.

Find customers who are staying in rooms that are Occupied.

Show all Deluxe rooms with the student IDs assigned to them.

List customers along with their room status (Available, Occupied, Maintenance).

Display the student IDs who are staying on the 2nd floor.

🔹 C. Subqueries

Find customers who stayed in the same room more than once.

List all rooms that have never been assigned to any student.

Show student IDs of those who have stayed in both Standard and Deluxe rooms.

Find the maximum duration (in days) of stay by any student.

Display the rooms assigned most frequently.

🔹 D. Advanced

For each room type, find how many unique customers stayed in it.

Find customers with overlapping stays (same room, overlapping dates).

List all customers who are currently staying in the hotel (today between startDate and endDate).

Show the average stay duration per room type.

Find the student who changed rooms the most times.


----------------


🔹 E. Aggregates & Grouping

Show the total number of rooms on each floor.

Find the room type with the maximum number of Available rooms.

Display the percentage of rooms that are Occupied, Available, and Maintenance.

List the floor that has the most Suite rooms.

Find the average stay duration per floor.

🔹 F. Subqueries & Nested Logic

Find customers who have always stayed in the same type of room.

Show rooms where the latest endDate of assignment is before 2025-07-01 (rooms free after July).

Find the student(s) with the longest continuous stay across all rooms.

List customers who have stayed in rooms that are currently marked Available (past vs present check).

Find customers who stayed in a room that was under Maintenance at some point.

🔹 G. Date-Based Assignments

Show customers who stayed in the hotel during March 2025.

Find customers who checked in before April 2025 and checked out after June 2025.

List rooms that were occupied for more than 6 months in total.

Show all stays that overlap with studentID 1005’s stay.

Find customers who have future bookings (endDate > CURRENT_DATE).

🔹 H. Analytical Queries

Rank rooms by the number of times they were assigned.

Find the most popular room type based on total student stays.

For each student, find the earliest assigned room and latest assigned room.

Show customers who moved from a Standard room to a Suite room.

List the rooms that have been continuously occupied without a gap between bookings.


🔹 I. Room & Status Management

List the rooms that changed status the most times (e.g., Available → Occupied → Maintenance).

Show rooms that are currently Available but were Occupied in the past.

Find the average number of Available rooms per floor.

Identify the floor with the highest occupancy rate.

Display the rooms that went directly from Occupied to Maintenance without becoming Available.

🔹 J. Staff & Room Management

Assign each staff member to equal number of rooms (if possible).

Show the staff member who manages the maximum number of rooms.

List all rooms and the staff assigned to them.

Find staff members who manage only Suite rooms.

Show staff who manage rooms that are under Maintenance.

🔹 K. Student Stays & Bookings

Find customers who have stayed in 3 or more different rooms.

Show the total number of nights spent by each student.

List customers who extended their stay (overlapping or continuous bookings).

Show customers who checked out and checked in on the same day (room switchers).

Find the student who had the shortest stay duration.

🔹 L. Business Analytics

Find the most frequently occupied room number.

For each room type, calculate the average occupancy duration.

Show the room type with the highest occupancy ratio.

Find the peak months when most rooms were occupied.

List the top 3 customers by total stay duration.

🔹 M. Complex Real-World Scenarios

Find all double-bookings (two customers assigned to the same room during overlapping dates).

Show customers who stayed in a room on one floor and then moved to a different floor.

Find the rooms that were never empty for more than 15 days between bookings.

Show the average gap between two consecutive stays in each room.

Find customers who always booked the same room number whenever they stayed.

Show the room utilization percentage = (days occupied ÷ total days in the dataset) × 100.

Find customers who moved from Standard → Deluxe → Suite (progressive upgrade).

Show all customers currently staying with their expected checkout date.

Find rooms that have been continuously in Maintenance since the beginning of 2025.

Show the most loyal customers (highest total days stayed across bookings).