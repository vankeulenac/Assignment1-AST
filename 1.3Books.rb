Feature: to lend a book to a customer

  In order to lend out books
	As an employee of the library 'UBA'
	I want to have an algorithm to do this for me

	Scenario: with all books returning on time 
		Given the library 'UBA'
		And 5 books are rented
		And 15 days is the due_date of 'UBA' 
		And 5 books are returned before the due_date
		When I receive the books
		Then each book is returned on time

	Scenario: with books returning too late 
		Given the library 'UBA'
		And the library 'UBA' gives fines for returning a book too late
		And 8 books are rented
		And after 16 days is the fine_date of 'UBA'
		And 5 books are returned before the fine_date
		When I receive the books
		Then 3 customers receive fines

	Scenario: with more books than gifts
		Given the library 'UBA'
		And during kinderboeken week each customer gets at most 1 gift
		And each customer can rent at most 5 books
		And 1 customer rents 5 books 
		And 22 books were lend out 
		When I give the gifts
		Then at least 5 gifts were given 
		And at most 17 gifts were given
