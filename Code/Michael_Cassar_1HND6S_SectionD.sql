-- Michael_Cassar_1HND6S_SectionD

-- Creating Sequences

CREATE SEQUENCE USERROLE_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 10;

CREATE SEQUENCE USERACCOUNT_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 60;

CREATE SEQUENCE ORDER_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 60;

CREATE SEQUENCE ITEM_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 30;

CREATE SEQUENCE ITEMCATEGORY_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 10;

CREATE SEQUENCE DEPARTMENT_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 10;

CREATE SEQUENCE STORE_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 5;

CREATE SEQUENCE TOWN_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 10;

CREATE SEQUENCE COUNTRY_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 10;

CREATE SEQUENCE PERSON_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 60;

CREATE SEQUENCE EMPLOYEE_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 30;

CREATE SEQUENCE CLIENT_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 30;

CREATE SEQUENCE STREET_SEQUENCE
  INCREMENT BY 1
  START WITH 1
  NOMAXVALUE
  NOMINVALUE
  NOCYCLE
  CACHE 30;

-- COUNTRY INSERTS

INSERT INTO COUNTRY (country_id, country_name)
VALUES (COUNTRY_SEQUENCE.NEXTVAL, 'Malta');

INSERT INTO COUNTRY (country_id, country_name)
VALUES (COUNTRY_SEQUENCE.NEXTVAL, 'United Kingdom');

INSERT INTO COUNTRY (country_id, country_name)
VALUES (COUNTRY_SEQUENCE.NEXTVAL, 'Australia');

-- TOWN INSERTS

INSERT INTO TOWN (town_id, countryfk, townname)
VALUES (TOWN_SEQUENCE.NEXTVAL, 1, 'Birzebbuga');

INSERT INTO TOWN (town_id, countryfk, townname)
VALUES (TOWN_SEQUENCE.NEXTVAL, 2, 'Ealing');

INSERT INTO TOWN (town_id, countryfk, townname)
VALUES (TOWN_SEQUENCE.NEXTVAL, 3, 'Canberra');

-- STREET INSERTS

INSERT INTO STREET (streetid, streetname, postcode, townfk)
VALUES (STREET_SEQUENCE.NEXTVAL, 'Wied il-Buni', 'BBG2653', 1);

INSERT INTO STREET (streetid, streetname, postcode, townfk)
VALUES (STREET_SEQUENCE.NEXTVAL, 'Fulmer Way', 'W132DY', 2);

INSERT INTO STREET (streetid, streetname, postcode, townfk)
VALUES (STREET_SEQUENCE.NEXTVAL, 'Alinga Street', 'ACT2601', 3);

-- USERROLE INSERTS

INSERT INTO USERROLE (role_id, role_name)
VALUES (USERROLE_SEQUENCE.NEXTVAL, 'Guest');

INSERT INTO USERROLE (role_id, role_name)
VALUES (USERROLE_SEQUENCE.NEXTVAL, 'System Administrator');

INSERT INTO USERROLE (role_id, role_name)
VALUES (USERROLE_SEQUENCE.NEXTVAL, 'Normal User');

-- USERACCOUNT INSERTS

INSERT INTO USERACCOUNT (user_account_id, username, password, 
                         secret_question, secretanswer, userrolefk)
VALUES (USERACCOUNT_SEQUENCE.NEXTVAL, 'JBorg', 'Shh123',
        'What is your mothers maiden name?', 'Vella', 1);
        
INSERT INTO USERACCOUNT (user_account_id, username, password, 
                         secret_question, secretanswer, userrolefk)
VALUES (USERACCOUNT_SEQUENCE.NEXTVAL, 'FVella', 'Quiet123',
        'What is your fathers birth place?', 'Pieta', 1);
        
INSERT INTO USERACCOUNT (user_account_id, username, password, 
                         secret_question, secretanswer, userrolefk)
