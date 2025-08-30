-- Triggers

CREATE TRIGGER trg_AutoBillService
ON BookingServices
AFTER INSERT
AS
BEGIN
    DECLARE @BookingID INT, @ServiceName VARCHAR(100);
    SELECT @BookingID = BookingID,@ServiceName=ServiceID FROM inserted;

    PRINT 'Extra Service added for Booking ID: ' + CAST(@BookingID AS VARCHAR)+' For Service Id '+cast(@servicename as varchar);
END;


INSERT INTO BookingServices (BookingID, ServiceID, Quantity)
VALUES (1, 1, 2);
drop trigger trg_AutoBillService3
 
select * from sys.triggers


go


--Views

CREATE VIEW OccupancyReport AS
SELECT RoomID, RoomNumber, RoomType, Status
FROM Rooms;


go


CREATE VIEW RevenueReport AS
SELECT B.BookingID, G.FullName, SUM(P.Amount) AS TotalRevenue
FROM Payments P
JOIN Bookings B ON P.BookingID = B.BookingID
JOIN Guests G ON B.GuestID = G.GuestID
GROUP BY B.BookingID, G.FullName;

select * from RevenueReport
select * from Payments