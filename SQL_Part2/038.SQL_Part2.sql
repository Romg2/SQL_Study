-- 038. 평균값 출력하기

-- NULL 값을 제외하고 평균 산출
SELECT AVG(COMM) AS 평균
FROM EMP;

-- NULL 값을 포함하고 평균 산출
SELECT ROUND( AVG( NVL( COMM, 0 ) ), 0) AS 평균
FROM EMP;