-- 1. Absolute values
select abs(-25) , abs(30);

-- 2. Ceiling / Round Up
select ceil(12.3) , ceil(-12.7);

-- 3. Floor / Round Down
select floor(12.9), floor(-12.3);

-- 4. Round
select round(123.4567,2) , round(123.4567,1);

-- 5. Truncate
select truncate(124.567,2) , truncate(123.456,0);

-- 6. Power / Exponent
select pow(5,2) , power(2,3);

-- 7. Square Root
select sqrt(16) , sqrt(2);

-- 8. Exponential
select exp(1) , exp(2);

-- 9. Natural Logarithm
select ln(1) , ln(10);

-- 10. Logarithm
select log(2,2) , log(2,8);

-- 11. Modulo / Remainder
 select mod(10,3) , 10%3;
 
 -- 12 . Random Number
 select rand(), rand(80);
 
 -- 13. pi constant
 select pi();
 
 -- 14. sign
 select sign(-25), sign(0) , sign(100);
 
 -- 15 . Greatest value
 select greatest(10,25,11,-100,56);
 
 -- 16. Least value
 select least(1,-1,0);
 
 -- 17. Radians
 select radians(180);
 
 -- 18. Degrees
 select degrees(180) , degrees(pi());
 
 -- 19. Bitwise AND , OR , XOR
 select 6&3, 6|3 , 6^3;
 
 -- 20. CRC32 checksum
 select crc32('hello');