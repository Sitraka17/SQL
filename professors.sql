-- Calculate the net amount as amount + fee
SELECT transaction_date, amount + CAST(fee AS integer) AS net_amount 
FROM transactions;

--
ALTER TABLE professors 
ALTER COLUMN firstname 
TYPE varchar(16)
USING SUBSTRING(firstname FROM 1 FOR 16)


-- Make universities.university_shortname unique
ALTER TABLE universities
ADD CONSTRAINT university_shortname_unq UNIQUE(university_shortname);
-- Make organizations.organization unique
ALTER TABLE organizations
ADD CONSTRAINT organization_unq UNIQUE(organization);

-------------------------------------------------------------------------------------
-- Count the number of distinct values in the university_city column
SELECT COUNT(DISTINCT(university_city)) 
FROM universities;


-- Try out different combinations
SELECT COUNT(DISTINCT(firstname,lastname)) --COUNT(DISTINCT(lastname))
FROM professors;
-- Indeed, the only combination that uniquely identifies professors is {firstname, lastname}. {firstname, lastname, university_shortname} is a superkey, and all other combinations give duplicate values. Hopefully, the concept of superkeys and keys is now a bit more clear. Let's move on to primary keys!
