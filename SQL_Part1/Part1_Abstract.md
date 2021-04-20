# Part1: 입문
### 001. 테이블에서 특정 열 선택하기
```
SELECT COL1, COL2
FROM TABLE
```

### 테이블에서 모든 열 선택하기
```
SELECT *
FROM TABLE
```

### Alias(별칭)을 사용하여 추출하기
```
SELECT COL1 AS "Alias1"
FROM TABLE;
```

### 연결 연산자 사용하기
```
SELECT COL1 || COL2
FROM TABLE;
```

### 중복된 데이터 제거 후 출력
```
SELECT DISTINCT COL1
FROM TABLE;
```

### 데이터를 정렬해서 출력하기
```
SELECT * 
FROM TABLE 
ORDER BY COL1 ASC, COL2 DESC;
```

### WHERE절 배우기 (숫자 데이터 검색)
```
SELECT * 
FROM TABLE
WHERE COL1 (>, <, >=, <=, =, !=) NUM_VAR1;
```

### WHERE절 배우기2 (문자와 날짜 검색)
문자와 날짜는 ' '으로 감싸준다.

### 산술 연산자 배우기 (*, +, -, /)

### 비교 연산자 배우기 (>, <, >=, <=, =, !=)

### 비교 연산자 배우기2 (BETWEEN AND)
```
SELECT * 
FROM TABLE
WHERE COL1 BETWEEN LOW_VAR1 AND HIGH_VAL1;
```

### 비교 연산자 배우기3 (LIKE)
```
SELECT * 
FROM TABLE
WHERE COL1 LIKE '_A%';
```

_: 하나의 문자와 일치

%: 0개 이상의 임의 문자와 일치

### 비교 연산자 배우기4 (IS NULL)
```
SELECT * 
FROM TABLE
WHERE COL1 IS NULL;
```

### 비교 연산자 배우기5 (IN)
```
SELECT * 
FROM TABLE
WHERE COL1 IN ('VAR1', 'VAR2', ..);
```
### 논리 연산자 배우기 (AND, OR, NOT)
