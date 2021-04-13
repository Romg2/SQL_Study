-- 003-1. Alias(별칭)을 사용하여 추출하기2
-- 특수문자, 수식계산 결과 등
SELECT EMPNO AS "★사원번호★", ENAME AS "사원 이름", SAL*12 AS "SALLAY"
FROM EMP;