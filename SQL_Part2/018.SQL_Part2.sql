-- 018. 문자열의 길이를 출력하기
SELECT ENAME, LENGTH(ENAME) AS 이름길이, LENGTH('한글의길이는?') AS 주석
FROM EMP;

-- 참고: LENGTHB(): 바이트의 길이를 추출