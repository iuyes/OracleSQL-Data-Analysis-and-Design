-- Michael_Cassar_1HND6S_SectionC

-- Explenation in Documentation - Page 11

-- Question 1

CREATE FORCE VIEW GUESTACCOUNTS
AS
  SELECT username,
         password,
         role_id
  FROM USERACCOUNT UA
  JOIN USERROLE UR
  ON (UA.userrolefk = UR.role_id)
  WHERE LOWER(UR.role_name) = 'guest'
  WITH CHECK OPTION
    CONSTRAINT GUESTACCOUNTS_CO;
  
-- Question 2

CREATE OR REPLACE FORCE VIEW PERSONDETAILS
AS
  SELECT p.firstname,
         p.lastname,
         p.date_of_birth,
         p.contact_number,
         p.residence_name,
         s.streetname,
         t.townname,
         co.country_name
  FROM PERSON p
  JOIN STREET s
  ON (p.streetfk = s.streetid)
  JOIN TOWN t
  ON (s.townfk = t.town_id)
  JOIN COUNTRY co
  ON (t.countryfk = co.country_id)
  WITH READ ONLY
    CONSTRAINT PERSONDETAILS_RO;