-- 086. 서브 쿼리를 사용하여 데이터 수정하기

-- SCOTT의 월급, 커미션을 ALLEN의 값으로 수정
UPDATE EMP
SET (SAL, COMM) = (SELECT SAL, COMM FROM EMP WHERE ENAME = 'ALLEN')
WHERE ENAME = 'SCOTT';