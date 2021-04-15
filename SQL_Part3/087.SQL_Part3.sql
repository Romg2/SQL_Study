-- 087. 서브 쿼리를 사용하여 데이터 삭제하기

-- SCOTT의 월급보다 큰 경우 삭제
DELETE FROM EMP
WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'SCOTT');

-- 각 부서별 평균월급보다 큰 경우 삭제
DELETE FROM EMP A
WHERE SAL > (SELECT AVG(SAL) 
             FROM EMP B 
             WHERE B.DEPTNO = A.DEPTNO);