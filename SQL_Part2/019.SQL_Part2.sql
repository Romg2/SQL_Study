-- 019. 문자에서 특정 철자의 위치 출력하기
SELECT INSTR('Romg2', 'o') AS VAR1
FROM DUAL;

-- 응용 SUBSTR, INSTR
SELECT SUBSTR('abcdef@naver.com', INSTR('abcdef@naver.com', '@') + 1, LENGTH('naver.com') - 4) AS VAR1
FROM DUAL;