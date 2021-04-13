-- 017. 문자에서 특정 철자 추출하기
SELECT ENAME,
-- 첫 번째부터 세 글자 추출
SUBSTR(ENAME,1,3) AS VAR1,
-- 뒤에서 두 번째부터 두 글자 추출
SUBSTR(ENAME,-2,2) AS VAR2,
-- 두 번째부터 끝까지 추출
SUBSTR(ENAME,2) AS VAR3
FROM EMP;