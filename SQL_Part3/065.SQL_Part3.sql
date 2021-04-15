-- 65. 여러 테이블의 데이터를 조인해서 출력하기8

-- LEFT/RIGHT OUTER JOIN
-- OUTER JOIN (+) 붙이는 것과 같은 결과
-- 데이터가 많은 쪽을 출력
SELECT B.DEPTNO, B.ENAME, A.LOC
FROM DEPT A
LEFT OUTER JOIN EMP B ON A.DEPTNO = B.DEPTNO;