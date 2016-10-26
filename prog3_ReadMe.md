   These are mostly PL/SQL, one way or the other.  Use your own Oracle,
   if you installed one, or use the tutorialspoint sqlplus simulator.

	**on problem (1) you should print 10 line, not 15
	revision as follows:


   1. Write an anonymous PL/SQL block which has a cursor initialized
     to some fields of the join of emp and info for departments numbered
     less than 40.  Use pl/sql output to say something like Mike theMouse
     Michaels 'is a bargain', if his salary is less than 20000, or 'is
     affordable' if his salary is higher, but less than 84000, or
     'is trade bait' for the others.  You should have 10 sentences in
     your output.

   2. Write a stored function whose input is a player last name and whose
      output is the uniform number of that player.   Write a script that
      tests this function for 'mungo' from an SQL statement, and tests the
      function for 'mays' using the magic word execute.

   ---next one is review---
   3. (a) Your team had much loved and talented players named
         Tinker, Evers, and Chance.   The team has decided to retire
         their uniform numbers: 9 28 32.   Write code in the form of a
         check constraint to make sure no new player is assigned these
         numbers.

      (b) check that your condition is working, and show the error
         message that results from a constraint violation.

   4. ----this explores new turf-------
     Asuume your Aunt Tilly wants to put pictures of her trip to UB1500 to
     see your classroom into a database.  Create a table with fields blobid,
     mypic, mydisc of types NUMBER, BLOB and CLOB respectively.  Insert a
     couple of rows, with mypic null.  One of the clobs should be the first
     sentence from the novel Tale of Two Cities, since sdsu seemed
     passing strange, and she was reminded of that book.  Try
     select  blobid, mydisc from your table.  Then type
     set long 800, and try that again.  Write sentences in your hw saying
     what you learned.  Getting a pic into the blob column will be discussed
     later.

   5. Your immediate supervisor, who has an MBA and must be obeyed, imposes
       the participation constraint that every new employee participate in
       orientation. Add a table called newhires, with fields empno, ename,
       hiredate, status. Write a trigger so that if you add an employee, he/she will
       be placed in the newhires table with status 'pending'.  Presumably,
       after attending orientation, the new hire can be deleted from the
       newhires table, or his status changed.
       Test your code by adding at least two new employees.
