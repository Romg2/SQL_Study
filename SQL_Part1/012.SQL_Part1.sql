-- 012. 비교 연산자 배우기3
-- LIKE
-- %: 0개 이상의 임의 문자와 일치, _: 하나의 문자와 일치
SELECT ENAME, SAL
FROM EMP
WHERE 
-- ENAME LIKE 'S%'
ENAME LIKE '_M%'
;