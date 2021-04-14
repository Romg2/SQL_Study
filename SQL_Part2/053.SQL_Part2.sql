-- 053. 데이터 분석 함수로 집계 결과 출력하기2
-- CUBE: 첫 번째 행에 집계 결과를 출력
SELECT JOB, SUM(SAL) AS 합계
FROM EMP
GROUP BY CUBE(JOB);

-- 그룹을 2개로 할때 ROLLUP보다 상세하게 나타남
-- EX) ROLLUP(DEPTNO, JOB): (DEPTNO, JOB) / DEPTNO / 전체 집계결과
-- EX) CUBE(DEPTNO, JOB): (DEPTNO, JOB) / DEPTNO / JOB / 전체 집계결과
SELECT DEPTNO, JOB, SUM(SAL) AS 합계
FROM EMP
GROUP BY CUBE(DEPTNO, JOB);