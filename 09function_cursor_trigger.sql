-- stored procedure program
-- 설계 --> 인스턴스화 --> 사용
use sqldb;
-- 기본적인 형식
delimiter $$
create procedure  userProc()
begin
    select * from usertbl;
end $$
delimiter 

call userProc();

desc usertbl ; -- 테이블의 구조 보기
-- 파라미터를 넣어 처리형식
delimiter $$
create procedure  userProc1( in _addr char( 2 ) )
begin
    select * from usertbl where addr = _addr ;
end $$
delimiter 

call userProc1('서울');

-- userId BBK 또는 LJB 검색하기 
drop procedure userProc2;

delimiter $$
create procedure  userProc2( in _userId1 varchar( 10 ),  in _userId2 varchar( 10 ) )
begin
    select * from usertbl where userId in ( _userId1, _userId2 ) ;
end $$
delimiter 

call userProc2('BBK', 'LJB');

-- 파라미터 값을 내보내기
-- 서울에 사는 사람이 몇명인지 변수에 담아서 외부로 내보내기 
-- 파라미터를 넣어 처리형식

delimiter $$
create procedure  userProc3( in _addr char( 2 ), out _result int )
begin
    select count(addr) into _result  from usertbl where addr = _addr ;
end $$
delimiter ;

call userProc3('서울',  @_result );
select @_result; -- 답 4

select * from buytbl;
desc  buytbl; 

-- 문제 groupName을 입력하면  price 값이 가장 큰 것을 찾기 변수로 받기 
-- 처리 결과  입력은 전자 답은 노트북 1000
--               의류 답은 청바지  50
--               서적 답은 책     15
drop procedure  buyPro1;

delimiter $$
create procedure  buyPro1( in _gN  char(4),  out _price int )
begin 
  select  max(price) into _price from buytbl where  groupName = _gN ;
end $$
delimiter ;

call buyPro1( '전자', @priceVar) ;
call buyPro1( '의류', @priceVar) ;
call buyPro1( '서적', @priceVar) ;
select @priceVar;  


drop procedure  buyPro2;

delimiter $$
create procedure  buyPro2( in _gN  char(4), out _pN char(6),  out _price int )
begin 
  /* 여러개의 출력값을 얻으려면 select문을 여러개 쓰기 */ 
  select prodName into _pN from buytbl where groupName = _gN 
       group by prodName 
       order by max(price) desc limit 1;
  select  max(price)  into _price  from buytbl  where  groupName = _gN ;
   
end $$
delimiter ;

call buyPro2( '전자', @pNVar, @priVar) ;
select @pNVar, @priVar; 

call buyPro2( '의류', @pNVar, @priVar) ;
select @pNVar, @priVar; 

call buyPro2( '서적', @pNVar, @priVar) ;
select @pNVar, @priVar; 

-- --------------------------------------

select * from buytbl where groupName = '전자';

select prodName, max(price) from buytbl where groupName = '전자' 
  group by prodName 
  order by max(price) desc limit 1;


--  2) procedure function 함수 결과 1개 나온다  return 452페이지
-- 주의 사항 : 사전에 해야 되는 작업 -  함수생성권한 제한을 풀어 주기 
set global log_bin_trust_function_creators = 1 ;

-- 기본예
delimiter $$
create function userFun1( v1 int, v2 int )  -- 입력 해줄 자료형 
    returns int  -- 출력해 줄 자료형 선언 
begin
   return v1 + v2 ;
end $$ ;
delimiter ;

select  userFun1( 100, 200 ); -- 실행은 select문으로 하기 

-- 요구사항 출생년도를 입력하면 나이가 생성되는 함수 만들기
delimiter $$
create function ageFun( birthYear int  )
   returns int
begin
    declare age int;
    set age = year( curdate() ) - birthYear;
    return  age ;
end $$   
delimiter ; 

select ageFun( 2000 ) into @age2000;
select ageFun( 2020 ) into @age2020;
select @age2000 - @age2020 ;
-- ------------

drop table cUserTbl;

create table cUserTbl
as
select * from usertbl;

select * from cUserTbl;

alter table cUserTbl
  add column years int ; -- 컬럼 추가하기

-- 요구사항 mDate를 이용해서 근무년수를 구하는 함수를 만들기 
-- 1단계 함수를 만든다.
drop function yearsFun;