VALUES (USERACCOUNT_SEQUENCE.NEXTVAL, 'MCassar', 'Password123',
        'Who was your first teacher?', 'Ms. Bahram', 2);
        
INSERT INTO USERACCOUNT (user_account_id, username, password, 
                         secret_question, secretanswer, userrolefk)
VALUES (USERACCOUNT_SEQUENCE.NEXTVAL, 'RSaliba', 'Secret123',
        'What color was your first car?', 'Yellow', 3);
        
-- ITEM CATEGORY INSERTS

INSERT INTO ITEMCATEGORY (category_id, category_name)
VALUES (ITEMCATEGORY_SEQUENCE.NEXTVAL, 'Electronics');

INSERT INTO ITEMCATEGORY (category_id, category_name)
VALUES (ITEMCATEGORY_SEQUENCE.NEXTVAL, 'Food');

INSERT INTO ITEMCATEGORY (category_id, category_name)
VALUES (ITEMCATEGORY_SEQUENCE.NEXTVAL, 'Clothing');

-- PERSON AND SUBTYPE INSERTS

INSERT INTO EMPLOYEE (employeeid, employmentdate, managerid)
VALUES (EMPLOYEE_SEQUENCE.NEXTVAL, '18-JAN-07', NULL);

INSERT INTO PERSON (person_id, residence_name, date_of_birth, email,
                    contact_number, vatnumber, useraccountfk, firstname, 
                    lastname, employeefk, clientfk, streetfk)
VALUES (PERSON_SEQUENCE.NEXTVAL, 'Edera', '02-AUG-90', 'michael.cassar@me.com',
        '+356 99579418', 033103912208, 3, 'Michael', 'Cassar',
        EMPLOYEE_SEQUENCE.CURRVAL, NULL, 1);

--

INSERT INTO EMPLOYEE (employeeid, employmentdate, managerid)
VALUES (EMPLOYEE_SEQUENCE.NEXTVAL, '23-JUN-09', 1);

INSERT INTO PERSON (person_id, residence_name, date_of_birth, email,
                    contact_number, vatnumber, useraccountfk, firstname, 
                    lastname, employeefk, clientfk, streetfk)
VALUES (PERSON_SEQUENCE.NEXTVAL, '12', '12-JAN-92', 'rachel.saliba@live.com',
        '+44 77223457', 109210910291, 4, 'Rachel', 'Saliba',
        EMPLOYEE_SEQUENCE.CURRVAL, NULL, 2);
       
--

INSERT INTO CLIENT (clientid, registrationdate)
VALUES (CLIENT_SEQUENCE.NEXTVAL, '05-JUL-02');

INSERT INTO PERSON (person_id, residence_name, date_of_birth, email,
                    contact_number, vatnumber, useraccountfk, firstname, 
                    lastname, employeefk, clientfk, streetfk)
VALUES (PERSON_SEQUENCE.NEXTVAL, '136', '01-APR-91', 'frans.vella@gmail.com',
        '+99 89221920', NULL, 2, 'Frans', 'Vella', NULL, CLIENT_SEQUENCE.CURRVAL,
        3);
--

INSERT INTO CLIENT (clientid, registrationdate)
VALUES (CLIENT_SEQUENCE.NEXTVAL, '01-MAY-06');

INSERT INTO PERSON (person_id, residence_name, date_of_birth, email,
                    contact_number, vatnumber, useraccountfk, firstname, 
                    lastname, employeefk, clientfk, streetfk)
VALUES (PERSON_SEQUENCE.NEXTVAL, 'Lapis Lazuli', '07-FEB-85', 'joeborg@yahoo.com',
        '+356 99443321', NULL, 1, 'Joe', 'Borg', NULL, CLIENT_SEQUENCE.CURRVAL,
        1);
      
-- STORE INSERTS

INSERT INTO STORE (store_id, store_name, streetfk)
VALUES (STORE_SEQUENCE.NEXTVAL, 'La Bonbonniere', 1);

