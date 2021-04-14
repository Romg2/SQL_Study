-- 021. 특정 철자를 N개 만큼 채우기
-- LPAD(컬럼, 자리수, 채울문자): 컬럼 값에서 나머지 자리수만큼 왼쪽에 채울 문자로 출력
SELECT ENAME, LPAD(SAL, 10, '$') AS SAL1, RPAD(SAL, 10, '$') AS SAL2
FROM EMP;

-- PAD를 이용한 BAR CHART
-- 월급 100 당 ■ 1개
SELECT ENAME, SAL, LPAD('■',ROUND(SAL/100,0),'■') AS BAR_CHART
FROM EMP;