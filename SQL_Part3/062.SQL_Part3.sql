-- 62. 여러 테이블의 데이터를 조인해서 출력하기5

-- ON을 이용한 조건
SELECT A.ENAME AS 사원, A.SAL AS 월급, C.GRADE AS 월급등급, B.LOC AS 부서위치
FROM EMP A 
JOIN DEPT B ON A.DEPTNO = B.DEPTNO
JOIN SALGRADE C ON A.SAL BETWEEN C.LOSAL AND C.HISAL;