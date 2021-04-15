-- 77. 서브 쿼리 사용하기7

-- SELECT 서브 쿼리
SELECT ENAME, SAL, 
       (SELECT MIN(SAL) FROM EMP) AS 최소월급,
       (SELECT MAX(SAL) FROM EMP) AS 최대월급
FROM EMP
WHERE ROWNUM <= 5;