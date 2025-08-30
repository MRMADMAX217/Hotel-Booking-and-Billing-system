CREATE PROCEDURE CheckIn
    @GuestID INT,
    @RoomNumber INT,
    @CheckInDate DATE
AS
BEGIN
    -- Create booking
    INSERT INTO Bookings (GuestID, RoomNumber, CheckInDate, Status)
    VALUES (@GuestID, @RoomNumber, @CheckInDate, 'Active');

    -- Update room status
    UPDATE Rooms SET Status = 'Occupied' WHERE RoomNumber = @RoomNumber;
END;
go
CREATE PROCEDURE CheckOut
    @BookingID INT,
    @CheckOutDate DATE,
    @PaymentMode VARCHAR(20)
AS
BEGIN
    DECLARE @RoomNumber INT, @TotalNights INT, @RoomCost DECIMAL(10,2), @ServiceCost DECIMAL(10,2);

    -- Get booking info
    SELECT @RoomNumber = RoomNumber,  
           @TotalNights = DATEDIFF(DAY, CheckInDate, @CheckOutDate) 
    FROM Bookings WHERE BookingID = @BookingID;

    -- Room Cost
    SELECT @RoomCost = PricePerNight * @TotalNights 
    FROM Rooms WHERE RoomNumber = @RoomNumber;

    -- Extra Service Cost
    SELECT @ServiceCost = SUM(S.ServiceCost * B.Quantity)
    FROM BookingServices B
    JOIN Services S ON B.ServiceID = S.ServiceID
    WHERE B.BookingID = @BookingID;

    SET @ServiceCost = ISNULL(@ServiceCost,0);

    -- Insert Payment
    INSERT INTO Payments (BookingID, Amount, PaymentMode)
    VALUES (@BookingID, @RoomCost + @ServiceCost, @PaymentMode);

    -- Update Booking
    UPDATE Bookings SET Status = 'Completed', CheckOutDate = @CheckOutDate WHERE BookingID = @BookingID;

    -- Free Room
    UPDATE Rooms SET Status = 'Available' WHERE RoomNumber = @RoomNumber;
END;


exec CheckIn @guestid=11,@RoomNumber=112,@CheckInDate= '2025-08-30'
EXEC CheckOut @BookingID = 5, @CheckOutDate = '2025-09-05',@PaymentMode='CARD';