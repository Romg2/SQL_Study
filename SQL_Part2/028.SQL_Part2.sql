-- 028. 특정 날짜 뒤에 오는 요일 날짜 출력하기
SELECT '2021-04-14' AS 날짜,
-- 2021-04-14일 수요일 이후 돌아올 금요일 날짜
NEXT_DAY('2021-04-14', 'FRI') AS 날짜2
FROM DUAL;