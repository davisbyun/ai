use sqldb;
select * from usertbl;
-- userId 'BBK' 'JKW'
select  *  from usertbl where userid in ('BBK', 'JKW' );
-- 김씨 성을 가진 사람 검색
select * from usertbl where name like '김%' ;
-- 김경호씨의 키보다 큰 사람은?
-- 1단계 김경호 키는? 177
select  height  from usertbl  where name = '김경호' ;
-- 2단계 조건 찾기
select *  from usertbl where height >= 177 ;
-- 1단계 2단계 동시에 작성하기
select *  from usertbl where 
  height >= (  select  height  from usertbl  where name = '김경호' );
--  은지원 나이가 어린 사람은?
select birthYear from usertbl where name='은지원' ;
select  *  from usertbl 
 where birthYear > (  select birthYear from usertbl where name='은지원' ); 

select  *  from buytbl; 
-- prodName 노트북의 groupName 종류와 동일한 userId와 prodName, groupName 검색하기 
-- 결과는 kbs 노트북 전자 / jyp 모니터 전자 / bbk 모니터 전자 / bbk 메모리 전자 
-- 1단계 전자 검색 
select groupName from buytbl where prodName = '노트북' ;
-- 2단계 
select userid, prodName, groupName from buytbl 
  where groupName = (  select groupName from buytbl where prodName = '노트북'  ); 
  
-- '김범수' 산 물건는 무엇인가요?
-- '김범수'의 user_id를 구한다.
select prodName, userid from buytbl 
  where userId = ( select  userId from usertbl where name='김범수' ) ;  

select * from usertbl;
-- 주소가 서울사람 검색하기
select * from usertbl where addr = '서울' ;
-- 서울에 사는 사람의 키보다 작은 키를 가진 사람  any  또는 
select * from usertbl
  where height <= any( select height from usertbl where addr = '서울' ) ;

select * from usertbl -- all and 
  where height <= all( select height from usertbl where addr = '서울' ) ;  
  
select * from usertbl
  where height <= some( select height from usertbl where addr = '서울' ) ;
  
select * from buytbl;

-- 운동화를 산 사람의 이름은?
select userId from buytbl where prodName='운동화' ; 
select name  from usertbl 
     where userid = any(  select userId from buytbl where prodName='운동화' ); 

-- 키가 제일 큰 사람 3명
select * from usertbl order by height desc limit 3;
-- 나이가 제일 많은 사람 5명 검색
select * from usertbl order by birthyear asc limit 5;    

-- 테이블 만들기  usertbl 동일한 테이블 만들고 싶다
create table usertbl2 ( select * from usertbl ) ;
select * from usertbl2;

-- 테이블 만들기 서울에 있는 사람 
create table usertblSeoul ( select * from usertbl where addr = '서울') ; 
select * from usertblSeoul ;
-- 키가 175~180 사이인 사람만 userid, name, height 열만 테이블 만들기 
create table heightTbl 
 ( select userid, name, height from usertbl where height between 175 and 180 ) ; 
select * from heightTbl; 
-- 단 제약조건(pk, fk)은 만들어 지지 않는다.

-- group by절 
select userid, sum( amount ), avg( amount ), max( amount ), count( amount), std( amount ), var_samp( amount )   from buytbl group by userid ;
-- 총구매액이 300만원 이상인 사람의 사용자명과 총구매액 구하기
select userid, sum( price ) from buytbl group by userid having sum( price ) >= 300 ; 
-- 경품 대상인 사람을 테이블 만들어기 , userid, mobile1, mobile2, addr
create table eventTbl 
 ( select userid, mobile1, mobile2, addr from usertbl 
     where userid = any ( select userid from buytbl group by userid having sum( price ) >= 300  ) 
 ) ;
 
 select * from eventTbl;
 
 select * from buytbl;
 
 -- groupName 그룹화하기
 select  groupName, sum( amount ), sum( price )   from buytbl group by groupName ;
 
 -- 테이블 가장 높은 groupName, prodName, amount, price 만들기
 -- 1단계 '전자'
  select  groupName 
  from buytbl group by groupName
              having max(price) >= ( select max(price) from buytbl ) ;
 -- 2단계 
 create table if not exists maxGroupTbl 
   ( select groupName, prodName, amount, price from buytbl 
	 where groupName = ( select  groupName 
						   from buytbl group by groupName
									  having max(price) >= ( select max(price) from buytbl)
                       )
    );
