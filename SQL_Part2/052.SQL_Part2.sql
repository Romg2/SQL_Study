-- 052. 데이터 분석 함수로 집계 결과 출력하기
SELECT JOB, SUM(SAL) AS 합계
FROM EMP
GROUP BY ROLLUP(JOB);

SELECT DEPTNO, JOB, SUM(SAL) AS 합계
FROM EMP
GROUP BY ROLLUP(DEPTNO, JOB);