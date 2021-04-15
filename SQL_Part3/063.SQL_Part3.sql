-- 63. 여러 테이블의 데이터를 조인해서 출력하기6

-- USING
-- USING은 반드시 괄호를 사용해야함
-- ON에서 A.DEPTNO = B.DEPTNO와 같음 / 문법의 차이
SELECT A.ENAME, B.LOC
FROM EMP A
JOIN DEPT B USING (DEPTNO);