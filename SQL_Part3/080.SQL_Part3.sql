-- 80. 데이터 삭제하기

-- DELETE
DELETE FROM EMP
WHERE ENAME = 'SCOTT';

-- TRUNCATE: 모든 데이터 삭제 후 구조만 남김
-- TRUNCATE TABLE 테이블

-- DROP: 모든 데이터 삭제 (구조도 삭제)
-- DROP TABLE 테이블