-- 022. 특정 철자 잘라내기
-- LTRIM, RTRIM, TRIM
-- 기본적으로 특정 철자를 지정하지 않으면 공백을 제거한다.
SELECT 
'SSMITHSS',
LTRIM('SSMITHSS','S') AS VAR1,
RTRIM('SSMITHSS','S') AS VAR2,
TRIM('S' FROM 'SSMITHSS') AS VAR3
FROM DUAL;