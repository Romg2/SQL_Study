-- 76. 서브 쿼리 사용하기6

-- FROM 서브 쿼리
SELECT K.ENAME, K.SAL, K.순위
FROM (SELECT ENAME, SAL, RANK() OVER (ORDER BY SAL DESC) AS 순위
      FROM EMP) K
WHERE K.순위 = 1;

-- 다음과 같이 작성시 오류
-- WHERE절에서는 분석 함수를 사용할 수 없음
-- SELECT ENAME, SAL, RANK() OVER (ORDER BY SAL DESC) AS 순위
-- FROM EMP
-- WHERE RANK() OVER (ORDER BY SAL DESC) AS 순위 = 1;