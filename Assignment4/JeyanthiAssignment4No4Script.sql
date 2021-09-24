-- Query to list_price from products with FORMAT, CAST & CONVERT functions
-- Edited by Jeyanthi 09/24/2021, FAll 2021
/*a)Email address, b) The length of the email address with the alias “Length”
c) The location of the “@” sign with the alias “@”
d) The email address username (before the “@”) with the alias “Username”
e) The email address domain (after the “@”) with the alias “Domain*/

select email_address, char_length(email_address) as Length, Locate('@', email_address) as '@', 
substring_index(email_address, '@', 1) as 'Username',
substring_index(email_address, '@', -1) as Domain from customers;