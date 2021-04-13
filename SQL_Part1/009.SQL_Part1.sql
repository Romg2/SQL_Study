-- 009. 산술 연산자 배우기 (*, +, -, /)
-- NVL(컬럼, 대체값): 컬럼 값이 NULL 값인 경우 대체할 값을 출력
SELECT ENAME, SAL AS 월급, COMM AS 커미션,
        SAL * 12 AS 연봉,
        SAL + NVL(COMM,0) AS "월급+커미션",
        SAL - 1000 AS "월급-1000",
        SAL / 10 AS "월급/10"
FROM EMP