select * from maxGroupTbl;  


select groupName, prodName, amount, price from buytbl 
	 where groupName = '전자';  
    
-- with rollup 중간합계
-- 소합계 
select num, groupName, sum( price ) from buytbl  group by groupName, num  with rollup ;

-- 220page
-- 요구사항 게시판에서 게시글번호 경우에  자동번호가 넘버링 좋겠다. 
-- 학번 부여 자동부여 되게 하고 싶다.
-- auto_increment사용하려면 조건  int형이고 primary key / unique 이어야 한다.
create table if not exists testTbl2 
(  id int auto_increment primary key,  
   userName char(3),
   age int );
   
insert into testTbl2 values( null, '지민', 25 );   
insert into testTbl2 (userName, age ) values ('유나', 22 ); 
insert into testTbl2 (userName, age ) values ('유경', 21 ); 
select * from testTbl2 ;

alter table testTbl2 auto_increment=100;
insert into testTbl2 values( null, '지수', 25 );  

drop table testTbl2;
-- 학번 240101 시작하기
 
create table if not exists testTbl2 
(  id int auto_increment primary key,  
   userName char(3),
   age int );
   
alter table testTbl2 auto_increment=240101;   
insert into testTbl2 (userName, age ) values ('유경2', 21 );    

select * from testTbl2;

-- 증가치를 1씩 아니라 3개씩 증가되게 만들기
set @@auto_increment_increment=3;
insert into testTbl2 (userName, age ) values ('유경5', 21 );  
insert into testTbl2 (userName, age ) values ('유경6', 21 );  

select * from testTbl2;

 

use employees ;
select  * from employees.employees;
--             데이터베이스명.테이블명 
use sqldb;

use employees ;
select * from employees;
insert into employees  values ( 1003, '05/01/01', '정','현희', 'F', '20/10/05' );
insert into employees  values ( 1004, '05/01/01', '박','현희', 'M', '20/10/05' );
insert into employees  values ( 1005, '05/01/01', '이','현희', 'F', '20/10/05' );
insert into employees  values ( 1006, '05/01/01', '김','현희', 'M', '20/10/05' );

-- sqldb 사용하러 가기
use sqldb; 

-- insert문인데 select문을 이용해서 삽입하기
create table testTbl4  ( id int, fname varchar(50), lname varchar(50) ) ;

select emp_no, first_name, last_name from employees.employees ; 

insert into testTbl4 
     select emp_no, first_name, last_name from employees.employees ; 

select * from testTbl4 ;

select  * from buytbl  order by price desc ;

create table  copyBuyTbl  
   ( select * from buyTbl ) ;

select * from copyBuyTbl order by price desc limit 3; 

-- 가격의 상위 3개 삭제하기 
delete from copyBuyTbl order by price desc limit 3 ;

select * from copyBuyTbl;  

-- 수량 하위 2개 삭제하기
select *  from copyBuyTbl order by amount asc ;
delete from copyBuyTbl order by amount asc limit 2 ;

select * from copyBuyTbl;

-- 운동화중 상위 1개 삭제하기
select  * from copyBuyTbl where prodName='운동화' ;
update copyBuyTbl set price=60 where num = 1 ; 

commit;

-- 1단계: 데이터베이스 만들기
create database moviedb;
-- 2단계: 데이터베이스 사용
use moviedb;
-- 3단계: 테이블 만들기
create table movietbl (   
   movie_id int,
    movie_title varchar(20),
    movie_director varchar(20),
    movie_star varchar(20),
    movie_script longtext,
    movie_film longblob
);
-- 4단계: 행을 삽입
insert into movietbl values 
(1, '쇤들러리스트', '스필버그', '리암니슨', load_file('D:/ai/temp/movies/Schindler.txt'),load_file('D:/ai/temp/movies/Schindler.mp4'));
-- 5단계: select문으로 검색
select*from movietbl;
-- longtext, longblob가 null이 나오는 이유 
-- > 용량이 모자라서
show variables like 'max_allowed_packet';
-- > 경로가 잘못되서
show variables like 'secure_file_priv';
-- 환경설정하기