delimiter $$
create function yearsFun( y1 date  ) -- mDate 컬럼 입력 받기 
   returns int
begin
    declare yy int;
    set yy = year( curdate() ) - year( y1 ); -- 2024 - 2013 = 11
    return  yy ;
end $$   
delimiter ; 

desc cUserTbl;



-- 2단계 함수를 호출해서 근무년수를 구한다. 
select mDate into @mDate from cUserTbl  where userId='BBK';
select @mDate;

select yearsFun(  @mDate  ) into @years ; 
select @years ;
   
-- 3단계를 years 컬럼 update하기 
update cUserTbl set years = @years where userId='BBK';

select * from cUserTbl;

-- 'EJW' 업데이트하기 
select mDate into @mDate from cUserTbl  where userId='EJW';
select @mDate;

select yearsFun(  @mDate  ) into @years ; 
select @years ;

update cUserTbl set years = @years where userId='EJW';

select * from cUserTbl;

-- 'KBS' 업데이트 하기 

-- 3) cursor 반복처리 
-- 포인터 : 가르키다. 자동으로 한행을 읽으면 아래(다음)로 내려 간다
-- 파일 시작 BOF : begin of File ,    EOF : End of file 
-- 처리 순서 1단계 파일을 연다 2단계 파일을 읽는다 행단위로 읽는다 3단계 파일 끝 4단계 닫는다 
-- fetch 
/* 커서 형식 
delimiter $$
 create procedure  cursorProc()
 begin
   -- 변수 선언 6줄~10줄까지
   -- 커서 선언  12줄
   -- 반복 조건  15줄
   -- 커서 열기
   -- 반복문
   -- 결과 출력
   -- 커서 닫기
 end $$
delimiter ; */ 

-- 고객의 평균키를 구하는 프로시저 커서 이용하기 
delimiter $$
 create procedure  cursorProc()
 begin
   -- 변수 선언 6줄~10줄까지
   declare userHeight int;  -- 고객의 키
   declare cnt int default 0; -- 고객의 인원수
   declare totalHeight int default 0; -- 키의 합계
   declare endOfRow boolean default false; 
   -- 커서 선언  12줄
   declare userCursor Cursor for  --  userCursor 커서명
       select height from usertbl;  -- 문제가 평균키를 구하기 
   -- 반복 조건  15줄
   declare continue handler 
      for not found set endOfRow = TRUE ; 
   -- 커서 열기
   open userCursor; 
   -- 반복문
   cursor_loop : Loop 
     fetch userCursor into userHeight ; 
     if endOfRow then
         leave cursor_loop ; -- leave 반복문에 빠져라 
     end if ;     
     set cnt = cnt + 1;
     set totalHeight = totalHeight + userHeight ;
   end loop cursor_loop ; 
   -- 결과 출력
   select concat('고객 키의 평균===>', (totalHeight / cnt ) );
   -- 커서 닫기
   close userCursor; 
 end $$
delimiter ; 

-- 호출하기
call cursorProc() ;

-- 고객테이블 고객등급 열을 하나 추가하기 등급 넣기 
use sqldb;
select * from usertbl ;


select * from buytbl order by userid;

drop procedure gP;

delimiter $$
 create procedure  gP()
 begin
   -- 변수 선언 6줄~10줄까지
   declare id varchar(10) ; -- 사용자 id 'BBK'
   declare hap bigInt ; -- 총구매합 1920
   declare userGrade varchar(20) ; -- 등급 '최우수고객' 
   declare endOfRow boolean default False ; 
   -- 커서 선언  
   declare userCursor cursor for 
      select  u.userid, sum( b.price * b.amount ) 
      from  buytbl b
         right outer join  usertbl u
         on b.userid = u.userid
      group by u.userid, u.name ;   
         
   -- 반복 조건  
   declare continue handler
       for not found set endOfRow = TRUE;
       
   -- 커서 열기
   open userCursor ;
   -- 반복문
   grade_loop : Loop 
      fetch  userCursor into id, hap ; 
      if endOfRow  then
          leave grade_loop;
      end if; 
      
      case 
		  when ( hap >= 1500 ) then set userGrade = '최우수고객' ; 
		  when ( hap >= 1000 ) then set userGrade = '우수고객' ; 
		  when ( hap >= 1 ) then set userGrade = '일반고객' ; 
		  else set userGrade = '잠재고객' ; 
      end case ;
    
      update usertbl set r1 = userGrade where userId = id; 
      
   end Loop  grade_loop ;
   
   -- 커서 닫기
   close userCursor ;
 end $$
