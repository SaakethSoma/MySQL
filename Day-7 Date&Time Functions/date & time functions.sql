-- 1. CURRENT_DATE / CURDATE
select current_date();
select curdate();

-- 2. CURRENT_TIME / CURTIME
select current_time();
select curtime();

-- 3. NOW() / CURRENT_TIMESTAMP
select now();
select current_timestamp();

-- 4. DATE()
select date('2025-08-23');
select date('2025/02/15');

-- 5. TIME()
select time('2025-09-13 15:45:00');

-- 6. YEAR() , MONTH() , DAY()
select year(now());
select month('2025-09-23');
select day('2025-09-23');

-- 7. HOUR() , MINUTE() , SECOND()
select hour('2025-09-23 15:45:00');
select minute('2025-09-23 14:26:30');
select second('2025-09-23 08:17:15');

-- 8. DAYNAME() , MONTHNAME()
select dayname('2003-08-23');
select monthname('2024-01-20');

-- 9. EXTRACT()
select extract(year from '2025-09-23 15:45:19');
select extract(month from '2021-05-20 09:25:56');
select extract(day from '2020-07-07 10:50:18');
select extract(hour from '2022-05-03 18:18:18');
select extract(minute FROM '2019-01-05 21:06:37');
select extract(second from '2018-06-17 22:08:19');

-- 10. DATE_ADD() / ADDDATE()
-- UNITS : SECOND , MINUTE , HOUR , DAY , WEEK , MONTH , QUARTER , YEAR
select date_add(now(), interval 10 day);
select adddate(now(), interval 2 month);

-- 11. DATE_SUB() / SUBDATE()
select date_sub('2025-09-23', interval 7 day);

-- 12. DATEDIFF()
select datediff('2025-11-15','2005-02-04');
select datediff(now(),'2005-02-04');

-- 13. TIMEDIFF()
select timediff('10:30:45','18:23:35');

-- 14. LAST_DAY()
select last_day('2024-02-02');
select last_day('2003-08-15');

-- 15. DAYOFWEEK() , DAYOFMONTH() , DAYOFYEAR()
select dayofweek('2026-03-30');
select dayofmonth('2026-03-30');
select dayofyear('2026-12-31');

-- 16. WEEK() , QUARTER()
select week('2026-03-30');
select quarter('2026-03-30');

-- 17. STR_T0_DATE()
select str_to_date('20-03-2026' , '%y-%m-%d');  -- 2020-03-20

-- 19. UTC_DATE() , UTC_TIME() , UTC_TIMESTAMP 
select utc_date(); -- 2026-03-30
select utc_time(); -- 06:52:06
select utc_timestamp();  -- 2026-03-30 06:52:15

-- 20. FROM_UNIXTIME() / UNIX_TIMESTAMP()
select unix_timestamp('2026-03-30 12:25:00'); -- 1774853700
select from_unixtime(1774853700);  -- 1774853700

