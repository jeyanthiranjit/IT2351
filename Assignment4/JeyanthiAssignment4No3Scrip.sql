-- Query to list_price from products with FORMAT, CAST & CONVERT functions
-- Edited by Jeyanthi 09/24/2021, FAll 2021
/*
a) The list_price column
b) A column that uses the FORMAT function to return the list_price column with 1 digit to the
right of the decimal point
c) A column that uses the CONVERT function to return the list_price column as a signed
integer
d) A column that uses the CAST function to return the list_price column as a signed integer */

select list_price, format(list_price, 1) as formated, 
convert(list_price, SIGNED) as convert_signed, cast(list_price as SIGNED) as cast_signed from products