delimiter ;

call gP();


select * from usertbl;

alter table usertbl
  add column r1 varchar(20) ; 
 
-- 4) 트리거
-- 예) 사원테이블 삽입된 이후에  기본적인 인적사항이 자동 삽입되면 좋겠다.  급여가 지급된 후에 세금 테이블에 자동 저장  
-- 사용은 insert update delete 
-- 직접 실행은 안됨 이벤트가 발생했을 때 자동 실행 됨

create database if not exists testDB;
use testDb;

create table if not exists testTbl ( id int, txt varchar(10) );

insert into testTbl values ( 1, '레드벨벳' );
insert into testTbl values ( 2, '잇지' );
insert into testTbl values ( 3, '블랙핑크' );

select * from testTbl;

drop trigger if exists testTrg ;

delimiter //
  create  trigger  testTrg   -- 트리거가 언제 어느 테이블 적용할지 
     after  delete     -- 이후에
     on testTbl     
     for each row 
  begin
     set @msg = '가수 그룹이 삭제됩니다' ; -- 트리거의 처리 내용
  end // 
delimiter ; 

set @msg = '';
insert into testTbl values ( 4, '마마무' );
select @msg;

update testTbl set txt='마마마무' where id = 4 ;
select @msg;

delete from testTbl where id = 4 ;
select @msg;

-- ---------------
-- 요구사항 : 회원테이블에서 update, delete 시도하면
--         수정된 또는 삭제된 테이블을 별도의 테이블에 보관하고 변경일자, 변경한 사람을 기록하자.
use sqldb ;

create table backup_userTbl 
 (
  userID  	CHAR(8) NOT NULL PRIMARY KEY, -- 사용자 아이디(PK)
  name    	VARCHAR(10) NOT NULL, -- 이름
  birthYear   INT NOT NULL,  -- 출생년도
  addr	  	CHAR(2) NOT NULL, -- 지역(경기,서울,경남 식으로 2글자만입력)
  mobile1	CHAR(3), -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
  mobile2	CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈제외)
  height    	SMALLINT,  -- 키
  mDate    	DATE,  -- 회원 가입일
  modType char(2), -- 변경된 타입, '수정' 또는 '삭제'
  modDate date, -- 변경된 날짜
  modUser varchar(256) -- 변경한 사용자 
 ) ;
 
-- 트리거 작성하기
delimiter //
create trigger  but  -- 언제할래? update 후에  무엇을 할래? usertbl의 모든 행을  
   after update 
   on usertbl 
   for each row 
 begin -- 어떻게 ? 내용 
    insert into backup_userTbl  
    values ( OLD.userID, OLD.name, OLD.birthYear, old.addr, 
             old.mobile1, old.mobile2, old.height, old.mDate,
             '수정', curdate(), current_user() 
             ) ;
 end //
delimiter ; 

select * from usertbl ;

update usertbl set birthYear = 1977 where userId='BBK' ;
update usertbl set addr = '경기' where userId='JKW' ;
update usertbl set addr = '서울' where userId='EJW' ;

select * from backup_userTbl ;


-- 467
-- 삭제가 발생했을 때 
drop trigger bud ;
delimiter //
create trigger bud -- 언제 누구에게
  after delete 
  on usertbl 
  for each row
begin
  insert into backup_usertbl 
	values ( OLD.userID, OLD.name, OLD.birthYear, old.addr, 
             old.mobile1, old.mobile2, old.height, old.mDate,
             '삭제', curdate(), current_user()
             );
end//  
delimiter ;

select * from usertbl ;
delete from usertbl where userid = 'YJS' ;
 
select * from backup_usertbl ;


-- 469 
-- 삽입 후에 경고 오류 발생시키고 경고 메시지 띄우기

delimiter //
create trigger tui -- 언제 누구에게
  after insert
  on usertbl 
  for each row
begin
  signal sqlstate '45000'set message_text = '데이터의 입력을 시도했습니다. 귀하의 정보가 서버에 기록되었습니다.';
