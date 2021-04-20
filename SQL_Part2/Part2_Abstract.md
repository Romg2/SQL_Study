# Part2: 초급
### 016. 대소문자 변환 함수 배우기 (UPPER, LOWER, INITCAP)
```
SELECT 
UPPER(COL1) AS "A1",
LOWER(COL2) AS "A2",
INTICAP(COL3) AS "A3"
FROM TABLE;
```

### 017. 문자에서 특정 철자 추출하기 (SUBSTR)
```
SELECT 
SUBSTR(COL1, 시작번호, 추출할글자수) AS "A1"
FROM TABLE;
```

### 018. 문자열의 길이를 출력하기 (LENGTH)
```
SELECT 
LENGTH(COL1) AS "A1"
FROM TABLE;
```

### 019. 문자에서 특정 철자의 위치 출력하기 (INSTR)
```
SELECT 
INSTR(COL1, 찾을문자) AS "A1"
FROM TABLE;
```

### 020. 특정 철자를 다른 철자로 변경하기 (REPLACE)
```
SELECT 
REPLACE(COL1, 기존문자, 바꿀문자) AS "A1"
FROM TABLE;
```

### 021. 특정 철자를 N개 만큼 채우기 (LPAD, RPAD)
```
SELECT 
LPAD(COL1, 자릿수, 나머지채울문자) AS "A1",
RPAD(COL2, 자릿수, 나머지채울문자) AS "A2"
FROM TABLE;
```

### 022. 특정 철자 잘라내기 (LTRIM, RTRIM, TRIM)
```
SELECT 
LTRIM(COL1, 자를문자) AS "A1",
RTRIM(COL2, 자를문자) AS "A2",
TRIM(자를문자 FOR COL3) AS "A3"
FROM TABLE;
```

### 023. 반올림해서 출력하기 (ROUND)
```
SELECT 
ROUND(COL1, 표시할 소수 자릿수) AS "A1"
FROM TABLE;
```

### 024. 숫자를 버리고 출력하기 (TRUNC)
```
SELECT 
TRUNC(COL1, 표시할 소수 자릿수) AS "A1"
FROM TABLE;
```

### 025. 나눈 나머지 값 출력하기 (MOD)
```
SELECT 
FLOOR(숫자, 나눌숫자) AS "몫",
MOD(숫자, 나눌숫자) AS "나머지"
FROM TABLE;
```

### 026. 날짜 간 개월 수 출력하기 (MONTHS_BETWEEN)
```
SELECT 
MONTHS_BETWEEN(최신날짜, 이전날짜) AS "A1"
FROM TABLE;
```

### 027. 개월 수 더한 날짜 출력하기 (ADD_MONTHS)
```
SELECT 
ADD_MONTHS(날짜, 더할 개월 수) AS "A1"
FROM TABLE;
```

### 028. 특정 날짜 뒤에 오는 요일 날짜 출력하기 (NEXT_DAY)
```
SELECT 
NEXT_DAY(날짜, 요일) AS "A1"
FROM TABLE;
```

### 029. 특정 날짜가 있는 달의 마지막 날짜 출력하기 (LAST_DAY)
```
SELECT 
LAST_DAY(날짜) AS "A1"
FROM TABLE;
```

### 030. 문자형으로 데이터 유형 변환하기 (TO_CHAR, EXTRACT)
```
SELECT
TO_CHAR(COL1, 포맷) AS "A1",
EXTRACT(포맷 FROM COL1) AS "A1",
FROM TABLE;
```

### 031. 날짜형으로 데이터 유형 변환하기 (TO_DATE)
```
SELECT
TO_DATE(날짜, 포맷) AS "A1"
FROM TABLE;
```

### 032. 암시적 형 변환 이해하기

### 033. NULL 값 대신 다른 데이터 출력하기 (NVL, NVL2)
```
SELECT
NVL(COL1, 대체값) AS "A1",
NVL2(COL1, NULL이 아닌 경우, NULL인 경우)
FROM TABLE;
```

### 034. IF문을 SQL로 구현하기 (DECODE)
```
SELECT
DECODE(COL1, 조건1, 결과2, 조건2, 결과2, ...) AS "A1"
FROM TABLE;
```

### 035. IF문을 SQL로 구현하기2 (CASE)
```
SELECT
CASE COL1 WHEN 조건1 THEN 결과1
CASE COL2 WHEN 조건2 THEN 결과2
...
ELSE 결과N
END AS "A1"
FROM TABLE;
```

### 036. 최대값 출력하기 (MAX)
```
SELECT MAX(COL1) AS "A1"
FROM TABLE;
```

