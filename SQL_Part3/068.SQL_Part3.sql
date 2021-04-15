-- 68. 집합 연산자로 데이터를 위아래로 연결하기2

-- UNION
-- UNION ALL과는 다르게 중복된 자료가 있다면 제거 / 첫 번째 컬럼 기준으로 오름차순 정렬
SELECT DEPTNO, SUM(SAL) AS VAR1
FROM EMP
GROUP BY DEPTNO

UNION

SELECT DEPTNO, COUNT(SAL) AS VAR2
FROM EMP
GROUP BY DEPTNO;