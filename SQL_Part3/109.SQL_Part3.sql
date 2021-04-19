-- 109. WITH절 사용하기

-- WITH AS: 일종의 서브쿼리 개념이나 임시 저장 기능으로 속도의 효율
WITH JOB_SUM_SAL AS (SELECT JOB, SUM(SAL) AS 토탈
                     FROM EMP
                     GROUP BY JOB)
    SELECT JOB, 토탈
    FROM JOB_SUM_SAL
    WHERE 토탈 > (SELECT AVG(토탈) FROM JOB_SUM_SAL);

-- 서브쿼리로 짜기
SELECT JOB, SUM(SAL) AS 토탈
FROM EMP
GROUP BY JOB
HAVING SUM(SAL) > (SELECT AVG(SUM(SAL)) FROM EMP GROUP BY JOB);