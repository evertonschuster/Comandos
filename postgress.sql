-- Last query execution

SELECT *, now() - pg_stat_activity.query_start AS duration
FROM pg_stat_activity
WHERE (now() - pg_stat_activity.query_start) < interval '5 minutes'
order by "query_start" desc
