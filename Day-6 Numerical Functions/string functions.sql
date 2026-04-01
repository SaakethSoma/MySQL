-- 1. LENGTH(str)
select length('hello');   -- 5 (5 bytes)
select length('☺️'); -- 4 (in UTF-8 encoding , emoji takes 4 bytes)

-- 2. CHAR_LENGTH(str) or CHARACTER_LENGTH(str)
select char_length('hello'); -- 5
select char_length('☺️'); -- 1(counts one character)

-- 3. CONCAT(str1,str2,....) 
select concat('My','SQL'); -- MySQL
 select concat('python',' ', 'programming',' ' , 'lang'); -- python programming lang
 
 -- 4. CONCAT_WS (seperator , str1, str2...)
 select concat_ws('-','2025','09','23'); -- 2025-09-23
 select concat_ws(',','python','java','dsa','html'); -- python,java,dsa,html
 
 -- 5. UPPER(str)
 select upper('hello'); -- HELLO
 
 -- 6. LOWER(str)/ LCASE(str)
 select lower('HELLO'); -- hello
 
 -- 7. LEFT(str,len)
 select left('database',4); -- data
 
 -- 8. RIGHT(str,len)
 select right('database',3); -- ase
 
 -- 9. SUBSTRING(str, start , length)
 select substring('database',3);
 select substring('python programming lang',3,6);
 
 -- 10. LOCATE(substring,str) / POSITION(substr IN str)
 select locate('b','database'); -- 5
 select position('tabase'IN 'database'); -- 3
 
 -- 11. INSTR(str,substring)
 select instr('database','a'); -- 2 (first 'a')
 select instr('saaketh','h'); -- 7
 
 -- 12. REPLACE(str, from_str, to_str)
 select replace('xxxxxxxHelloxxxxxxx','x',''); -- Hello
 
 -- 13. TRIM([leading | trailing | both] )
 select trim(' hello  world ');  -- hello        world
 select trim(both 'x' from 'xxxxxxxxxxHelloxxxxxx'); -- Hello
 select trim(leading 'x' from 'xxxxxxxxHexxxxlloxxxx'); -- Hexxxxlloxxxx
 select trim(trailing 'x' from 'xxxxxxxxxxxHexxxxxlloxxxxxxxxxx'); -- xxxxxxxxxxxHexxxxxllo
 
 -- 14. LTRIM(str)
 select ltrim(' Hello'); -- Hello
 
 -- 15. RTRIM(str)
 select rtrim('Hello  '); -- Hello
 
 -- 16. REVERSE(str)
 select reverse('MySQL'); -- LQSyM
 
 -- 17. LPAD(str,len,padstr)
 select lpad('123',10,'@'); -- @@@@@@@123
 
 -- 18. RPAD(str,len,padstr)
 select rpad('123',8,'0'); -- 12300000
 
 -- 19. QUOTE(str)
 select quote("It's raining"); -- 'It\'s raining'
 
 -- 20. SPACE(N)
 select concat('-------',space(14),'python programming',space(4),'-----------'); -- -------              python programming    -----------
 
 -- 21. REPEAT(str,count)
 select repeat('MySQL-',5); -- MySQL-MySQL-MySQL-MySQL-MySQL-