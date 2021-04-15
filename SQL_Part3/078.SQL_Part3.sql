-- 78. 데이터 입력하기

-- DML(Data Manipulation Language)
-- INSERT: 데이터 입력
-- UPDATE: 데이터 수정
-- DELETE: 데이터 삭제
-- MERGE: 데이터 입력, 수정, 삭제 한번에 수행

-- INSERT
INSERT INTO EMP(EMPNO, ENAME, SAL, HIREDATE, JOB)
    VALUES(2812, 'JACK', 3500, TO_DATE('2019/06/05','RRRR/MM/DD'), 'ANALYST');

-- 모든 열의 값 기입
-- INSERT INTO EMP
--     VALUES( .... );