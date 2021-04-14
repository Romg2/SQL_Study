-- 029. 특정 날짜가 있는 달의 마지막 날짜 출력하기

-- 날짜 포맷 설정
ALTER SESSION SET NLS_DATE_FORMAT='YYYY-MM-DD';

SELECT '2021-04-14' AS 날짜,
LAST_DAY('2021-04-14') AS "마지막 날짜",
LAST_DAY('2021-04-14') - TO_DATE('2021-04-14') AS "남은 날짜"
FROM DUAL;