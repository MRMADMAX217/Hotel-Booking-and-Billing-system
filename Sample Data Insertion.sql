-- Insert Guests
INSERT INTO Guests (FullName, Phone, Email, Address) VALUES
('John Doe', '9876543210', 'john@example.com', 'New York'),
('Alice Smith', '9123456780', 'alice@example.com', 'Los Angeles'),
('Michael Johnson', '9988776655', 'michael@example.com', 'Chicago'),
('Sophia Brown', '8877665544', 'sophia@example.com', 'Houston'),
('William Davis', '7766554433', 'william@example.com', 'San Francisco'),
('Olivia Wilson', '8899001122', 'olivia@example.com', 'Seattle'),
('James Miller', '9001122334', 'james@example.com', 'Boston'),
('Isabella Martinez', '8112233445', 'isabella@example.com', 'Dallas'),
('Benjamin Taylor', '7001122334', 'benjamin@example.com', 'Miami'),
('Mia Anderson', '6789012345', 'mia@example.com', 'Denver'),
('Lucas Thomas', '7890123456', 'lucas@example.com', 'Austin'),
('Charlotte Lee', '8901234567', 'charlotte@example.com', 'Phoenix'),
('Henry White', '9012345678', 'henry@example.com', 'Portland'),
('Amelia Harris', '9123456789', 'amelia@example.com', 'Atlanta'),
('Daniel Martin', '9234567890', 'daniel@example.com', 'Las Vegas');

-- Insert Rooms (RoomNumber must be UNIQUE)
INSERT INTO Rooms (RoomNumber, RoomType, PricePerNight, Status) VALUES
(101, 'Single', 2000.00, 'Available'),
(102, 'Double', 3500.00, 'Occupied'),
(103, 'Suite', 5000.00, 'Available'),
(104, 'Single', 2200.00, 'Available'),
(105, 'Double', 3700.00, 'Available'),
(106, 'Suite', 5500.00, 'Occupied'),
(107, 'Single', 2100.00, 'Available'),
(108, 'Double', 3600.00, 'Available'),
(109, 'Suite', 5200.00, 'Available'),
(110, 'Single', 2300.00, 'Available'),
(111, 'Double', 3800.00, 'Occupied'),
(112, 'Suite', 5100.00, 'Available'),
(113, 'Single', 2000.00, 'Available'),
(114, 'Double', 3400.00, 'Available'),
(115, 'Suite', 5300.00, 'Available');

-- Insert Bookings (GuestID 1–15, RoomNumber 101–115)
INSERT INTO Bookings (GuestID, RoomNumber, CheckInDate, CheckOutDate, Status) VALUES
(1, 101, '2025-08-01', '2025-08-05', 'Completed'),
(2, 102, '2025-08-02', NULL, 'Active'),
(3, 103, '2025-08-03', '2025-08-07', 'Completed'),
(4, 104, '2025-08-04', NULL, 'Active'),
(5, 105, '2025-08-05', '2025-08-10', 'Completed'),
(6, 106, '2025-08-06', NULL, 'Active'),
(7, 107, '2025-08-07', '2025-08-12', 'Completed'),
(8, 108, '2025-08-08', NULL, 'Active'),
(9, 109, '2025-08-09', '2025-08-14', 'Completed'),
(10, 110, '2025-08-10', NULL, 'Active'),
(11, 111, '2025-08-11', '2025-08-15', 'Completed'),
(12, 112, '2025-08-12', NULL, 'Active'),
(13, 113, '2025-08-13', '2025-08-17', 'Completed'),
(14, 114, '2025-08-14', NULL, 'Active'),
(15, 115, '2025-08-15', '2025-08-20', 'Completed');

-- Insert Services
INSERT INTO Services (ServiceName, ServiceCost) VALUES
('Room Cleaning', 500.00),
('Laundry', 300.00),
('Breakfast', 250.00),
('Dinner', 600.00),
('Spa', 1500.00),
('Gym Access', 200.00),
('Airport Pickup', 1000.00),
('City Tour', 2500.00),
('Mini Bar', 800.00),
('Wi-Fi', 100.00),
('Swimming Pool', 400.00),
('Parking', 150.00),
('Doctor on Call', 1200.00),
('Conference Hall', 5000.00),
('Gaming Zone', 700.00);

-- Insert Payments (BookingID 1–15)
INSERT INTO Payments (BookingID, Amount, PaymentMode) VALUES
(1, 8000.00, 'Card'),
(2, 3500.00, 'Cash'),
(3, 10000.00, 'Online'),
(4, 2200.00, 'Card'),
(5, 7400.00, 'Online'),
(6, 5500.00, 'Cash'),
(7, 10500.00, 'Card'),
(8, 3600.00, 'Cash'),
(9, 10400.00, 'Online'),
(10, 2300.00, 'Card'),
(11, 7600.00, 'Online'),
(12, 5100.00, 'Cash'),
(13, 8000.00, 'Card'),
(14, 3400.00, 'Online'),
(15, 10600.00, 'Cash');

-- Insert BookingServices (BookingID 1–15, ServiceID 1–15)
INSERT INTO BookingServices (BookingID, ServiceID, Quantity) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 2),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 2);
select * from guests
select * from rooms
select * from bookings
select * from BookingServices
select * from payments
select * from Services