-- 048. COLUMN을 ROW로 출력하기2
-- PIVOT을 이용해서 출력 / 반드시 FROM절에 필요한 변수만 넣어야함)
SELECT *
FROM (SELECT DEPTNO, SAL FROM EMP)
PIVOT (SUM(SAL) FOR DEPTNO IN (10,20,30)) ;

-- 문자의 경우 따옴표가 붙어서 Alias 지정
SELECT *
FROM (SELECT JOB, SAL FROM EMP)
PIVOT (SUM(SAL) FOR JOB IN ('ANALYST' AS "ANALYST",
                            'CLERK' AS "CLERK",
                            'MANAGER' AS "MANAGER"));