-- 내려받기 데이터베이스--> 개인 컴퓨터로 다운로드
-- 텍스트 1단계 내릴 것을 확인하기
select  movie_script  from movietbl  where movie_id = 1 ; 
-- 2단계 내리기
select  movie_script  from movietbl  where movie_id = 1
  into outfile 'D:/ai/study/temp/movies/movies_script_copy.txt' 
  lines terminated by '\\n' ;

--  동영상 파일 내리기
-- 1단계 내릴 것을 확인하기
select  movie_film  from movietbl  where movie_id = 1 ;  
-- 2단계 내리기
select movie_film from movietbl where movie_id = 1
  into outfile 'D:/ai/study/temp/movies/movies_film_copy.mp4' ;


-- 피벗의 구현
use sqldb ;
select * from usertbl ;
select * from buytbl ;

create table pivotTest
 (
     uName char(3),
     season char(2),
     amount int
 ) ;
insert into pivotTest values
 ('김범수', '겨울', 10), ('윤종신','여름', 15), ('김범수', '가을', 25), ('윤종신','가을', 25),
 ('김범수', '여름', 25), ('윤종신','봄', 5), ('김범수', '봄', 15), ('윤종신','겨울', 35); 

select * from pivotTest ;
-- 피벗 : 함수 사용해서 보기 편하게 만들기      
select uname '이름', sum( if( season='봄', amount, 0) )  '봄',
                  sum( if( season='여름', amount, 0) ) '여름',
                  sum( if( season='가을', amount, 0) ) '가을',
                  sum( if( season='겨울', amount, 0) ) '겨울',
                  sum( amount ) '합계' 
from pivotTest group by uName;

-- 270 page 문제 풀기
select  season,
        sum( if( uname='김범수', amount, 0)  ) '김범수', 
        sum( if( uname='윤종신', amount, 0)  ) '윤종신', 
        sum( amount ) '합계' 
from pivotTest  group by season ;

-- json 파일 처리하기
-- 1. json 만들기 
-- json.array()
select  json_array( 1, "abc", Null, True, curtime() );  -- [ ] 배열, 리스트 
-- json_object()
select json_object( "score", 87, "name", "hong", "age", 25 ) ; 

set  @jsonData = json_object( "score", 87, "name", "hong", "age", 25 ) ;
select @jsonData ;

select * from usertbl;

-- 키 userid, addr 값 json을 만들기 
select     
    json_object( userid, addr )
from usertbl ;

-- 키 userid, 값 [ 010, 000000 ] 형태로 json을 만들기 
select
     json_object( userid, json_array( mobile1, mobile2 )  )   
from usertbl;

-- 외부로 내보내기 json 파일로 만들기 
select
     json_object( userid, json_array( mobile1, mobile2 )  )   
from usertbl
into outfile 'D:/ai/study/temp/movies/jsonOutput.json';

-- 자료형이 json인지 판단하기
-- json_valid()
set  @jsonData = json_object( "score", 87, "name", "hong", "age", 25 ) ;
select  json_valid(  @jsonData ) ; -- json 자료형이므로 1을 반환

select 
  if( json_valid(  @jsonData ) = 1, 
      'json자료다',
      'json자료가 아니다' ); 

-- json 자료안에 값을 검색하기 
SET @j = '["abc", [{"k": "10"}, "def"], [ {"x1":"abc1"}, {"x2":"abc2"}, {"x5":"abc5"}  ], {"y":"bcd"}]';

select 
   json_search(  @j,  'all', 'abc55' ) ; -- 못 찾으면 null 반환된다. -- 찾으면 리스트 위치를 알려 준다. 
   
-- json_extract   

-- json_insert
SET @j = '{"a": 1,  "b":  [2, 3] }';
select json_insert(  @j, '$.c', 10 ) ; -- 키가 새것이면 삽입된다. 
select json_insert(  @j, '$.a', 10 ) ; -- 키가 이미 있으면 삽입되지 않는다.
select json_insert(  @j, '$.b', '[2,3,4]' ) ; -- 키가 이미 있으면 삽입되지 않는다.

