-- 71. 서브 쿼리 사용하기

-- 평균 월급보다 높은 월급을 받는 사람 출력
SELECT ENAME, SAL
FROM EMP
WHERE SAL > (SELECT AVG(SAL)
             FROM EMP);
