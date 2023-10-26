SELECT datname, usename, pid, current_timestamp - xact_start 
AS xact_runtime, query
FROM pg_stat_activity WHERE upper(query) like '%VACUUM%' ORDER BY 
xact_start; 

SELECT relname, last_vacuum, last_autovacuum FROM pg_stat_user_tables;


SELECT relname, reloptions
FROM pg_class
WHERE reloptions IS not null;
