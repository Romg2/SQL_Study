-- 083. 락(LOCK) 이해하기

-- 만약 터미널1에서 UPDATE 후 COMMIT 하지 않은 경우
UPDATE EMP
SET SAL = 3000
WHERE ENAME = 'JONES';
-- COMMIT;

-- 터미널2에서 해당 명령어 실행시 작업이 되지 않음 위에서 LOCK이 되었기 때문
UPDATE EMP
SET SAL = 9000
WHERE ENAME = 'JONES';