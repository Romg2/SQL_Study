-- 032. 암시적 형 변환 이해하기

-- 임시 테이블: 문자형 변수 SAL
CREATE TABLE EMP2
(ENAME VARCHAR2(10), SAL VARCHAR2(10));
INSERT INTO EMP2 VALUES('SCOTT','3000');
INSERT INTO EMP2 VALUES('SMITH','1200');
COMMIT;

-- 숫자형 변수 SAL을 문자와 비교: 출력 O
SELECT ENAME, SAL
FROM EMP
WHERE SAL = '3000';

-- 문자형 변수 SAL을 숫자와 비교: 출력 O
SELECT ENAME, SAL
FROM EMP2
WHERE SAL = 3000;

-- 임시 테이블 제거
DROP TABLE EMP2;

-- 출력이 되는 이유: 암시적 형 변환
-- 확인 코드: SET AUTOT ON