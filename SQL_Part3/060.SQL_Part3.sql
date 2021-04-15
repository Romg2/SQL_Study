-- 60. 여러 테이블의 데이터를 조인해서 출력하기3

-- OUTER JOIN
-- EQUI JOIN 일치하는 것만 출력하며 OUTER JOIN은 일치하지 않는 경우도 출력
-- (+)는 데이터가 적은 쪽에 기입
SELECT B.DEPTNO, A.ENAME, B.LOC
FROM EMP A, DEPT B
WHERE A.DEPTNO (+) = B.DEPTNO;