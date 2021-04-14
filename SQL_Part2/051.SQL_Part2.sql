-- 051. 데이터 분석 함수로 누적 데이터 출력하기
SELECT EMPNO, ENAME, SAL, 
ROUND( RATIO_TO_REPORT(SAL) OVER(), 3) AS 비율,
-- SUM OVER 이용
ROUND( SAL/SUM(SAL) OVER (), 3) AS 비율2
FROM EMP
WHERE DEPTNO = 10;
