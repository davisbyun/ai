use sqldb;
select * from usertbl;
-- user id가 'bbk' 'jkw'
select * from usertbl where userid in ('BBK','JKW');
select * from usertbl where name like '김%';
-- 김경호씨의 키보다 큰 사람은?
-- 1단계 김경호 키는?
-- 2단계 조건 반영
select * from usertbl where name = '김경호' ;
select * from usertbl where height >= 177 ;
-- 1단계와 2단계를 동시에 작성하기
select * from usertbl where height >= (  select * from usertbl where name = '김경호' ); -- 서브쿼리임
-- 은지원씨보다 나이가 어린 사람은?
select * from usertbl where birthyear > ( select * from birthyear where name = '은지원'  );

select * From buytbl;
select * From usertbl;
-- prodName 노트북의 groupName 종류와 동일한 UserId와 prodName, groupName 검색하기
-- 결과는 kbs 노트북 전자 jyp 모니터 전자 bbk모니터 전자 bbk 메모리 전자
-- 단계 - 전자 출력
select groupName from buytbl where prodName = '노트북';
select userid, prodName, groupName from buytbl where groupName = (   select groupName from buytbl where prodName = '노트북' );

-- 김범수가 산 물건은?
-- 김범수의 user_id를 구함
select prodName, user_id from buytbl 
	where user_id = (  select userID from usertbl where name = '감범수'   );
    
select * from usertbl;    
select * from usertbl where addr = '서울';
-- 서울에 사는 사람보다 키가 작은 사람 
select * from usertbl where height <= any(select height from usertbl where addr = '서울');
select * from usertbl where height <= all(select height from usertbl where addr = '서울');
select * from usertbl where height <= some(select height from usertbl where addr = '서울');

select * from buytbl;
-- 운동화를 산 사람의 이름은?
select name from usertbl where userid = any ( select userid from buytbl where prodName = '운동화' );

select * from usertbl order by height desc ;
-- 키가 제일 큰 사람 3명?
select * from usertbl order by height desc limit 3;
-- 나이가 제일 많은 사람 5명?
select * from usertbl order by birthyear asc limit 5;

-- 테이블을 만들기 usertbl과 동일한 테이블 만들기 
create table usertbl2 (select * from usertbl ) ; -- 서브쿼리의 일종

-- 서울에 있는 사람만 테이블 만들기
create table usertblSeoul (select * from usertbl where addr = '서울');
select * from usertblSeoul;

-- 키가 175 ~ 180 사이인 사람만 userid name height 열만 테이블 만들기
create table heigthTbl (select userid, name, height from usertbl where height between 175 and 180);
-- 단 제약 조건 (pk, fk)은 만들어지지 않는다. 

-- group by 절
select userid, sum(amount), avg(amount), max(amount), std(amount) from buytbl group by userid ;

-- 총구매액이 300만원 이상인 사람의 사용자명과 총구매액 구하기
select userid, sum(price) from buytbl group by userid having sum(price) >= 300;
-- 위 해당 사람(경품대상)을 테이블로 만들어 userid, mobile1, mobile2, addr 만들기
create table eventTbl (select userid, mobile1, mobile2, addr from usertbl where userid = any ( select userid from buytbl group by userid having sum(price) >= 300) );
select * from eventTbl;

-- groupName 그룹화 하기
select groupName, sum(amount), sum(price) from buytbl group by groupName ;

-- 매출이 가장 높은 품목의 groupName, amount, price 만들기 
-- 1단계 전자
select groupName,max(price) from buytbl group by groupName having max(price);
-- 단계
create table maxsGroupTbl (select groupName, prodName, amount, price from buytbl where groupName = some(select groupName having max(price) >= (select max(price) from buytbl) ) );

select * from maxGroupTbl;

-- rollup 중간합계(소합계) 구하기

select num, groupName, sum(price) from buytbl group by groupName, num with rollup;

select num, groupName, sum(price) from buytbl group by groupName, num with rollup ;

-- 220p
-- 게시판에서 게시글 번호 경우 자동으로 번호가 넘버링이 될 수 있게 한다.alter
-- 학번을 부여하는데 자동으로 부여되게 한다. 
-- auto increment int 형이고 primary key / unique 이용

create table if not exists testTbl2 ( id int auto_increment primary key, userName char(3), age int);
insert into testTbl2 values (null, '지민', 25);
insert into testTbl2 (userName, age) values ('유나', 22) ;
insert into testTbl2 (userName, age) values ('유경', 21) ;
select * from testTbl2;

alter table testTbl2 auto_increment = 100;
insert into testTbl2 (userName, age) values ('지수', 25) ;

drop table testTb2;

-- 학번 240101
create table if not exists testTbl2 ( id int auto_increment primary key, userName char(3), age int);
alter table testTbl2 auto_increment=240101;
insert into testTbl2 (userName, age) values ('유경', 21);

select * from testTbl2;


-- 증가치를 1씩이 아니라 3개씩 증가하게 하기
set @@auto_increment=3;
insert into testTbl2 (userName, age) values ('유경7', 21);
insert into testTbl2 (userName, age) values ('유경8', 21);


create table testTbl4 (id int, fname varchar(50), lname varchar(50));

use employees;
select * from employees.employees; 
			  -- 데이터베이스명.테이블명

use sqldb;

use employees;
select * from employees ;
insert into employees values (1003, '05/01/01','정','현희','F','20/10/05');
insert into employees values (1004, '05/01/01','박','현희','F','20/10/05');
insert into employees values (1005, '05/01/01','이','현희','F','20/10/05');
insert into employees values (1006, '05/01/01','김','현희','F','20/10/05');

-- sqldb 사용하기
use sqldb;
create table testTbl4 (id int, fname varchar(50), lname varchar(50));
select emp_no, first_name, last_name from employees.employees ;
insert into testTbl4 select emp_no, first_name, last_name from employees.employees ;
select * from testTbl4;

select * from buytbl order by price desc ;

create table copyBuyTbl (select * from buytbl) ;
select * from copyBuyTbl order by price desc limit 3;

-- 가격의 상위 3개 삭제하기
delete from copyBuyTbl order by price desc limit 3;
select * from copyBuyTbl order by amount ;

-- 수량 하위 2개 삭제
delete from copyBuyTbl order by amount asc limit 2;
-- 운동화 상위 1개 삭제

delete from copyBuyTbl order by prodName desc limit 3;
update copyBuyTbl set price = 60 where prodName = '운동화' and userID='KBS' ;


