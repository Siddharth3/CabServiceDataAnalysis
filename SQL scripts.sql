Create Database CabService;

use CabService;

SELECT COUNT(*) FROM bookings;

SELECT * FROM bookings;

/* 1. Retrieve all successful bookings */
SELECT * 
FROM bookings
WHERE Booking_Status = "Success";

/* 2. Find the average ride distance for each vehicle type */
SELECT Vehicle_Type, AVG(Ride_Distance) AS Avg_Distance
FROM bookings
GROUP BY Vehicle_Type; 

/* 3. Get the total number of canceled rides by customers */
SELECT Customer_ID, COUNT(*) AS Total_Cancel_Rides
FROM bookings
WHERE Booking_Status = "Canceled by Customer"
GROUP BY Customer_ID
ORDER BY Total_Cancel_Rides DESC; 

/* 4. List the top 5 customers who booked the highest number of rides */
SELECT Customer_ID, COUNT(Booking_ID) AS Total_Rides
FROM bookings
GROUP BY Customer_ID
ORDER BY Total_Rides DESC
LIMIT 5; 

/* Details about highest booking customer */
SELECT * FROM bookings WHERE Customer_ID = 'CID954071';

/* 5. Get the number of rides canceled by drivers due to personal and car-related issues */
SELECT COUNT(*) AS Ride_Canceled_Due_To_Reason
FROM bookings
WHERE Booking_Status = 'Canceled by Driver'
AND Canceled_Rides_by_Driver = 'Personal & Car related issue';

/* 6.1 Find the maximum and minimum driver ratings for Prime Sedan bookings(NUll is considered 0 and Min value is 0) */
SELECT MIN(Driver_Ratings) AS Min_Driver_Rating, MAX(Driver_Ratings) AS Max_Driver_Rating
FROM bookings
WHERE Vehicle_type = 'Prime Sedan';

/* 6.2 Find the maximum and minimum driver ratings for Prime Sedan bookings(NUll is considered 0 and Min value is except 0) */
WITH MinRatingWithZero AS (
	SELECT DISTINCT Driver_Ratings 
	FROM bookings 
	ORDER BY Driver_Ratings ASC 
	LIMIT 2
)
SELECT (SELECT MAX(Driver_Ratings) FROM MinRatingWithZero) AS Min_Driver_Rating, MAX(Driver_Ratings) AS Max_Driver_Rating
FROM bookings
WHERE Vehicle_type = 'Prime Sedan';

/* 7. Retrieve all rides where payment was made using UPI */
SELECT *
FROM bookings
WHERE Payment_Method = 'UPI';

/* 8. Find the average customer rating per vehicle type */
SELECT Vehicle_Type, ROUND(AVG(Customer_Rating), 2) AS Avg_Customer_Rating
FROM bookings
GROUP BY Vehicle_Type;

/* 9. Calculate the total booking value of rides completed successfully */
SELECT SUM(Booking_Value) AS Total_Booking_Value
FROM bookings
WHERE Booking_Status = 'Success';

/* 10. List all incomplete rides along with the reason */
SELECT Booking_ID, Incomplete_Rides_Reason 
FROM bookings 
WHERE Incomplete_Rides = 'Yes';