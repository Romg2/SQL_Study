-- 61. 여러 테이블의 데이터를 조인해서 출력하기4

-- SELF JOIN
-- MGR: 관리자사원번호, EMPNO: 사원번호
SELECT A.ENAME AS 사원, A.JOB AS 직업, B.ENAME AS 관리자, B.JOB AS 관리자직업
FROM EMP A, EMP B
WHERE A.MGR = B.EMPNO
ORDER BY 사원 FETCH FIRST 5 ROWS ONLY;