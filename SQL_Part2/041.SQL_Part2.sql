-- 041. 데이터 분석 함수로 순위 출력하기

-- 연봉 순위
SELECT ENAME, JOB, SAL, RANK() OVER (ORDER BY SAL DESC) AS 순위
FROM EMP
WHERE JOB IN ('ANALYST', 'MANAGER');

-- 직업별 연봉 순위
SELECT ENAME, SAL, JOB, RANK() OVER (PARTITION BY JOB ORDER BY SAL DESC) AS 순위
FROM EMP
WHERE JOB IN ('ANALYST', 'MANAGER');