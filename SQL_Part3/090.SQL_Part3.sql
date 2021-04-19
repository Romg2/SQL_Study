-- 090. 계층형 질의문으로 서열을 주고 데이터 출력하기2

-- CONNCT BY PRIOR 이후 조건을 주어 BLAKE 제외
-- BLAKE의 자식 노드 역시 출력되지 않음
SELECT RPAD('-', LEVEL*2, '-') || ENAME AS EMPLOYEE, LEVEL, SAL, JOB
FROM EMP
START WITH ENAME = 'KING'
CONNECT BY PRIOR EMPNO = MGR AND ENAME != 'BLAKE';