-- Question 1
-- Database Creation
CREATE DATABASE LAB1;
USE LAB1;
-- Table Creation
CREATE TABLE AUTHOR (
    AUTHOR_ID INT NOT NULL,
    NAME VARCHAR(20),
    CITY VARCHAR(20),
    COUNTRY VARCHAR(20),
    PRIMARY KEY(AUTHOR_ID)
);
-- Add Entries
INSERT INTO AUTHOR (
    AUTHOR_ID,
    NAME,
    CITY,
    COUNTRY
)
VALUES (
    1,
    'JKR',
    'LONDON',
    'UK'
);
-- III
SELECT COUNT(AUTHOR_ID) FROM AUTHOR;
--- IV
SELECT C.NAME
FROM CATALOG AS C, 
(
    SELECT BOOK_ID, MAX(QUANTITY)
    FROM ORDER_DETAILS
    ORDER BY BOOK_ID
) AS D
WHERE C.BOOK_ID = D.BOOK_ID

SELECT C.NAME
FROM CATALOG C
JOIN ORDER_DETAILS D
ON C.BOOK_ID = D.BOOK_ID
ORDER BY D.QUANTITY
LIMIT 1

-- Question 2
-- I
SELECT *
FROM BOOK
WHERE YR_PUB = 1992
;
-- II
SELECT *
FROM BOOK
WHERE ACC_NO > 56782
;
-- III
SELECT TITLE, ACC_NO
FROM BOOK
;
-- IV
SELECT ACC_NO AS SERIAL_NO, YR_PUB AS YR
FROM BOOK
;

-- Question 3
-- III
SELECT *
FROM LOAN
WHERE AMOUNT > 12000
;
-- IV
SELECT BRANCH_NAME
FROM BRANCH
WHERE BRANCH_CITY = 'ABC'
;
-- V
SELECT CUST_NAME
FROM DEPOSITOR
WHERE ACC_NO = 3
;
-- VI
SELECT CUST_NAME
FROM CUSTOMER
WHERE CUST_NAME LIKE 'H%'
;