end//  
delimiter ;
select * from usertbl ;
insert into usertbl values ('ABC', '에비씨', 1977,'서울','011','1111111',181, '2019-12-25', '잠재고객');
drop trigger ubi ;
drop trigger tui ;
-- before 트리거
-- old 변경되기 전의 자료, new 변경되고 난 후 
-- 요구사항 - 입력할 때 생일 잘못 입려되지 않도록 1900 년도 이전 입력이면 0 으로 입력, 또는  올해 년도보다 이후의 년도 입력시 0으로 입력
delimiter //
create trigger ubi 
  before insert 
  on usertbl 
  for each row 
begin
  if new.birthYear < 1900 then 
    set new.birthYear = 0 ;
  elseif new.birthYear > year(curdate()) then
	set new.birthYear = year(curdate()) ;
    end if;
end //  
delimiter ;

insert into usertbl values('DDD', '디디디', 1877,'서울','011','1111111',181, '2019-12-25', '잠재고객');
insert into usertbl values('EEE', '이이이', 2877,'서울','011','1111111',181, '2019-12-25', '잠재고객');
select * from usertbl ;

-- 주소가 '평양' 입력되면 '간첩' 
-- 전화번호가 '999' 입력되면 '010'

delimiter //
create trigger ubi2 
  before insert 
  on usertbl 
  for each row 
begin
  if new.addr = '평양' then 
    set new.addr = '외국' ;
  elseif new.mobile1 = '999' then
	set new.mobile1 = '010' ;
    end if;
end //  
delimiter ;

insert into usertbl values('FFF', '에프에프', 1877,'평양','011','1111111',181, '2019-12-25', '잠재고객');
insert into usertbl values('GGG', '지지지', 1877,'서울','011','1111111',181, '2019-12-25', '잠재고객');
select * from usertbl ;

-- 생성한 trigger들을 확인
show triggers from sqldb ;

-- 다중 트리거
-- 구매 1, 물품 -1, 배송 +1

drop database if exists tirggerDb;
create database if not exists triggerDb;
use tiggerDb ;

-- 구매테이블
create table orderTbl
	(orderNo int auto_increment primary key,
    userid varchar(5),
    prodName varchar(5),
    orderamount int );
    
-- 물품테이블
create table prodTbl 
	(prodName varchar(5), account int);

-- 배송
create table deliverTbl 
	(dleiverNo int auto_increment primary key,
	prodName varchar(5),
    account int );
    
-- 물품 테이블에 물건 삽입    
insert into prodTbl values ('사과', 100);
insert into prodTbl values ('배', 100);
insert into prodTbl values ('귤', 100);

select * from prodTbl ;
drop trigger orderTg;
-- 트리거 만들기 
-- 구매 테이블에 삽입되면 물품 테이블에서 갯수만큼 차감해서 업데이트한다.
delimiter //
  create trigger orderTg
	after insert 
    on orderTbl
    for each row
  begin
    update prodTbl set account = account - new.orderamount where prodName = new.prodName ;
  end //
delimiter ;
-- 요구사항 물품테이블이 업데이트 된 후에 배송테이블에 삽입하기
delimiter //
  create trigger prodTg 
    after update 
    on prodTbl
    for each row
  begin
    declare orderAmount int; 
    set orderAmount = old.account - new.account ;
    insert into deliverTbl values (null, new.prodName, orderAmount ) ;   
  end //
delimiter ;

-- 구매
select * from orderTbl ;
select * from prodTbl ;
select * from deliverTbl;
insert into ordertbl values (null, 'BBK', '사과', 5 ) ; 
insert into ordertbl values (null, 'KBS', '배', 10 ) ; 

select * from orderTbl ;
select * from prodTbl ;
select * from deliverTbl;

show triggers ;

-- 569 14장 지리 정보 시스템
-- mysql 5.0 geometry 자료형 지원

DROP DATABASE IF EXISTS GisDB;
CREATE DATABASE GisDB;
USE GisDB;

CREATE TABLE StreamTbl (
   MapNumber CHAR(10),  -- 지도일련번호
   StreamName CHAR(20),  -- 하천이름
   Stream GEOMETRY ); -- 공간데이터(하천개체)

