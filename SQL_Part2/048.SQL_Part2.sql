-- 048. COLUMN을 ROW로 출력하기2
-- PIVOT을 이용해서 출력 / 반드시 FROM절에 필요한 변수만 넣어야함)
-- PIVOT은 기존 열의 값을 새로운 열 이름(사실상 열)으로 만드는 것
-- PIVOT (그룹함수(값) FOR 기존열이름 IN (기존 열의 값))
SELECT *
FROM (SELECT DEPTNO, SAL FROM EMP)
PIVOT (SUM(SAL) FOR DEPTNO IN (10,20,30)) ;

-- 문자의 경우 따옴표가 붙어서 Alias 지정
SELECT *
FROM (SELECT JOB, SAL FROM EMP)
PIVOT (SUM(SAL) FOR JOB IN ('ANALYST' AS "ANALYST",
                            'CLERK' AS "CLERK",
                            'MANAGER' AS "MANAGER"));

-- 각 직업별, 부서별 월급 합계
SELECT *
FROM (SELECT JOB, DEPTNO, SAL FROM EMP)
PIVOT (SUM(SAL) FOR DEPTNO IN (10,20,30))
ORDER BY JOB;