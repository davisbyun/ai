use sqldb ;
select * from usertbl;
select * from buytbl;

select userid, name from usertbl 
union all -- 중복된 것 모두 합치기
select userid, prodName from buytbl; 

select userid, name from usertbl 
union -- 중복된것 제거하기
select userid, prodName from buytbl; 

-- 요구사항 이름 전화번호로 주소록을 만들기 단, 전화번호가 없는 사람은 제외
select name from usertbl where mobile1 is null ; 

select name, mobile1, mobile2 from usertbl
   where name  not in
    ( select name from usertbl where mobile1 is null )   ;
   
-- SQL 구문을 프로그래밍처럼 만들 수 있다
drop procedure if exists ifProc ;
-- 스트어드 프로스저 
delimiter $$
create procedure ifProc()
begin
  declare var1 int; 
  set var1 = 100;
  if var1 = 100 then
     select '100입니다';
  else 
     select '아닙니다';
  end if;   
end $$
delimiter ;

call ifProc();
call ifProc();

drop procedure if exists ifProc2;
use employees;

select * from employees ;

delimiter $$
create procedure ifProc2()  
begin
  declare hiredate date; -- 변수 선언 변수명 자료형
  declare curdate date; 
  declare days int ;
  
  select hire_date into hiredate from employees.employees
  where emp_no = 1001;
  
  set curDate = current_date(); 
  set days = datediff( curDate, hiredate);
  
  if(days / 365) >= 5 then
      select concat('입사한지 ' , days, '일이나 지났습니다. 축하합니다');
  else 
     select concat('입사한지 ' , days, '일밖에 안되었네요. 열심히 해요');
  end if;
end $$
delimiter ;

call ifProc2();

-- view 

use sqldb ;
select * from usertbl;

create view vuser 
as 
select * from usertbl ;

select * from vuser ;

-- 뷰 사용하는 이유 ? 1. 보안 2. 복잡한 쿼리문 단순화 시키기

use sqldb; 

create view v1
as
 select u.userid as 'user id' , u.name 'user name', b.prodName as 'product name' 
       from usertbl u
       inner join buytbl b
       on u.userid = b.userid ;
       
select  * from v1 ; 

select  `user id`,  `user name`,  `product name` from v1
  where `user id` = 'KBS' order by `product name`;  -- ` 백틱 ~키와 같이 있는 것
  
-- view 수정하기
alter view v1
as
  select 
      u.name as 'name', u.addr 'addr', concat_ws('-', u.mobile1, u.mobile2 ) 'tel' 
  from usertbl u
    inner join buytbl b
    on u.userid = b.userid;
    
select * from v1 ;    
select  `name`, `tel`  from v1 ; -- name, tel 

create or replace view v1 -- v1 뷰가 있으면 고치고 없으면 새로 만들고  
as
  select name, birthyear from usertbl where name='김범수' ; 
    
select * from v1;

-- 뷰 삽입 테이블이 삽입 될까? 예
-- usertbl을 복사하기
create table cUsertbl
as
select * from usertbl ; 

-- 뷰만들기
create  or replace view v2 
as
select userid, name, birthYear, addr, height from cUsertbl ;

select * from v2 ; -- 뷰에 삽입됐다
insert into v2 values ( 'HGD', '홍길동', 2020, '서울', 175 );

select * from cUsertbl; -- 테이블에 삽입된다. 

-- 테이블안에 삽입하기 뷰에 보일까?
insert into cUsertbl  ( userid, name, birthyear, addr ) 
    values ( "ADM", '관리자', 2021, '인천' ) ; 


desc v2;

-- 뷰 수정하면 테이블이 수정 될까?  예
select * from v2;
select * from cUsertbl;
-- 홍길동 birthyear 2019 수정하기
update v2 set birthyear = 2019 where name='홍길동' ;
  
-- 뷰 삭제 테이블이 삭제 될까? 예
-- 관리자를 지우기
delete from v2 where name='관리자' ; 

-- view 삭제하기
drop view v2;
 
-- --------------------
-- 테이블스페이스 : 물리적 공간  
-- DBA 데이터베이스 관리자  - 서버계정, 공간할당 

-- ------------
-- 인덱스 
-- 자료를 찾을 때 색인표 붙여 두는 것 
-- 목적 : 빠르게 검색하려고
-- B-Tree

-- 장점 : 검색 속도가 빠르다.(항상 그런 것은 아니다), 시스템의 성능이 향상된다.
-- 단점 : 추가적인 공간이 필요해 진다. 대략 데이터베이스 전체 용량의 10%가 필요하다
--       처음 인덱스를 생성하는데 시간이 많이 소요된다.
--       데이터 변경 작업이 자루 일어나는 경우 오히려 성능이 나빠질 수 있다.

-- 인덱스를 생성해야하는 경우
--  인덱스는 열단위에 생성한다.     
--  where절에서 사용되는 열에 인덱스를 만들어야 한다.
--  자주 사용하는 열에 생성한다. 
--  조인을 자주하는 열에 생성한다.

-- primary key, unique 지정한 열은 자동으로 인덱스 처리됨 

-- 스토어드 프로그램 
-- 고급 SQL문 상위레벨 

-- 종류 : 1. 스토어드 프로시저, 2. 스토어드 함수, 3 커서, 4. 트리거  

/*   1. 스토어드 프로시저 형식
  delimiter $$
    create procedure 이름( 입력 또는 출력 파라미터(매개변수)   ) 
    Begin
         내용
    end $$
  delimiter ;
  call 이름( 실제값들 ) ; 
*/
delimiter $$
create  procedure  p1()
  begin
     select * from usertbl  ; 
  end $$ 
delimiter ;

call p1(); 

drop procedure if exists p1; 

-- 바비킴의 레코드 검색하기 
delimiter $$
create  procedure  p2( in userName varchar(10)    )
  begin
     select * from usertbl where name = userName ; 
  end $$ 
delimiter ;

call p2('바비킴') ; 

-- 생일 1973년 이후 그리고, 키가 170 큰 사람 
delimiter $$
create  procedure  p3( in birth int, in h int    )
  begin
     select * from usertbl where birthyear >= birth and  height >= h ; 
  end $$ 
delimiter ;

call p3(1973, 170) ; 



drop procedure p3;

select * from usertbl;

--  testTbl안에 데이터를 삽입하고 검색결과를 출력하는 프로시저 
create table testTbl
  ( id int auto_increment primary key,
    name char(10) ) ;  
insert into testTbl values( null, '홍길동' ); 

delimiter $$
create  procedure  p4( in inVar char(10), out outVar int    )
  begin
    insert into testTbl values( null, inVar );
    select count(id) into outVar from testTbl;
  end $$ 
delimiter ;

drop procedure p4;

call p4('이순신', @countVar) ;
select @countVar ; 
select * from testTbl;

-- 445쪽 
drop procedure ifelseProc;

delimiter $$
create procedure ifelseProc(  in userName varchar(10), out byear int  ) 
begin
 
  select birthYear into byear from userTbl where name = username ;
  if ( byear >= 1980 ) then 
     select '아직 젊군요 .. ' ;
  else 
     select concat(byear, '나이가 지긋하시네요 ') ;
  end if; 
end $$
delimiter ;

call ifelseProc( '조용필', @yearOut) ;
select @yearOut ; -- ?? 1950년 
