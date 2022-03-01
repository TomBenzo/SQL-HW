-- Q1
-- Answer is 2, there are 2 actors with the last name Wahlberg
select *
from actor
where last_name = 'Wahlberg';

--Q2
-- Answer is 5,563 payments were made between $3.99 and $5.99
select count(amount)
from payment
where amount between 3.99 and 5.99;

--Q3
--Answer is 'Curtain Videotape', with 9 copies
select film_id , count(film_id)   
from inventory
group by film_id
order by count(film_id)desc;

--Q4
--Answer is 0, but if u ask for William(s) there are 3, but William without the s, there are 0
select *
from actor
where last_name = 'William';

--Q5
--Answer is staff_id 1 sold the most rentals, with 8,040 copies 
select staff_id, count(staff_id)   
from rental
group by staff_id;

--Q6
--Answer 603
select district
from address;

--Q7
--Answer is 'Lambs Cincinatti', with 16 actors in it
select film_id , count(film_id)   
from film_actor
group by film_id
order by count(film_id)desc;

--Q8
--Answer is there are 21 customers with a last name ending with 'es'
select *
from customer
where last_name like '%es'

--Q9


--Q10 PART 1 
--Answer is 5, there are 5 rating categories, G, PG, PG-13, R, NC-17
select rating
from film;

--Q10 PART 2
--Answer is PG-13, PG-13 has the most movies total
select rating, count(rating)   
from film
group by rating;