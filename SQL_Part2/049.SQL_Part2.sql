-- 049. ROW를 COLUMN로 출력하기


-- 기존 데이터 구조 확인
SELECT *
FROM ORDER2;

-- ROW를 COLUMN으로
-- UNPIVOT은 기존 열 이름을 특정 열(추가)의 값으로 만드는 것
-- UNPIVOT (값의 열이름 FOR 행의 열이름 IN (행 리스트))
-- INCLUDE NULLS: NULL 값인 행도 결과에 포함
SELECT *
FROM ORDER2
UNPIVOT INCLUDE NULLS (건수 FOR 아이템 IN (BICYCLE, CAMERA, NOTEBOOK));




-- 작업 테이블 생성: 위 ORDER2를 전환한 테이블 생성
drop table order3;
create table order3
( ename  varchar2(10),
  item  varchar2(10),
  countn   number(10));

insert  into  order3  values('SMITH', 'B',2);
insert  into  order3  values('SMITH', 'C',3);
insert  into  order3  values('SMITH', 'N',1);
insert  into  order3  values('AMITH', 'B',1);
insert  into  order3  values('AMITH', 'C',2);
insert  into  order3  values('AMITH', 'N',3);
insert  into  order3  values('KMITH', 'B',3);
insert  into  order3  values('KMITH', 'C',2);
insert  into  order3  values('KMITH', 'N',2);

commit;

-- 기존 데이터 구조 확인
SELECT *
FROM ORDER3;

-- 복습: 다시 ORDER2 형태로
SELECT *
FROM (SELECT ENAME, ITEM, COUNTN FROM ORDER3)
PIVOT (SUM(COUNTN) FOR ITEM IN ('B', 'C', 'N'));