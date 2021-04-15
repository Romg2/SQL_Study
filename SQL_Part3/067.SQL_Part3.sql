-- 67. 집합 연산자로 데이터를 위아래로 연결하기

-- UNION ALL
-- 중복된 자료가 있다면 포함해서 출력되며 컬럼명은 위쪽 쿼리명
SELECT DEPTNO, SUM(SAL) AS VAR1
FROM EMP
GROUP BY DEPTNO

UNION ALL

SELECT DEPTNO, COUNT(SAL) AS VAR2
FROM EMP
GROUP BY DEPTNO;