### 037. 최소값 출력하기 (MIN)
```
SELECT MIN(COL1) AS "A1"
FROM TABLE;
```

### 038. 평균값 출력하기 (AVG)
```
SELECT AVG(COL1) AS "A1"
FROM TABLE;
```

### 039. 토탈값 출력하기 (SUM)
```
SELECT SUM(COL1) AS "A1"
FROM TABLE;
```

### 040. 건수 출력하기 (COUNT)
```
SELECT
COUNT(COL1) AS "A1",
COUNT(*) AS "A2"
FROM TABLE;
```

### 041. 데이터 분석 함수로 순위 출력하기 (RANK)
```
SELECT
RANK() OVER (ORDER BY COL1) AS "A1",
RANK() OVER (PARTITION BY COL3 ORDER BY COL2) AS "A2"
FROM TABLE;
```

### 042. 데이터 분석 함수로 순위 출력하기2 (DENSE_RANK)
```
SELECT
DENSE_RANK() OVER (ORDER BY COL1) AS "A1",
DENSE_RANK() OVER (PARTITION BY COL3 ORDER BY COL2) AS "A2",
DENSE_RANK(새로운 값) WITHIN GROUP (ORDER BY COL4) AS "새로운 값 순위"
FROM TABLE;
```

### 043. 데이터 분석 함수로 등급 출력하기 (NTILE)
```
SELECT
NTILE(나눌등급수) OVER (ORDER BY COL1) AS "A1"
FROM TABLE;
```

### 044. 데이터 분석 함수로 순위의 비율 출력하기 (CUME_DIST)
```
SELECT
CUME_DIST() OVER (ORDER BY COL1) AS "A1"
FROM TABLE;
```

### 045. 데이터 분석 함수로 데이터를 가로로 출력하기 (LISTAGG)
```
SELECT
LISTAGG(COL1, 구분자) WITHIN GROUP (ORDER BY COL2) AS "A1"
FROM TABLE;
```

### 046. 데이터 분석 함수로 바로 전 행과 다음 행 출력하기 (LAG, LEAD)
```
SELECT
LAG(COL1, N) OVER (ORDER BY COL3) AS "N행 전의 값",
LEAD(COL2, N) OVER (ORDER BY COL4) AS "N행 후의 값"
FROM TABLE;
```

### 047. COLUMN을 ROW로 출력하기 (SUM + DECODE)
```
SELECT 
SUM(DECODE(COL1, 값1, COL2)) AS "A1",
SUM(DECODE(COL1, 값2, COL2)) AS "A2",
...
SUM(DECODE(COL1, 값N, COL2)) AS "AN"
FROM TABLE;
```

### 048. COLUMN을 ROW로 출력하기2 (PIVOT)
```
SELECT *
FROM (SELECT COL1, COL2 FROM TABLE1)
PIVOT (집계함수(COL) FOR 기존 컬럼이름 IN (기존 컬럼 값));
```

### 049. ROW를 COLUMN로 출력하기 (UNPIVOT)
```
SELECT *
FROM TABLE
UNPIVOT (값의 열이름 FOR 행의 열이름 IN (행 리스트));
```

### 050. 데이터 분석 함수로 누적 데이터 출력하기 (SUM OVER)
```
SELECT
SUM(COL1) OVER (ORDER BY COL2 ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS "A1"
FROM TABLE;
```

### 051. 데이터 분석 함수로 비율 출력하기 (RATIO_TO_REPORT)
```
SELECT
RATIO_TO_REPORT(COL1) OVER () AS "A1"
FROM TABLE;
```

### 052. 데이터 분석 함수로 집계 결과 출력하기 (ROLLUP)
```
SELECT COL1, 집계함수(COL2) AS "A1"
FROM TABLE
GROUP BY ROLLUP(COL1)
```

### 053. 데이터 분석 함수로 집계 결과 출력하기2 (CUBE)
```
SELECT COL1, 집계함수(COL2) AS "A1"
FROM TABLE
GROUP BY CUBE(COL1)
```

### 054. 데이터 분석 함수로 집계 결과 출력하기3 (GROUPING SETS)
```
SELECT COL1, 집계함수(COL2) AS "A1"
FROM TABLE
GROUP BY GROUPING SETS(COL1)
```

### 055. 데이터 분석 함수로 출력 결과 넘버링 하기 (ROW_NUMBER)
```
SELECT
ROW_NUMBER() OVER (ORDER BY COL1) AS "A1"
FROM TABLE;
```

### 기타 사항
```
SQL 실행 순서


INTERVAL  -27
NULLS LAST -42
INCLUDE NULLS -49

```