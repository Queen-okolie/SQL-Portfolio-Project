--Satisfied customers and unsatisfied customers

SELECT Satisfaction, COUNT(Satisfaction) AS SATISFACTION_REVIEW
FROM AirlineReview
GROUP BY Satisfaction

--Satisfaction by cutomer type

SELECT [Customer type], COUNT(Satisfaction) AS Satisfaction_review_by_CT 
from AirlineReview
group by [Customer Type]

--Satisfaction by travel type

select [Type of travel],  COUNT(Satisfaction) AS Satisfaction_review_by_TOT
from AirlineReview
group by [Type of Travel]

--Passenger profile by age

Select Age, count(*) as Passengers_profile_by_age
from AirlineReview
group by Age

--Passengers preference by flight_leg

select [Flight Distance], count(class) as Customer_preference_by_class
from AirlineReview
group by [Flight Distance]

--categorising customer type, travel type, class 

select [Customer Type] 
from AirlineReview
group by [Customer Type]

select [Type of Travel]
from AirlineReview
group by [Type of Travel]

select class
from AirlineReview
group by class

--satisfaction by gender

SELECT Gender, COUNT(Satisfaction) AS Satisfaction_review_by_gender 
from AirlineReview
group by Gender

--satisfaction by cleanliness

SELECT Cleanliness, COUNT(Satisfaction) AS Satisfaction_review_by_cleanliness 
from AirlineReview
group by Cleanliness

--satisfaction by baggage handling

select [Baggage Handling], count(Satisfaction) as Satisfaction_review_by_BH
from AirlineReview
GROUP BY [Baggage Handling]

--Satisfaction by seat comfort

select [Seat Comfort], count(Satisfaction) as satisfaction_review_by_SC 
from AirlineReview
group by [Seat Comfort]


SELECT *
FROM AirlineReview

