-- 009. 산술 연산자 배우기 (*, /, +, -)
SELECT ENAME, SAL AS 월급, COMM AS 커미션,
        SAL * 12 AS 연봉,
        SAL + NVL(COMM,0) AS "월급+커미션",
        SAL - 1000 AS "월급-1000",
        SAL / 10 AS "월급/10"
FROM EMP

