-- 036. 최대값 출력하기

-- 전체 최대월급 출력
SELECT MAX(SAL) AS 최대월급
FROM EMP;

-- 직업별 최대월급 출력
SELECT JOB, MAX(SAL) AS 최대월급
FROM EMP
GROUP BY JOB;