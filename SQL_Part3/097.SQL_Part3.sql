-- 097. 데이터 검색 속도를 높이기

-- INDEX를 만들어 놓으면 FULL TABLE SCAN을 하지 않고 검색 데이터만 스캔하므로 속도가 빨라진다.
CREATE INDEX EMP_SAL
ON EMP(SAL);

SELECT ENAME, SAL
FROM EMP
WHERE SAL = 3000;