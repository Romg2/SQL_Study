-- 79. 데이터 수정하기

-- UPDATE
UPDATE EMP
SET SAL = 3200, COMM = (SELECT AVG(COMM) FROM EMP)
WHERE ENAME = 'SCOTT';