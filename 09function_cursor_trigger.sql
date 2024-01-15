-- stored procedure program
-- 설계 --> 인스턴스화 --> 사용
use sqldb;
-- 가장 기본적인 형식
delimiter $$
create procedure userProc()
begin
	select * from usertbl;
end $$
delimiter 

call userProc();

desc buytbl;

-- 파라미터를 넣어 처리형식
delimiter $$
create procedure userProc3(in _addr varchar(2))
begin
	select * from usertbl where addr = _addr;
end $$
delimiter 

call userProc3('서울');

delimiter $$
create procedure userProc5(in _userid1 varchar(10), _userid2 varchar(10) )
begin
	select * from usertbl where userid in (_userid1, _userid2) ;
end $$
delimiter 


call userProc5('BBk','LJB');

-- 파라미터 값을 내보니기 
-- 서울에 사는 사람의 수가 몇 명인지 변수에 담아서 외부로 내보내기

delimiter $$
create procedure userProc6(in _addr varchar(2), out _result int)
begin
	select count(addr) into _result from usertbl where addr = _addr;
end $$
delimiter 

call userProc6('서울', @_result);
select @_result;

select * from buytbl;

-- grounName을 입력하면 price  갑이 가장 큰 것을 찾아 변수로 받기
-- 처리 결과 입력은 전자 노트북 1000, 의류 답은 청바지 50, 서적 답은 책 15                

delimiter $$
create procedure buyPro1(in _gN char(4), out _price int )
begin
	select max(price) into _price from buytbl where groupName = _gN ;
end $$
delimiter ;

DROP procedure buypro1 ;

call buyPro1('전자',@priceVar);
select @priceVar ;

-- ---------


-- -------------


-- prcedure function 함수 결과 1개 나온다.  return 주의사항 : 사전에 해야 하는 작업 함수 생성 권한 제한을 풀어 주기

set global log_bin_trust_function_creators = 1;

delimiter $$
create function userFun1( v1 int, v2 int)  -- 입력해 줄 자료형
	returns int -- 출력해 줄 자료형alter
begin
 return v1 + v2 ;
end $$ 
delimiter ;

select userFun1(100,300);



delimiter $$
create function ageFun(birthYear int)
   returns int
begin
	declare age int;
	set age = year( curdate() ) - birthYear;
    return age ;
end $$ 

delimiter ;
select ageFun(2000) ;
select ageFun(2000) into @age2000 ;
select ageFun(2020) into @age2020 ;
select @age2000 - @age2020 ;

drop table cUsertbl ; 
create table cUsertbl as select * from usertbl;

select * from cUsertbl ;

-- 근무 년수를 구하는 컬럼 추가
alter table cUsertbl add column years int ;

-- mDate 를 활용하여 근무 년수를 구하는 함수를 만들기

-- 함수 만들기
drop function yearsFun ;
delimiter $$
create function yearsFun( y1 date)  -- mDate 컬럼 입력 받기
   returns int
begin
	declare yy int;
	set yy = year( curdate() ) - year(y1) ;
    return yy ;
end $$ 
delimiter ;

desc cUserTbl;
-- 함수 호출 근무 년수 구한다.
select mDate into @mDate from cUsertbl where userid = 'BBK';
select @mdate ;
select yearsFun(@mDate ) into @years ;
select @years ;

-- 3단계 years 컬럼에 update 하기
update cUsertbl set years = @years where userid = 'BBK' ;

select * from cUserTbl;


-- EJW 업데이트 하기

select mDate into @mDate from cUsertbl where userid = 'EJW';
select @mdate ;
select yearsFun(@mDate ) into @years ;
select @years ;
update cUsertbl set years = @years where userid = 'EJW' ;


-- KBS 업데이트 하기
select mDate into @mDate from cUsertbl where userid = 'KBS';
select @mdate ;
select yearsFun(@mDate ) into @years ;
select @years ;
update cUsertbl set years = @years where userid = 'KBS' ;

