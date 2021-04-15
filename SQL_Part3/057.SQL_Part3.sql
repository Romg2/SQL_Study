-- 057. 출력되는 행 제한하기2
-- TOP-N QUERY: 정렬된 결과로부터 위쪽 또는 아래쪽의 N개의 행을 반환

-- 월급이 높은 4건 출력
SELECT EMPNO, ENAME, JOB, SAL
FROM EMP
ORDER BY SAL DESC FETCH FIRST 4 ROWS ONLY;

-- 월급이 상위 20%에 속하는 경우 출력
SELECT EMPNO, ENAME, JOB, SAL
FROM EMP
ORDER BY SAL DESC FETCH FIRST 20 PERCENT ROWS ONLY;

-- 처음 N개의 행과 값이 일치하는 경우 출력
SELECT EMPNO, ENAME, JOB, SAL
FROM EMP
ORDER BY SAL DESC FETCH FIRST 2 ROWS WITH TIES;

-- 출력이 시작되는 행의 위치 지정
-- OFFSET N: N+1번째 행부터 출력
SELECT EMPNO, ENAME, JOB, SAL, ROW_NUMBER() OVER (ORDER BY SAL DESC) AS ROW_NUM
FROM EMP
ORDER BY SAL DESC OFFSET 9 ROWS
                  FETCH FIRST 3 ROWS ONLY;