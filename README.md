#  Power BI Dashboard - CabServiceDataAnalysis

https://github.com/user-attachments/assets/7277cd70-d73c-4ef0-be3a-dae7bcbecd9e

### 1. Overview
#### Purpose:
This dashboard offers a comprehensive view of the cab service data, focusing on key metrics such as total bookings, canceled rides, top-performing customers, and revenue breakdown. It highlights critical insights, including the reasons for ride cancellations, top revenue-generating customers, and booking trends by vehicle type. Filters and visuals enable users to drill down into customer-specific data, booking statuses, and ride patterns for better service optimization.
#### Audience:
This dashboard is intended for use by any of the sales team, and stakeholders.
#### Approach:
This project consist two parts:
###### I. Data Cleaning:
This is the process where data health is going to be checked and data treatement will also be done. We use Pyhton script for this process(data_cleaning.ipynb). This step contains null check, duplicate check, outliers check, EDA and treatment for all if require.
###### II. SQL Solutions:
SQL solutions is the collection of queries to solve the daily and repetitive business problems. And get the result in very less time.(SQL scripts)
###### III. PowerBI Dashboard:
This dashboard is to provide actionable insights into customer behavior, booking trends, and service performance to support data-driven decision-making for operational improvements.(Dashboard.pbix)

### 2. Data Sources(Data is extracted in csv file)
- Date
- Time
- Booking_ID
- Booking_Status
- Customer_ID
- Vehicle_Type
- Pickup_Location
- Drop_Location
- V_TAT
- C_TAT
- Canceled_Rides_by_Customer
- Canceled_Rides_by_Driver
- Incomplete_Rides
- Incomplete_Rides_Reason
- Booking_Value
- Payment_Method
- Ride_Distance
- Driver_Ratings
- Customer_Rating

### 3. Key Points
#### - For the complete month(July), we have almost similar daily ride with minimum 3047 and maximum 3432 daily rides.
#### - Almost 18% of rides are cancelled by the driver in the month of July.
#### - In both the, maximum total distance covered by the E-Bike in 2-wheeler is 231K and Sedan in 4-wheeler is 235K.
#### - Highest revenue is collected by CASH payment method i.e; 19.3M.
#### - From 1,03,024 total rides, company is not able to complete 38% rides. Where 30+% customer cancelled the ride by saying that "Driver asked them to cancel the ride".

### 4. Instructions for Use
Accessing the Script:
- Open "SQL scripts" file into any sql supported app.
- Import Bookings.csv file into new database. 
- And run query one by one in a sequence as mentioned.
  
Accessing the Dashboard:
Open Dashboard.pbix into Power BI Desktop to view the dashboard.
When dashboard is fully loaded successfully, you can interact with the data.

### 5. Contact Information
For any questions or issues related to the dashboard, please contact:

#### Dashboard Owner/Developer: Siddharth Sahni
#### Email: sidd.sahni3@gmail.com
#### LinkedIn: [Siddharth Sahni](https://www.linkedin.com/in/er-siddharth-sahni-36b227103/)
#### Website: [TheDataMan.github.io/](https://siddharth3.github.io/TheDataMan.github.io/)
