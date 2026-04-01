select version();

select database();
select schema(); 

-- user()   -> shows how the client attempted to connect
-- current_user() -> shows how the MySQL actually authenticated you.

select user();
select current_user();

select connection_id();
select row_count();
 