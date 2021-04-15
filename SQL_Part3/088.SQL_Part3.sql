-- 088. 서브 쿼리를 사용하여 데이터 합치기

-- 사전 작업
ALTER TABLE DEPT
ADD 월급합계 NUMBER(10);

--
MERGE INTO DEPT K1
USING (SELECT DEPTNO, SUM(SAL) AS 월급합계
        FROM EMP
        GROUP BY DEPTNO) K2
ON (K1.DEPTNO = K2.DEPTNO)
WHEN MATCHED THEN
UPDATE SET K1.월급합계 = K2.월급합계;