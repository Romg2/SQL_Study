-- 085. 서브 쿼리를 사용하여 데이터 입력하기

-- 사전 작업: EMP의 구조를 가진 EMP2 생성
DROP TABLE EMP2;
CREATE TABLE EMP2 AS
    SELECT *
    FROM EMP
    WHERE 1=2;

-- 서브 쿼리를 이용해서 데이터 추가
INSERT INTO EMP2(EMPNO, ENAME, SAL, DEPTNO)
    SELECT EMPNO, ENAME, SAL, DEPTNO
    FROM EMP
    WHERE DEPTNO = 20;