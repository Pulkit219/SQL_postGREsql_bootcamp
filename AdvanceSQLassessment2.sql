--How can you retrieve all the information from the cd.facilities table?
SELECT * FROM cd.facilities;
SELECT * FROM cd.bookings;

--You want to print out a list of all of the facilities and their cost to members. How would you retrieve a list of only facility names and costs?
SELECT name,membercost FROM cd.facilities;

--How can you produce a list of facilities that charge a fee to members?
SELECT name,membercost FROM cd.facilities WHERE membercost>0;

--How can you produce a list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost? Return the facid, facility name, member cost, and monthly maintenance of the facilities in question.
select facid, name, membercost, monthlymaintenance from cd.facilities where membercost > 0 and (membercost < monthlymaintenance/50.0);

--How can you produce a list of all facilities with the word 'Tennis' in their name?
SELECT name,membercost FROM cd.facilities WHERE name ILIKE '%Tennis%';

--How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.
SELECT * FROM cd.facilities WHERE facid IN (1,5);

--How can you produce a list of members who joined after the start of September 2012? Return the memid, surname, firstname, and joindate of the members in question.
SELECT * FROM cd.members;
SELECT  memid, surname, firstname, joindate FROM cd.members WHERE joindate > '2012-09-01';

--How can you produce an ordered list of the first 10 surnames in the members table? The list must not contain duplicates.
SELECT  DISTINCT(surname) FROM cd.members ORDER BY surname LIMIT 10;

--You'd like to get the signup date of your last member. How can you retrieve this information?
SELECT  memid, surname, firstname, joindate FROM cd.members ORDER BY joindate DESC;
--OR
select max(joindate) as latest from cd.members;

--Produce a count of the number of facilities that have a cost to guests of 10 or more.
SELECT  COUNT(name) FROM cd.facilities WHERE guestcost >=10;

--Produce a list of the total number of slots booked per facility in the month of September 2012. Produce an output table consisting of facility id and slots, sorted by the number of slots.
SELECT facid,SUM(slots) FROM cd.bookings WHERE starttime BETWEEN '2012-09-01' AND '2012-09-30' GROUP BY facid ORDER BY SUM(slots);
--OR
select facid, sum(slots) as "Total Slots" from cd.bookings where starttime >= '2012-09-01' and starttime < '2012-10-01' group by facid order by sum(slots);


--Produce a list of facilities with more than 1000 slots booked. Produce an output table consisting of facility id and total slots, sorted by facility id.
SELECT facid,SUM(slots) AS "Total Slots" FROM cd.bookings GROUP BY facid HAVING SUM(slots)>1000 ORDER BY SUM(slots);

--How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? Return a list of start time and facility name pairings, ordered by the time.
SELECT * FROM cd.bookings;
SELECT * FROM cd.facilities;
SELECT * FROM cd.members;
SELECT starttime,name FROM cd.bookings INNER JOIN cd.facilities ON cd.facilities.facid =cd.bookings.facid WHERE name ILIKE '%tennis%' AND starttime = '2012-09-21';
SELECT starttime,name FROM cd.bookings INNER JOIN cd.facilities ON cd.facilities.facid =cd.bookings.facid WHERE name ILIKE '%tennis%' AND starttime >= '2012-09-21' AND starttime < '2012-09-22' order by starttime ;
SELECT starttime,name FROM cd.bookings INNER JOIN cd.facilities ON cd.facilities.facid =cd.bookings.facid WHERE cd.facilities.facid IN (0,1) AND
starttime >= '2012-09-21' AND starttime < '2012-09-22' order by starttime;


--How can you produce a list of the start times for bookings by members named 'David Farrell'?
SELECT * FROM cd.bookings;
SELECT * FROM cd.facilities;
SELECT * FROM cd.members;
SELECT starttime,firstname,surname FROM cd.bookings INNER JOIN cd.members ON cd.members.memid =cd.bookings.memid WHERE firstname ILIKE 'david' AND surname ILIKE 'farrell';


