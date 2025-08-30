create database Hotel
-- Guests Table
CREATE TABLE Guests (
    GuestID INT PRIMARY KEY IDENTITY(1,1),
    FullName VARCHAR(100) NOT NULL,
    Phone VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

-- Rooms Table
CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY IDENTITY(1,1),
    RoomNumber INT UNIQUE NOT NULL,
    RoomType VARCHAR(50) CHECK(RoomType IN ('Single','Double','Suite')),
    PricePerNight DECIMAL(10,2) NOT NULL,
    Status VARCHAR(20) DEFAULT 'Available' -- Available/Occupied
);

-- Bookings Table
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY IDENTITY(1,1),
    GuestID INT FOREIGN KEY REFERENCES Guests(GuestID),
    RoomID INT FOREIGN KEY REFERENCES Rooms(RoomID),
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE,
    Status VARCHAR(20) DEFAULT 'Active' -- Active/Completed/Cancelled
);

-- Services (extra services like food, laundry, etc.)
CREATE TABLE Services (
    ServiceID INT PRIMARY KEY IDENTITY(1,1),
    ServiceName VARCHAR(100),
    ServiceCost DECIMAL(10,2)
);

-- Payments Table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    BookingID INT FOREIGN KEY REFERENCES Bookings(BookingID),
    Amount DECIMAL(10,2),
    PaymentDate DATE DEFAULT GETDATE(),
    PaymentMode VARCHAR(20) CHECK(PaymentMode IN ('Cash','Card','Online'))
);

-- BookingServices (link between bookings & services)
CREATE TABLE BookingServices (
    BSID INT PRIMARY KEY IDENTITY(1,1),
    BookingID INT FOREIGN KEY REFERENCES Bookings(BookingID),
    ServiceID INT FOREIGN KEY REFERENCES Services(ServiceID),
    Quantity INT DEFAULT 1
);
select * from sys.tables