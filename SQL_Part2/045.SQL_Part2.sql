-- 045. 데이터 분석 함수로 데이터를 가로로 출력하기
-- LISTAGG(컬럼, 구분자) WITHIN GROUP (정렬)
SELECT DEPTNO,
LISTAGG(ENAME, ',') WITHIN GROUP (ORDER BY ENAME) AS 사원리스트
FROM EMP
GROUP BY DEPTNO;

-- 응용 부서별로 월급이 높은 사원순으로 출력
SELECT DEPTNO,
LISTAGG(ENAME || '<' || SAL || '>','★') WITHIN GROUP (ORDER BY SAL DESC) AS 사원및월급리스트
FROM EMP
GROUP BY DEPTNO;