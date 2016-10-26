-- Brian Chenoweth
-- 814826513
-- masc2118, st52
-- CS 514, HW 2

-- 1. Make empno the primary key for both empbb02, and infobb02,
-- and make deptno the primary key for deptbb02. Use the 
-- constraint naming convention give in class, both here and in
-- all such problems below.

ALTER TABLE empbb02 ADD CONSTRAINT empbb02_EMPNO_pk PRIMARY KEY (EMPNO);

ALTER TABLE infobb02 ADD CONSTRAINT infobb02_EMPNO_pk PRIMARY KEY (EMPNO);

ALTER TABLE deptbb02 ADD CONSTRAINT deptbb02_EMPNO_pk PRIMARY KEY (EMPNO);

DESC empbb02;

DESC infobb02;

DESC deptbb02;


-- 2.Display ename and hiredate in the following way.  The date should
-- be displayed numerically as it would be done in France.
-- Use the column alias French Date, and also Last Name.  Use Google
-- to learn about French dates.

SELECT empbb02 TO_CHAR(sysdate, DD,MON,YYYY) FROM DUAL;


-- 3. Make a suitable multi-column primary key for salsbb02.

ALTER TABLE salsbb02 ADD CONSTRAINT salsbb02_losal_hisal_pk PRIMARY KEY(LOSAL,HISAL);


-- 4. Make dname a unique key (unique constraint) in deptbb02, mostly
-- to confirm that you CAN.

ALTER TABLE deptbb02 ADD CONSTRAINT deptbb02_dname_uk UNIQUE KEY(DNAME);

DESC deptbb02;

SELECT * FROM deptbb02;


-- 5. When your display all of deptbb02, the motto 'wraps', and appears 
-- on a second line. Play with the COLUMN pseudo-op until you can 
-- 'fix' this.   E.g. column dname format a10 limits the print width of 
-- dname to 10 bytes.  It is temporary, of course.  You can Google this 
-- pseudo-op as needed.

SELECT * FROM deptbb02;

column motto format a10;
SELECT * FROM deptbb02;


-- 6. Make empno a foreign key in infobb02 (parent table is empbb02);
-- also make deptno a foreign key in empbb02 (parent table is deptbb02)

ALTER TABLE infobb02 ADD CONSTRAINT infobb02_empbb02_fk FOREIGN KEY (empno) REFERENCES empbb02 (empno);

ALTER TABLE empbb02 ADD CONSTRAINT empbb02_deptbb02_fk FOREIGN KEY (deptno) REFERENCES deptbb02 (deptno);


-- 7. The boss dated a lady named Suzie Q, gave her a third of the 
-- franchise, and she ditched him for a race car driver.   He will now
-- not hire a player whose last name starts with 'q'.  Make this a  
-- 'check' constraint.

ALTER TABLE empbb02 ADD CONSTRAINT empbb02_ename_ck CHECK(ename NOT LIKE ('q%'));


-- 8. Test your check constraint in 7. by trying to 'hire' the  
-- player, Dan Quisenberry.  NOTE: you will need to also widen
-- the field width of ename, just to make hiring this guy possible.
-- To do that use  ALTER TABLE empbb02 MODIFY ename VARCHAR2(16), or
-- some other adequate width.

ALTER TABLE empbb02 MODIFY ename VARCHAR2(16);

INSERT INTO empbb02 VALUES(700,'quisenbery','pitcher','800','01-JAN-1992',10000,40,4000);


-- 9. In the terminology of foreign keys, you should not be allowed to 
-- drop a parent table, if it still has children. The parenting obligation 
-- is eternal...Verify this using your tables. BE CAREFUL not to lose a table
-- you do not have backup for. :)

DROP TABLE empbb02;

DROP TABLE deptbb02;


-- 10. Add Charles Bender to the roster. Get his nickname, and position by
-- Google. Uniform number might be a challenge.

INSERT INTO empbb02 VALUES ('988','bender','pitcher',null,'12-JAN-16',2000,40,null);

INSERT INTO infobb02 VALUES ('988','charles','chief'null,2.46,null);


-- 11. Most of our team is in the Hall of Fame at Cooperstown. Add a column
-- to infobb02 with the date of their hall of fame induction, and use
-- Google to fill it in. Name the column hofdate. The command you
-- need is ALTER TABLE infobb02 ADD...followed by column descriptor.

ALTER TABLE infobb02 ADD hofdate NUMBER(6);

UPDATE infobb02 SET hofdate = 1967 WHERE empno = '712';
UPDATE infobb02 SET hofdate = 1997 WHERE empno = '735';
UPDATE infobb02 SET hofdate = 1939 WHERE empno = '782';
UPDATE infobb02 SET hofdate = 2005 WHERE empno = '788';
UPDATE infobb02 SET hofdate = 1949 WHERE empno = '721';
UPDATE infobb02 SET hofdate = 1979 WHERE empno = '799';
