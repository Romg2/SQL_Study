-- 64. 여러 테이블의 데이터를 조인해서 출력하기7

-- NATURAL JOIN
-- 조건절을 적지 않아도 자동으로 동일 컬럼을 찾아서 JOIN
-- NATURAL JOIN에 사용된 변수는 WHERE절에서 Alias를 사용하면 안된다.
SELECT A.ENAME, B.LOC
FROM EMP A
NATURAL JOIN DEPT B
WHERE DEPTNO = 30;