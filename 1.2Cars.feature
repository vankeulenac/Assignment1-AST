Feature: to rent a car to a customer

In order to rent a car to a customer
As an employee of 'Rent-A-Car'
I want an algorithm to do this for me

Scenario: with just as many cars and customers
 Given a carshop
 And 7 cars available by 'Rent-A-Car'
 And 7 customers walk by
 When I rent the cars
 Then every customer should have exactly 1 car

Scenario: with more green cars than yellow cars
 Given a carshop
 And 8 green cars available by 'Rent-A-Car'
 And 7 yellow cars available by 'Rent-A-Car'
 And 9 customers who want a green car
 And 6 customers who want a yellow car
 When I rent the cars
 Then each customer who wants a yellow car should have at least 1 yellow car
 And there should be 1 customer who wants a green car with 1 yellow car 

Scenario: with more expensive cars than cheap cars
 Given a carshop
 And 10 cheap cars available by 'Rent-A-Car'
 And 15 expensive cars available by 'Rent-A-Car'
 And 14 customers who want to rent anything
 And 11  customers who do not want an expensive car
 When I rent the cars
 Then each customer who want to rent anything should have at least 1 car
 And there should be at most 10 customers who want to pay less for their rented car with 1 car
 And there should be 1 customer who want to pay less for their rented car with 0 cars

Scenario: with more cars that were brought back too late than on time
 Given a carshop
 And after 5 cars that have been brought back too late 'Rent-A-Car' start to give fines
 And 10 cars were rented
 And 8  cars were brought back too late 
 When I get the rented cars back
 Then each customer who brought back the car on time is at most 2
 And the first 5 who brought back the car too late do not get a fine
 And there should be at most 3 customers that get a fine
