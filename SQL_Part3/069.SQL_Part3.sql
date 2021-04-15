-- 69. 집합 연산자로 데이터의 교집합을 출력하기

-- INTERSECT
-- UNION과 마찬가지로 중복된 데이터가 있다면 제거 / 오름차순 정렬
-- 중복의 기준은 "행 단위"
SELECT ENAME, SAL, JOB, DEPTNO
FROM EMP
WHERE DEPTNO IN (10, 20)

INTERSECT

SELECT ENAME, SAL, JOB, DEPTNO
FROM EMP
WHERE DEPTNO IN (20, 30);