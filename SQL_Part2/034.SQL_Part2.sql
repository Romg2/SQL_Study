-- 034. IF문을 SQL로 구현하기

-- DECODE(컬럼, 조건1, 결과1, 조건2, 결과2, ...., 결과N)
SELECT ENAME, DEPTNO,
       DECODE(DEPTNO, 10, 300, 20, 400, 0) AS 보너스
FROM EMP;

SELECT ENAME, EMPNO,
       DECODE( MOD(EMPNO,2),1,'홀',0,'짝') AS 홀짝
FROM EMP;