-- 022. 반올림해서 출력하기
SELECT 
'876.567' AS 숫자,
-- 각각 소수 첫째 자리, 일의 자리, 십의 자리, 백의 자리로 반올림
ROUND(876.567,1) AS VAR1,
ROUND(876.567,0) AS VAR2,
ROUND(876.567,-1) AS VAR3,
ROUND(876.567,-2) AS VAR4
FROM DUAL;