INSERT INTO StreamTbl VALUES ( '330000001' ,  '한류천', 
   ST_GeomFromText('LINESTRING (-10 30, -50 70, 50 70)'));
INSERT INTO StreamTbl VALUES ( '330000001' ,  '안양천', 
   ST_GeomFromText('LINESTRING (-50 -70, 30 -10, 70 -10)'));
INSERT INTO StreamTbl VALUES ('330000002' ,  '일산천', 
   ST_GeomFromText('LINESTRING (-70 50, -30 -30, 30 -60)'));

select * from streamTbl;

CREATE TABLE BuildingTbl (
   MapNumber CHAR(10),  -- 지도일련번호
   BuildingName CHAR(20),  -- 건물이름
   Building GEOMETRY ); -- 공간데이터(건물개체)

INSERT INTO BuildingTbl VALUES ('330000005' ,  '하나은행', 
   ST_GeomFromText('POLYGON ((-10 50, 10 30, -10 10, -30 30, -10 50))'));
INSERT INTO BuildingTbl VALUES ( '330000001' ,  '우리빌딩', 
   ST_GeomFromText('POLYGON ((-50 -70, -40 -70, -40 -80, -50 -80, -50 -70))'));
INSERT INTO BuildingTbl VALUES ( '330000002' ,  '디티오피스텔', 
   ST_GeomFromText('POLYGON ((40 0, 60 0, 60 -20, 40 -20, 40 0))'));
   
select * from BuildingTbl 
union all   
SELECT * FROM StreamTbl WHERE ST_Length(Stream) > 140 ;   
   
SELECT BuildingName, ST_AREA(Building) FROM BuildingTbl 
   WHERE ST_AREA(Building) < 500;

-- 583
SELECT StreamName, BuildingName, Building, Stream
   FROM BuildingTbl , StreamTbl 
   WHERE ST_Intersects(Building, Stream) = 1   AND StreamName = '안양천';

SELECT ST_Buffer(Stream,5) FROM StreamTbl;


-- 

DROP DATABASE IF EXISTS KingHotDB;
CREATE DATABASE KingHotDB;

USE KingHotDB;

CREATE TABLE Restaurant
(restID int auto_increment PRIMARY KEY,  -- 체이점 ID
 restName varchar(50),           -- 체인점 이름
 restAddr varchar(50),           -- 체인점 주소
 restPhone varchar(15),           -- 체인점 전화번호
 totSales  BIGINT,              -- 총 매출액         
 restLocation geometry ) ;           -- 체인점 위치

-- [왕매워 짬뽕] 1호점~9호점 입력
INSERT INTO Restaurant VALUES
 (NULL, '왕매워 짬뽕 1호점', '서울 강서구 방화동', '02-111-1111', 1000, ST_GeomFromText('POINT(-80 -30)')),
 (NULL, '왕매워 짬뽕 2호점', '서울 은평구 증산동', '02-222-2222', 2000, ST_GeomFromText('POINT(-50 70)')),
 (NULL, '왕매워 짬뽕 3호점', '서울 중랑구 면목동', '02-333-3333', 9000, ST_GeomFromText('POINT(70 50)')),
 (NULL, '왕매워 짬뽕 4호점', '서울 광진구 구의동', '02-444-4444', 250, ST_GeomFromText('POINT(80 -10)')),
 (NULL, '왕매워 짬뽕 5호점', '서울 서대문구 북가좌동', '02-555-5555', 1200, ST_GeomFromText('POINT(-10 50)')),
 (NULL, '왕매워 짬뽕 6호점', '서울 강남구 논현동', '02-666-6666', 4000, ST_GeomFromText('POINT(40 -30)')),
 (NULL, '왕매워 짬뽕 7호점', '서울 서초구 서초동', '02-777-7777', 1000, ST_GeomFromText('POINT(30 -70)')),
 (NULL, '왕매워 짬뽕 8호점', '서울 영등포구 당산동', '02-888-8888', 200, ST_GeomFromText('POINT(-40 -50)')),
 (NULL, '왕매워 짬뽕 9호점', '서울 송파구 가락동', '02-999-9999', 600, ST_GeomFromText('POINT(60 -50)'));

SELECT restName, ST_Buffer(restLocation, 3) as '체인점' FROM Restaurant;

