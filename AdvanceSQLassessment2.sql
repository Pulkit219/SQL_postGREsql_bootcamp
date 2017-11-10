
--How can you retrieve all the information from the cd.facilities table?
SELECT * FROM cd.facilities;

--You want to print out a list of all of the facilities and their cost to members. How would you retrieve a list of only facility names and costs?
SELECT name,membercost FROM cd.facilities;

--How can you produce a list of facilities that charge a fee to members?
SELECT name,membercost FROM cd.facilities WHERE membercost>0;

--How can you produce a list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost? Return the facid, facility name, member cost, and monthly maintenance of the facilities in question.
select facid, name, membercost, monthlymaintenance from cd.facilities where membercost > 0 and (membercost < monthlymaintenance/50.0);

--How can you produce a list of all facilities with the word 'Tennis' in their name?
SELECT name,membercost FROM cd.facilities WHERE name ILIKE '%Tennis%';

--How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.
