-- write your queries here
SELECT * 
    FROM owners o 
    FULL JOIN vehicles v 
    ON o.id = v.owner_id; 

SELECT first_name, last_name, COUNT(owner_id) AS vehicles_owned 
    FROM owners o 
    JOIN vehicles v 
    ON o.id = v.owner_id 
    GROUP BY first_name, last_name 
    ORDER BY first_name; 

SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(owner_id) 
    FROM owners o 
    JOIN vehicles v 
    ON o.id = v.owner_id 
    GROUP BY first_name, last_name 
    HAVING ROUND(AVG(price)) > 10000 
    ORDER BY first_name DESC;