-- cursor 반복처리(반복문)
-- 포인터 : 가르키다. 자동으로 한행을 읽으면 아래(다음)로 내려 간다. 
-- 파일시작 BOF(begin of file) EOF(end of fiel) 
-- 작업 순서 1단계 파일을 연다, 2단계 파일을 읽는다(행단위로 읽는다), 3단계 파일 끝, 4단계 닫는다.

-- fetch
/* 커서형식
delimiter $$ 
create procedure cursorProc()
begin 
  -- 변수선언 p459 6~10번줄
  -- 커서선언 12번줄
  -- 반복조건 15번줄
  -- 커서열기
  -- 반복문
  -- 결과출력
  -- 커서닫기
end $$
delimiter ;
*/

-- 고객의 평균키를 구하는 프로시저를 커서를 이용하여 구하라

        
        update usertbl set r1 = userGrade  where userId = id;
    end Loop ;
    
    
    
  -- 결과출력
  -- 커서닫기
  close userCursor ;
end $$
delimiter ;

call gP();


select * from usertbl ;
alter table usertbl add column r1 varchar(20) ;

-- -------------------  트리거 trigger -------------------------
-- 급여 테이블 - 기본적인 인적사항이 자동으로 기입
-- 급여가 지급될 시, 세금 테이블이 자동으로 생성되게 함
-- ~이전에 ~이후에 자동 처리
-- insert, update, delete에서만 사용 가능함
-- 직접 실행은 안되고 이벤트가 발생했을 때(급여가 들어오면 ~한다.), 자동 실행된다.

create database if not exists testDB;
use testDB ;

create table if not exists testTbl (id int, txt varchar(10)) ;
insert into testTbl values (1, '레드밸벳');
insert into testTbl values (2, '잇지');
insert into testTbl values (3, '불랙핑크');

select * from testTbl;

drop trigger if exists testTrg ;

delimiter //
	create trigger testTrg  -- 트리거를 언제 어느 테이블에 적용할지?
	  after delete   -- trigger 내용 ~이후에
	  on testTbl 
	  for each row
	begin
	set @msg = '가수 그룹이 삭제됩니다' ; --트리거의 처리 내용
	end //  
delimiter ;

set @msg = '';
insert into testTbl values (4, '마마무');
select @msg ;

update testTbl set txt='마마마무' where id = 4;
select @msg ;

delete from testTbl where id = 4;
select @msg ;


-- -----------------
-- 요구사항 회원테이블에서 update나 delete 시도하면 수정된 또는 삭제된 테이블을 별도의 테이블에 보관하고 변경일자, 변경한 사람을 기록하자.

use sqldb ;

create table backup_userTbl 
(
  userID     CHAR(8) NOT NULL PRIMARY KEY, -- 사용자 아이디(PK)
  name       VARCHAR(10) NOT NULL, -- 이름
  birthYear   INT NOT NULL,  -- 출생년도
  addr        CHAR(2) NOT NULL, -- 지역(경기,서울,경남 식으로 2글자만입력)
  mobile1   CHAR(3), -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
  mobile2   CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈제외)
  height       SMALLINT,  -- 키
  mDate       DATE,  -- 회원 가입일
  modType char(2), -- 변경된 타입, '수정' 또는 '삭제'
  modDate date, -- 변경된 날짜
  modUser varchar(256) -- 변경된 사용자
);

select * from backup_usertbl;

-- 트리거 작성하기

delimiter //
create trigger but -- but은 트리거명 -update 후에 언제 무엇을 할래, usertbl의 모든 행을...
  after update
  on usertbl  
  for each row 
  begin  -- 내용 어떻게? 
	insert into backup_usertbl 
    values (old.userId, old.name, old.birthYear, old.addr, old.mobile1, old.mobile2, old.height, old.mdate,
    '수정', curdate(), current_user() ) ;
 end //
delimiter ;

select * from usertbl ;

update usertbl set birthyear = 1977 where userId = 'BBK';
select * from backup_userTbl ;

update usertbl set addr = '서울' where userid = 'EJW';




