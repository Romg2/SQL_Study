-- 103. 실수로 지운 데이터 복구하기5

-- 데이터를 복구하기 위한 쿼리문 추출
-- SCN 번호는 FLASHBACK VERSION QUERY에서 확인
SELECT UNDO_SQL
FROM FLASHBACK_TRANSACTION_QUERY
WHERE TABLE_OWNER = 'SCOTT' AND TABLE_NAME = 'EMP'
AND COMMIT_SCN BETWENN 9457390 AND 9457397
ORDER BY START_TIMESTAMP DESC;