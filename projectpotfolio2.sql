select * 
from movies

--TOP TEN MOVIES BY BUDGET 

select top 10 Name, Genre, Budget
from movies
order by Budget desc

--TOP TEN MOVIES BY GROSS

select top 10 Name, Genre, Gross
from movies
order by Gross desc

--Highest movie Genre by popularity,budget and Gross


select Genre as Highest_Genre_Popularity, Votes
from movies 
where Votes = (select max(Votes)
from movies)

select Genre as Highest_Genre_Budget, Budget
from movies 
where Budget = (select max(Budget)
from movies)

select Genre as Highest_Genre_Gross, Gross
from movies 
where Gross = (select max(Gross)
from movies)

--Lowest movie by popularity

select Name as Lowest_Movie_Popularity, Votes
from movies 
where Votes = (select min(Votes)
from movies)


--Highest movie by popularity

select Name as Lowest_Movie_Popularity, Votes
from movies 
where Votes = (select max(Votes)
from movies)

--number of movies over the years

select Year , Count(name) as Number_of_Movies
from movies
group by Year
order by Year


select * from movies

--Top 5 directors by number of movies
select  top 5 Director, count(name) as number_of_movies
from movies
group by Director
order by number_of_movies desc

--Top 10 movie stars by number of movies

select  top 10 Star, count(name) as number_of_movies
from movies
group by Star
order by number_of_movies desc

--Top 5 country by number of movies released


select  top 5 Country, count(name) as number_of_movies
from movies
group by Country
order by number_of_movies desc



