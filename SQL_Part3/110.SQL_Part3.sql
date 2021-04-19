-- 110. WITH절 사용하기2

-- SUBQUERY FACTORING: WITH절의 쿼리 결과를 임시테이블로 생성
WITH JOB_SUM_SAL AS (SELECT JOB, SUM(SAL) AS 토탈
                     FROM EMP
                     GROUP BY JOB),

     DEPTNO_SUM_SAL AS (SELECT DEPTNO, SUM(SAL) AS 토탈
                        FROM EMP
                        GROUP BY DEPTNO
                        HAVING SUM(SAL) > (SELECT AVG(토탈) + 3000 FROM JOB_SUM_SAL)) -- 임시 테이블 JOB_SUM_SAL --

    SELECT DEPTNO, 토탈
    FROM DEPTNO_SUM_SAL;


-- 서브쿼리로 짜기
SELECT DEPTNO, SUM(SAL) AS 토탈
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL) > (SELECT AVG(SUM(SAL)) + 3000 FROM EMP GROUP BY JOB);