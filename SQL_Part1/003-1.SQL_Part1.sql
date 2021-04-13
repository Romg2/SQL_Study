-- 003-1. Alias(별칭)을 사용하여 추출하기2
SELECT EMPNO AS 사원번호, ENAME AS 사원이름, SAL*12 AS "SALLAY"
FROM EMP;