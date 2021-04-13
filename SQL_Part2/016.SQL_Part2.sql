-- 016. 대소문자 변환 함수 배우기
-- UPPER(컬럼): 컬럼을 대문자로 출력
-- LOWER(컬럼): 컬럼을 소문자로 출력
-- INITCAP(컬럼): 컬럼을 첫 번째는 대문자 나머지는 소문자로 출력
SELECT
UPPER(ENAME) AS UPPER,
LOWER(ENAME) AS LOWER,
INITCAP(ENAME) AS INITCAP
FROM EMP;