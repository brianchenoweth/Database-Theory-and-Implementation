--Brian Chenoweth
--masc2118, et52
—-814826513
--#1
spool nameset.dat
set echo on
set pages 100
set serveroutput on

DECLARE
    CURSOR pinfo(name VARCHAR2) IS SELECT empno, fname, nick FROM infobb02 WHERE empno = name;
    CURSOR p(n NUMBER) IS SELECT empno, ename, sal, deptno FROM empbb02 WHERE deptno = n;

eval empbb02%ROWTYPE;
infoval infobb02%ROWTYPE;

BEGIN
    FOR eval IN p(30) LOOP
        FOR infoval IN pinfo(eval.empno) LOOP
        
        IF (eval.sal < 20000) 
        THEN 
        DBMS_OUTPUT.PUT_LINE(infoval.fname || ' ' || infoval.nick || ' ' || eval.ename || ' is a bargain ');
        
        ELSIF ((20000 < eval.sal) AND (eval.sal > 84000)) 
        THEN
        DBMS_OUTPUT.PUT_LINE(infoval.fname || ' ' || infoval.nick || ' ' || eval.ename || ' is affordable ');
        
        ELSE
        DBMS_OUTPUT.PUT_LINE(infoval.fname || ' ' || infoval.nick || ' ' || eval.ename || ' is trade bait ');
        
        END IF;
        END LOOP;
    END LOOP;

FOR eval IN p(20) LOOP
        FOR infoval IN pinfo(eval.empno) LOOP
        
        IF (eval.sal < 20000) 
        THEN 
        DBMS_OUTPUT.PUT_LINE(infoval.fname || ' ' || infoval.nick || ' ' || eval.ename || ' is a bargain ');
        
        ELSIF ((20000 < eval.sal) AND (eval.sal > 84000)) 
        THEN
        DBMS_OUTPUT.PUT_LINE(infoval.fname || ' ' || infoval.nick || ' ' || eval.ename || ' is affordable ');
        
        ELSE
        DBMS_OUTPUT.PUT_LINE(infoval.fname || ' ' || infoval.nick || ' ' || eval.ename || ' is trade bait ');
        
        END IF;
        END LOOP;
    END LOOP;  

FOR eval IN p(10) LOOP
        FOR infoval IN pinfo(eval.empno) LOOP
        
        IF (eval.sal < 20000) 
        THEN 
        DBMS_OUTPUT.PUT_LINE(infoval.fname || ' ' || infoval.nick || ' ' || eval.ename || ' is a bargain ');
        
        ELSIF ((20000 < eval.sal) AND (eval.sal > 84000)) 
        THEN
        DBMS_OUTPUT.PUT_LINE(infoval.fname || ' ' || infoval.nick || ' ' || eval.ename || ' is affordable ');
        
        ELSE
        DBMS_OUTPUT.PUT_LINE(infoval.fname || ' ' || infoval.nick || ' ' || eval.ename || ' is trade bait ');
        
        END IF;
        END LOOP;
    END LOOP;
END;
/

--#2
CREATE OR REPLACE FUNCTION getUni(name IN empbb02.ename%TYPE)
    RETURN infobb02.uni%TYPE AS uniNum infobb02.uni%TYPE;
    
BEGIN
    SELECT uni INTO uniNum FROM empbb02, infobb02 WHERE empbb02.empno = infobb02.empno AND name = ename;
    RETURN (uniNum);
END;
/

spool playeruniform.dat
set echo on
set pages 100
SELECT ename, getUni('mungo') AS "Uniform Number" FROM empbb02 WHERE empbb02.ename = 'mungo';
SELECT ename, getUni('mays') AS "Uniform Number" FROM empbb02 WHERE empbb02.ename = 'mays';

--#3
--(a)
ALTER TABLE infobb02 ADD CONSTRAINT infobb02_uniCheck CHECK (uni <> ALL ('9', '28', '32'));

--(b)
INSERT INTO infobb02 VALUES ('123', 'max', 'blank', '9', null, null);
INSERT INTO infobb02 VALUES ('234', 'brian', 'blank', '28', null, null);
INSERT INTO infobb02 VALUES ('345', 'anderson', 'blank', '32', null, null);

--#4
CREATE TABLE hello (blobid NUMBER (10), mypic BLOB, mydisc CLOB);

INSERT INTO hello VALUES(1, null, 'It was the best of times, it was the worst of times, it was the age of wisdom, it was the age of foolishness, it was the epoch of belief, it was the epoch of incredulity, it was the season of Light, it was the season of Darkness, it was the spring of hope, it was the winter of despair, we had everything before us, we had nothing before us, we were all going direct to Heaven, we were all going direct the other way–in short, the period was so far like the present period, that some of its noisiest authorities insisted on its being received, for good or for evil, in the superlative degree of comparison only.');
INSERT INTO hello VALUES(2, null, 'Hello, Professor');
INSERT INTO hello VALUES(3, null, 'Goodbye, Professor');

SELECT blobid, mydisc FROM hello;
set long 800;
SELECT blobid, mydisc FROM hello;

--#5
set echo on
set pages 100

CREATE TABLE newhires (empno VARCHAR2(10), ename VARCHAR2(10), hiredate DATE, status VARCHAR2(10);

CREATE OR REPLACE TRIGGER copy AFTER INSERT ON empbb02 FOR EACH ROW
    BEGIN
        INSERT INTO newhires VALUES (:new.empno, :new.ename, :new.hiredate, 'pending');
    END;
    /

INSERT INTO empbb02 VALUES ('678', 'johnson', 'shortstop', '123', '02-JUL-16', 10010, 20, null);
INSERT INTO empbb02 VALUES ('902', 'boris', 'catcher', '139', '19-AUG-16', 30020, 30, null);
SELECT * FROM newhires
set echo off