-- json_replace
SET @j = '{"a": 1,  "b":  [2, 3] }';
select json_replace(  @j,  '$.a', 10 ); -- 키가 있으면 수정하기      
select json_replace(  @j,  '$.c', 10 ); -- 키가 없으면 아무것도 안하기 

--  -------------------- 조인  
select * from usertbl ;
select * from buytbl ;

select *  from usertbl 
   inner join  buytbl
   on usertbl.userid = buytbl.userid ; 
 
select usertbl.name, buytbl.prodName  from usertbl 
   inner join  buytbl
   on usertbl.userid = buytbl.userid 
where  birthyear  between 1970 and 1980 ;   
   
select usertbl.name, buytbl.prodName  from usertbl 
   inner join  buytbl
   on usertbl.userid = buytbl.userid 
where  birthyear  between 1970 and 1980 order by usertbl.name limit 3 ;  

-- select usertbl.name, buytbl.prodName  from usertbl 
--                    5                        1
--    inner join  buytbl
--                  2
--    on usertbl.userid = buytbl.userid 
--                     3
-- where  birthyear  between 1970 and 1980 
--                      4
-- order by usertbl.name
--              6
-- limit 3 ; 
--     7

select u.name, b.prodName  from usertbl u
   inner join  buytbl b
   on u.userid = b.userid 
where  b.userid='BBK'; 

-- 282 
create table stdTbl(
   stdName varchar(10) not null primary key,
   addr char(4) not null
);
create table clubTbl(
   clubName varchar(10) not null primary key,
   roomNo char(4) not null
);
create table stdclubTbl (
   num int auto_increment not null primary key,
   stdName varchar(10) not null,
   clubName varchar(10) not null,
   foreign key(stdName) references stdTbl(stdName),
   foreign key(clubName) references clubTbl(clubName)
);
insert into stdTbl
values
( '김범수','경남'), ('성시경','서울'), ('조용필','경기'),('은지원','경북'), ('바비킴','서울') ; 

insert into clubTbl
values
( '수영','101호'), ('바둑','102호'), ('축구','103호'),('봉사','104호') ; 

insert into stdclubTbl
values
( null, '김범수','바둑'), (null,'김범수','축구'),
(null,'조용필','축구'),(null,'은지원','축구'),
(null, '은지원','봉사'), (null, '바비킴','봉사') ; 

select * from stdTbl;
select * from clubTbl;
select * from stdclubTbl;

-- 1. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 학생을 기준으로 학생이름, 지역, 가입한 동아리, 동아리방 보기
select  s.stdName, s.addr, c.clubName, c.roomNo
from stdTbl  s  
  inner join stdclubtbl  sc
  on s.stdName = sc.stdName
  inner join clubtbl c
  on sc.clubName = c.clubName ;

-- 2. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 축구를 선택하신 분의 이름과 지역은? 김범수 경남, 조용필 경기, 은지원 경북
select 
    s.stdName, s.addr
from stdtbl s
    inner join stdclubTbl sc 
    on s.stdName = sc.stdName
    inner join clubtbl c
    on sc.clubName = c.clubName
where sc.clubName='축구' ;     

-- 3. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 은지원이 선택한 동아리와 동아리방은? 축구 103호 봉사 104호 

select 
    c.clubName, c.roomNo
from stdtbl s
    inner join stdclubTbl sc 
    on s.stdName = sc.stdName
    inner join clubtbl c
    on sc.clubName = c.clubName
where sc.stdName='은지원' ; 

-- 4. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 서울 지역에 사는 사람이 선택한 동아리명은? 답은  바비킴 봉사  성시경 null -- inner join 구할 수 없다
select 
    s.stdName, sc.clubName
from stdtbl s
    inner join stdclubTbl sc 
    on s.stdName = sc.stdName
    inner join clubtbl c
    on sc.clubName = c.clubName
where s.addr='서울' ; 

