-- write your queries here
SELECT * FROM owners LEFT JOIN vehicles ON owners.id = vehicles.owner_id;
SELECT first_name,last_name, count(vehicles.id) AS vehichle_count FROM owners LEFT JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY first_name,last_name ORDER BY first_name asc; 
SELECT first_name,last_name,ROUND(avg(price)) AS avg_price, count(vehicles.id) AS vehichle_count FROM owners LEFT JOIN vehicles ON owners.id = vehicles.owner_id  GROUP BY first_name,last_name HAVING count(vehicles.id)>1 AND ROUND(avg(price)) > 10000 ORDER BY first_name desc ; 
