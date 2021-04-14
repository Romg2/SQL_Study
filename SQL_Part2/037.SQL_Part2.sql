-- 037. 최소값 출력하기

-- 전체 최소월급 출력
SELECT MIN(SAL) AS 최소월급
FROM EMP;

-- SALSEMAN을 제외한 직업별 최소월급 출력
SELECT JOB, MIN(SAL) AS 최소월급
FROM EMP
WHERE JOB != 'SALESMAN'
GROUP BY JOB
ORDER BY 최소월급;