-- 5. 요구사항 동아리방 101호와 102호를 사용하는 사람들의 이름을 구하기 
-- 답은  102호 김범수    단, 101호 null 출력되지 않는다 왜? null 이니깐

select 
    c.roomNo,  s.stdName
from stdtbl s
    inner join stdclubTbl sc 
    on s.stdName = sc.stdName
    inner join clubtbl c
    on sc.clubName = c.clubName
where c.roomNo in ( '101호', '102호' ) ; 

-- outer join 
-- 조인에 만족하지 않는 행까지 포함하기 null까지 포함하기
select  
   *
from stdTbl s
  left outer join stdclubTbl sc
  on s.stdName = sc.stdName ; 
  
select  
   *
from stdclubTbl sc
  right outer join clubtbl c
  on sc.clubName = c.clubName ;  

select  
   *
from stdtbl s
   left outer join stdclubtbl sc 
   on s.stdName = sc.stdName 
   left outer join clubtbl c 
   on sc.clubName = c.clubName 

union   

select  
   *
from stdtbl s
   left outer join stdclubtbl sc 
   on s.stdName = sc.stdName 
   right outer join clubtbl c 
   on sc.clubName = c.clubName;
      
-- 4. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 서울 지역에 사는 사람이 선택한 동아리명은? 답은  바비킴 봉사  성시경 null 
select 
    s.stdName, sc.clubName
from stdtbl s
    left outer join stdclubTbl sc 
    on s.stdName = sc.stdName
    left outer join clubtbl c
    on sc.clubName = c.clubName
where s.addr='서울' ;   

-- 5. 요구사항 동아리방 101호와 102호를 사용하는 사람들의 이름을 구하기 
-- 답은  102호 김범수  101호 null 

select 
    c.roomNo,  s.stdName
from stdtbl s
    left outer join stdclubTbl sc 
    on s.stdName = sc.stdName
    right outer join clubtbl c
    on sc.clubName = c.clubName
where c.roomNo in ( '101호', '102호' ) ; 

-- cross join 비강추
select *  from stdtbl s , stdclubtbl sc , clubtbl c ;
  
select * from stdtbl s
    cross join stdclubtbl sc ;
    

-- self 조인 ----------------------
create table empTbl(
   emp char(3), 
   manager char(3), 
   empTel varchar(8) );

INSERT INTO empTbl VALUES('나사장',NULL,'0000');
INSERT INTO empTbl VALUES('김재무','나사장','2222');
INSERT INTO empTbl VALUES('김부장','김재무','2222-1');
INSERT INTO empTbl VALUES('이부장','김재무','2222-2');
INSERT INTO empTbl VALUES('우대리','이부장','2222-2-1');
INSERT INTO empTbl VALUES('지사원','이부장','2222-2-2');
INSERT INTO empTbl VALUES('이영업','나사장','1111');
INSERT INTO empTbl VALUES('한과장','이영업','1111-1');
INSERT INTO empTbl VALUES('최정보','나사장','3333');
INSERT INTO empTbl VALUES('윤차장','최정보','3333-1');
INSERT INTO empTbl VALUES('이주임','윤차장','3333-1-1');

select * from empTbl;

-- 우대리 상관의 연락처  답 '2222-2'
 select 
   e1.empTel
 from emptbl e
    inner join  emptbl e1
    on e.manager = e1.emp 
where e.emp = '우대리' ;   

 -- 이주임 매니저의 매니저는? 최정보
 select 
   e1.manager
 from emptbl e
    inner join  emptbl e1
    on e.manager = e1.emp 
where e.emp = '이주임' ;   
 
 -- 이주임 매니저의 매니저의 전화번호 ? 3333 
 -- self join을 2단계 한다.
 -- 찾으려는 정보를 1줄(행)에 모두 만들어 두고 검색 해야된다.
select 
    * 
 from emptbl e
    inner join  emptbl e1
    on e.manager = e1.emp 
    inner join  emptbl e2
    on e1.manager = e2.emp ;
    
select 
    e2.empTel  
 from emptbl e
    inner join  emptbl e1
    on e.manager = e1.emp 
    inner join  emptbl e2
    on e1.manager = e2.emp 
where  e.emp = '이주임'    ;    
    
 