INSERT INTO STORE (store_id, store_name, streetfk)
VALUES (STORE_SEQUENCE.NEXTVAL, 'DDS LTD', 2);

INSERT INTO STORE (store_id, store_name, streetfk)
VALUES (STORE_SEQUENCE.NEXTVAL, 'TechPoint Solutions', 3);

-- DEPARTMENT INSERTS

INSERT INTO DEPARTMENT (department_id, department_name, storefk)
VALUES (DEPARTMENT_SEQUENCE.NEXTVAL, 'Sales', 1);

INSERT INTO DEPARTMENT (department_id, department_name, storefk)
VALUES (DEPARTMENT_SEQUENCE.NEXTVAL, 'e-Commerce', 2);

INSERT INTO DEPARTMENT (department_id, department_name, storefk)
VALUES (DEPARTMENT_SEQUENCE.NEXTVAL, 'Microchips', 3);

-- ITEM INSERTS

INSERT INTO ITEM (item_id, item_name, item_price, thumbnail, itemcategoryfk,
                  departmentfk, storefk)
VALUES (ITEM_SEQUENCE.NEXTVAL, 'MicrochipZXF', 215.87, NULL, 1, 3, 3);

INSERT INTO ITEM (item_id, item_name, item_price, thumbnail, itemcategoryfk,
                  departmentfk, storefk)
VALUES (ITEM_SEQUENCE.NEXTVAL, 'Pizza', 2.50, NULL, 2, 1, 1);

INSERT INTO ITEM (item_id, item_name, item_price, thumbnail, itemcategoryfk,
                  departmentfk, storefk)
VALUES (ITEM_SEQUENCE.NEXTVAL, 'Long Sleeve Shirt 73EF', 12.99, NULL, 3, 2, 2);

-- ORDER INSERTS

INSERT INTO ORDERS (order_id, order_date, useraccountfk)
VALUES (ORDER_SEQUENCE.NEXTVAL, '12-MAR-11', 2);

INSERT INTO ORDERS (order_id, order_date, useraccountfk)
VALUES (ORDER_SEQUENCE.NEXTVAL, '01-JAN-10', 1);

INSERT INTO ORDERS (order_id, order_date, useraccountfk)
VALUES (ORDER_SEQUENCE.NEXTVAL, '07-FEB-12', 3);

-- ORDERITEM INSERTS

INSERT INTO ORDERITEM (orderfk, itemfk, departmentfk, storefk, quantity)
VALUES (1, 1, 3, 3, 12);

INSERT INTO ORDERITEM (orderfk, itemfk, departmentfk, storefk, quantity)
VALUES (2, 2, 1, 1, 1);

INSERT INTO ORDERITEM (orderfk, itemfk, departmentfk, storefk, quantity)
VALUES (3, 3, 2, 2, 5);

-- COMMITTING INSERTS

COMMIT; 

-- NOT NULL CONSTRAINT

INSERT INTO COUNTRY(country_id, country_name)
VALUES (COUNTRY_SEQUENCE.NEXTVAL, NULL);

INSERT INTO USERROLE(role_id, role_name)
VALUES (USERROLE_SEQUENCE.NEXTVAL, NULL);

-- UNIQUE CONSTRAINTS

INSERT INTO CLIENT (clientid, registrationdate)
VALUES (CLIENT_SEQUENCE.NEXTVAL, '01-JUN-06');
 
INSERT INTO PERSON (person_id, residence_name, date_of_birth, email,
                    contact_number, vatnumber, useraccountfk, firstname, 
                    lastname, employeefk, clientfk, streetfk)
VALUES (PERSON_SEQUENCE.NEXTVAL, '704', '07-JUL-87', 'joecassar@yahoo.com',
        '+356 99412121', NULL, 1, 'Joe', 'Cassar', NULL, CLIENT_SEQUENCE.CURRVAL,
        1);

--

