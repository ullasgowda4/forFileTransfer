UPDATE admin_users
SET user_name = REPLACE(user_name, '@idfcfirstbank.com', '@capitalfirst1.com');
UPDATE admin_users
SET user_name = REPLACE(user_name, '@IDFCFIRSTBANK.com', '@capitalfirst1.com');

UPDATE admin_users
SET user_name = REPLACE(user_name, '@capitalfirst.com', '@idfcfirstbank.com');
UPDATE admin_users
SET user_name = REPLACE(user_name, '@CAPITALFIRST.COM', '@idfcfirstbank.com');
UPDATE admin_users
SET user_name = REPLACE(user_name, '@IDFCFIRSTBANK.COM', '@idfcfirstbank.com');
UPDATE admin_users
SET user_name = REPLACE(user_name, '@idfcfirst.COM', '@idfcfirstbank.com');



UPDATE admin_users
SET email = REPLACE(email, '@capitalfirst.com', '@idfcfirstbank.com');
UPDATE admin_users
SET email = REPLACE(email, '@CAPITALFIRST.COM', '@idfcfirstbank.com');
UPDATE admin_users
SET email = REPLACE(email, '@IDFCFIRSTBANK.COM', '@idfcfirstbank.com');
UPDATE admin_users
SET email = REPLACE(email, '@idfcfirst.COM', '@idfcfirstbank.com');
