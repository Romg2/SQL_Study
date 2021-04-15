-- 081. 데이터 저장 및 취소하기

-- COMMIT: INSERT, UPDATE 등 DML 작업을 영구히 저장
INSERT INTO EMP(EMPNO, ENAME, SAL, DEPTNO)
VALUES(1122, 'JACK', 3000, 20);

COMMIT;

-----------------------------------------------

-- ROLLBACK: 마지막 COMMIT 이후 DML 작업을 취소
UPDATE EMP
SET SAL = 4000
WHERE ENAME = 'SCOTT';

ROLLBACK;