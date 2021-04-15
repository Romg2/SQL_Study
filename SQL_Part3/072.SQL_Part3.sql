-- 72. 서브 쿼리 사용하기2

-- 서브 쿼리의 값이 다중일 경우
SELECT ENAME, SAL
FROM EMP
WHERE SAL IN (SELECT SAL
              FROM EMP
              WHERE JOB = 'SALESMAN');

-- 다중 값인 경우 사용가능한 연산자
-- (NOT)IN: 리스트의 값 내에서 일치(안)한다.
-- >ALL: 리스트의 최대값보다 크다.
-- <ALL: 리스트의 최소값보다 작다.
-- >ANY: 리스트의 최소값보다 크다.
-- <ANY: 리스트의 최대값보다 작다.