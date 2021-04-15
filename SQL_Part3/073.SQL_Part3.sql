-- 73. 서브 쿼리 사용하기3

-- 관리자가 아닌 사원 출력
SELECT ENAME
FROM EMP
WHERE EMPNO NOT IN (SELECT MGR
                    FROM EMP
                    WHERE MGR IS NOT NULL);

-- NOT IN 사용시 유의점
-- IS NOT NULL을 사용하지 않으면 결과가 출력되지 않을 수 있다.
-- Ex) MGR이 (111, 222, NULL)인 경우
-- WHERE EMPNO != 111 AND EMPNO != 222 AND != NULL로 식이 만들어지며 이 경우 전체가 NULL이 된다.