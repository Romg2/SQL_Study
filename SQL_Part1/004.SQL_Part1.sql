-- 004. 연결 연산자 사용하기
-- 문자열 사용시 작은 따옴표
SELECT ENAME || '의 월급은' || SAL || '입니다.' AS 월급정보,
       ENAME || '의 직업은' || JOB || '입니다.' AS 직업정보
FROM EMP;