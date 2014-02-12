-- Michael_Cassar_1HND6S_SectionE

-- Scripts Used for User Manual

-- PERSON Insert Statements

INSERT INTO USERACCOUNT (user_account_id, username, password, 
                         secret_question, secretanswer, userrolefk)
VALUES (USERACCOUNT_SEQUENCE.NEXTVAL, 'CApap', 'Shh123',
        'What is your mothers maiden name?', 'Cutajar', 3);

INSERT INTO EMPLOYEE (employeeid, employmentdate, managerid)
VALUES (EMPLOYEE_SEQUENCE.NEXTVAL, '23-AUG-03', NULL);

INSERT INTO PERSON (person_id, residence_name, date_of_birth, email,
                    contact_number, vatnumber, useraccountfk, firstname, 
                    lastname, employeefk, clientfk, streetfk)
VALUES (PERSON_SEQUENCE.NEXTVAL, '113', '12-JAN-89', 'christian.apap@live.com',
        '+44 77122457', 103435910291, USERACCOUNT_SEQUENCE.CURRVAL, 'Christian', 
        'Apap', EMPLOYEE_SEQUENCE.CURRVAL, NULL, 2);
       
--

INSERT INTO USERACCOUNT (user_account_id, username, password, 
                         secret_question, secretanswer, userrolefk)
VALUES (USERACCOUNT_SEQUENCE.NEXTVAL, 'PPort', 'Shh123',
        'What is your favourite color?', 'Blue', 1);

INSERT INTO CLIENT (clientid, registrationdate)
VALUES (CLIENT_SEQUENCE.NEXTVAL, '15-MAY-02');

INSERT INTO PERSON (person_id, residence_name, date_of_birth, email,
                    contact_number, vatnumber, useraccountfk, firstname, 
                    lastname, employeefk, clientfk, streetfk)
VALUES (PERSON_SEQUENCE.NEXTVAL, 'Serenity', '01-JUL-91', 'peter.portelli@gmail.com',
        '+99 78290121', NULL, USERACCOUNT_SEQUENCE.CURRVAL, 'Peter', 'Portelli',
        NULL, CLIENT_SEQUENCE.CURRVAL, 3);
        
-- PERSON UPDATE STATEMENTS

UPDATE PERSON
SET residence_name = '112', vatnumber = 1129229990
WHERE person_id = 2;

UPDATE PERSON
SET residence_name = '112', date_of_birth = '12-JAN-83', 
    email = 'michael.c@me.com', contact_number = '21659967'
WHERE person_id = 1;

-- PERSON DELETE STATEMENTS

DELETE FROM PERSON
WHERE last_name = 'Portelli';

DELETE FROM PERSON
WHERE person_id = 1;