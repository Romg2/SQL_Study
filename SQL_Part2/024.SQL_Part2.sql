-- 024. 숫자를 버리고 출력하기
-- TRUNC: 지정한 위치 이후 자리는 버리고 출력
SELECT 
TRUNC(876.567,1) AS VAR1,
TRUNC(876.567,0) AS VAR2,
TRUNC(876.567,-1) AS VAR3,
TRUNC(876.567,-2) AS VAR4
FROM DUAL;
      