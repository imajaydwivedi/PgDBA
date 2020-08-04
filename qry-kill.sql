-- find current pid
SELECT pg_backend_pid();

-- find all active processes
SELECT * FROM pg_stat_activity WHERE state = 'active';

-- polite way to stop
SELECT pg_cancel_backend(PID);

-- stop at all costs - can lead to full database restart
SELECT pg_terminate_backend(PID);