-- 지역 관리자 테이블
CREATE TABLE Manager
 (ManagerID int auto_increment PRIMARY KEY,   -- 지역관리자 id
  ManagerName varchar(5),                 -- 지역관리자 이름
  MobilePhone varchar(15),                 -- 지역관리자 전화번호
  Email varchar(40),                      -- 지역관리자 이메일
  AreaName varchar(15),                 -- 담당지역명
  Area geometry SRID 0) ;                       -- 담당지역 폴리곤
  
  INSERT INTO Manager VALUES
 (NULL, '존밴이', '011-123-4567', 'johnbann@kinghot.com',  '서울 동/북부지역',
   ST_GeomFromText('POLYGON((-90 0, -90 90, 90 90, 90 -90, 0 -90, 0  0, -90 0))')) ,
 (NULL, '당탕이', '019-321-7654', 'dangtang@kinghot.com', '서울 서부지역',
   ST_GeomFromText('POLYGON((-90 -90, -90 90, 0 90, 0 -90, -90 -90))'));

SELECT ManagerName, Area as '당탕이' FROM Manager WHERE ManagerName = '당탕이';
SELECT ManagerName, Area as '존밴이' FROM Manager WHERE ManagerName = '존밴이';

-- 서울시의 도로 테이블
CREATE TABLE Road
 (RoadID int auto_increment PRIMARY KEY,  -- 도로 ID
  RoadName varchar(20),           -- 도로 이름
  RoadLine geometry );              -- 도로 선
  
  INSERT INTO Road VALUES
 (NULL, '강변북로',
   ST_GeomFromText('LINESTRING(-70 -70 , -50 -20 , 30 30,  50 70)'));

SELECT RoadName, ST_BUFFER(RoadLine,1) as '강변북로' FROM Road;

SELECT ManagerName, AreaName, ST_Area(Area) as "면적 m2" FROM Manager;

-- 각 메니저가 관리하는 체인점정보
SELECT M.ManagerName,
       R.restName,
       R.restAddr,
       M.AreaName 
FROM Restaurant R, Manager M
WHERE ST_Contains(M.AREA, R.restLocation) = 1 
ORDER BY M.ManagerName;
-- 근거리 체인점 알아보기
SELECT R2.restName,
       R2.restAddr,
       R2.restPhone, 
       ST_Distance(R1.restLocation, R2.restLocation) AS "1호점에서 거리"
FROM Restaurant R1, Restaurant R2
WHERE R1.restName='왕매워 짬뽕 1호점'
ORDER BY ST_Distance(R1.restLocation, R2.restLocation) ;

SELECT Area INTO @eastNorthSeoul FROM Manager WHERE AreaName = '서울 동/북부지역';
SELECT Area INTO @westSeoul FROM Manager WHERE AreaName = '서울 서부지역';
SELECT ST_Union(@eastNorthSeoul, @westSeoul) AS  "모든 관리지역을 합친 범위" ;
-- ST_Union 두 도형을 합한 결과 좌표 집합을 구한다
SELECT  Area INTO @eastNorthSeoul FROM Manager WHERE ManagerName = '존밴이';
SELECT  Area INTO @westSeoul FROM Manager WHERE ManagerName = '당탕이';
SELECT  ST_Intersection(@eastNorthSeoul, @westSeoul) INTO @crossArea ; -- 두 도형의 교차한 부분의 좌표를 구함

select @crossArea;

SELECT DISTINCT R.restName AS "중복 관리 지점"
    FROM Restaurant R, Manager M
    WHERE ST_Contains(@crossArea, R.restLocation) = 1;

SELECT  ST_Buffer(RoadLine, 30) INTO @roadBuffer FROM Road;
SELECT R.restName AS "강변북로 30M 이내 지점"
   FROM Restaurant R
   WHERE ST_Contains(@roadBuffer,R.restLocation) = 1;

SELECT  ST_Buffer(RoadLine, 30) INTO @roadBuffer FROM Road;
SELECT  ST_Buffer(RoadLine, 30) as '강변북로 30m' FROM Road;
SELECT  ST_Buffer(R.restLocation, 5) as '체인점' -- 지점을 약간 크게 출력
   FROM Restaurant R
   WHERE ST_Contains(@roadBuffer, R.restLocation) = 1;
SELECT RoadLine as '강변북로' FROM Road;
