-- 040. 건수 출력하기
SELECT COUNT(EMPNO) AS OBS
FROM EMP;

SELECT COUNT(*) AS OBS
FROM EMP;

-- COUNT 등의 그룹함수는 NULL 값을 포함하지 않음 주의
SELECT COUNT(COMM) AS OBS
FROM EMP;