INSERT INTO EMPLOYEE (employeeid, employmentdate, managerid)
VALUES (EMPLOYEE_SEQUENCE.NEXTVAL, '23-JAN-09', 1);

-- CHECK CONSTRAINT

-- Inserting required dependencies

INSERT INTO USERACCOUNT (user_account_id, username, password, 
                         secret_question, secretanswer, userrolefk)
VALUES (USERACCOUNT_SEQUENCE.NEXTVAL, 'RAxisa', 'Silent123',
        'What color was your first car?', 'RED', 1);

INSERT INTO CLIENT (clientid, registrationdate)
VALUES (CLIENT_SEQUENCE.NEXTVAL, '01-FEB-07');

INSERT INTO EMPLOYEE (employeeid, employmentdate, managerid)
VALUES (EMPLOYEE_SEQUENCE.NEXTVAL, '01-FEB-07', NULL);

-- Testing CHECK

INSERT INTO PERSON (person_id, residence_name, date_of_birth, email,
                    contact_number, vatnumber, useraccountfk, firstname, 
                    lastname, employeefk, clientfk, streetfk)
VALUES (PERSON_SEQUENCE.NEXTVAL, 'L-Arzella', '07-OCT-73', 'ryanaxisa@yahoo.com',
        '+356 99443321', NULL, USERACCOUNT_SEQUENCE.CURRVAL, 'Ryan', 'Axisa',
        EMPLOYEE_SEQUENCE.CURRVAL, CLIENT_SEQUENCE.CURRVAL, 1);

-- Inserting required dependencies

INSERT INTO USERACCOUNT (user_account_id, username, password, 
                         secret_question, secretanswer, userrolefk)
VALUES (USERACCOUNT_SEQUENCE.NEXTVAL, 'JCutajar', 'Locked123',
        'What color was your first car?', 'Blue', 1);

INSERT INTO CLIENT (clientid, registrationdate)
VALUES (CLIENT_SEQUENCE.NEXTVAL, '01-JUL-02');

INSERT INTO EMPLOYEE (employeeid, employmentdate, managerid)
VALUES (EMPLOYEE_SEQUENCE.NEXTVAL, '01-JUL-02', NULL);

-- Testing CHECK

INSERT INTO PERSON (person_id, residence_name, date_of_birth, email,
                    contact_number, vatnumber, useraccountfk, firstname, 
                    lastname, employeefk, clientfk, streetfk)
VALUES (PERSON_SEQUENCE.NEXTVAL, '700', '07-SEP-71', 'johncutajar@yahoo.com',
        '+356 99113112', NULL, USERACCOUNT_SEQUENCE.CURRVAL, 'John', 'Cutajar',
        NULL, NULL, 1);

-- Entity Integrity Rule

-- Explenation in Documentation - Page 23

INSERT INTO COUNTRY (country_id, country_name)
VALUES (NULL, 'Ireland');

INSERT INTO COUNTRY (country_id, country_name)
VALUES (1, 'Ireland');

-- Referential Integrity Rule

-- Explenation in Documentation - Page 23

ALTER TABLE TOWN
DROP CONSTRAINT TOWN_CountryFK_FK;

ALTER TABLE TOWN
MODIFY (CountryFK NUMBER(4)
           CONSTRAINT TOWN_COUNTRYFK_FK
           REFERENCES COUNTRY(Country_ID));

INSERT INTO TOWN (town_id, countryfk, townname)
VALUES (TOWN_SEQUENCE.NEXTVAL, 500, 'Missisipi');

DELETE FROM COUNTRY
WHERE Country_id = 1;

ALTER TABLE TOWN
DROP CONSTRAINT TOWN_CountryFK_FK;

ALTER TABLE TOWN
MODIFY (CountryFK NUMBER(4)
           CONSTRAINT TOWN_COUNTRYFK_FK
           REFERENCES COUNTRY(Country_ID)
           ON DELETE CASCADE);