-- 74. 서브 쿼리 사용하기4

-- 존재 여부에 따라 출력
SELECT *
FROM DEPT A
WHERE EXISTS (SELECT *
               FROM EMP B
               WHERE A.DEPTNO = B.DEPTNO);

SELECT *
FROM DEPT A
WHERE NOT EXISTS (SELECT *
               FROM EMP B
               WHERE A.DEPTNO = B.DEPTNO);