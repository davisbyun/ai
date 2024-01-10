USE sqldb;

drop table if exists testtbl4;
select * from buytbl;
-- 상품명 가격만 테이블로 만든다.
-- 1.테이블 만들기
-- 2.삽입하기
create table if not exists testtbl4 (prodName varchar(40) not null, price int not null);
select distinct prodName, price from buytbl ;
insert into testtbl4 (prodName, price) select distinct prodName, price from buytbl ; -- select문으로 삽입할 때는 vlaues를 사용하지 않는다.
select * from testtbl4 order by price desc;
-- 청바지 가격 100으로 조정
update testtbl4 set price = 100 where prodName = '청바지';
-- 가장 높은 가격을 찾아서 10% 인하하기 (with문으로 다시****)
-- update 시 동일한 테이블을 서브쿼리를 사용하여 update 할 수 없다.
-- select prodName from testtbl4 order by price desc limit 0, 1; -- 가장 높은 가격 찾기
-- update testtbl4 set price = price*0.1 where prodName = some (  select prodName from testtbl4 order by price desc limit 0, 1  );
-- with tempTbl( price ) as (select price from testtbl4 order by price desc limit 1 ) update testtbl4 set price = price - price*0.1;

update testtbl4 set price = price - price*0.1 where price = (select price from ( select price from testtbl4 order by price desc limit 0,1) as t);
select * from testtbl4; -- from (   ) 부분을 표로 가상화 하고 이름을 t로 부여함

-- delete문

create table copyBuy select * from buytbl;

select * from copyBuy;
-- copyBuy 에서 amount가 제일 작은 것
select amount from copyBuy order by amount asc limit 1;
-- 삭제
delete from copyBuy where amount = ( select amount from ( select amount from copyBuy order by amount asc limit 1) as t ); 
-- from (   ) 부분을 표로 가상화 하고 이름을 t로 부여함

-- 1. with절 사용하기
-- 뷰, 파생테이블, 임시테이블, 가상테이블 : 잠깐 쓰고 버리기(메모리에서 삭제) 

use sqldb ;
select * from usertbl ;
select * from buytbl ;
-- 요구사항 이름 총구매액(price*amount)
select userId, sum(price) * sum(amount) as '총구매익' from buytbl group by userId ;
-- 이름을 출력하기
select name from usertbl ;

select userId, sum(price*  amount) from buytbl,usertbl where buytbl.userID = usertbl.userID ;

select * from usertbl, buytbl; -- usertbl의 행과 buytbl행이 모두 곱해져 나온다. 
select * from usertbl, buytbl where usertbl.userID = buytbl.userID ; -- 조건을 걸어 정리, 곱해지지 않음, 교집합이 출력됨, id가 같은 것 출력

-- userid, name, amount, price를 출력 (두개의 테이블에서 각가 다른 항목 검색)
select usertbl.userID, usertbl.name, buytbl.amount, buytbl.price from buytbl,usertbl where buytbl.userID = usertbl.userID ;

select usertbl.name, buytbl.amount * buytbl.price from buytbl,usertbl where buytbl.userID = usertbl.userID ;

-- select usertbl.name, buytbl.amount * buytbl.price from buytbl,usertbl where buytbl.userID = usertbl.userID group by buytbl.userID ; 에러발생
select u.userID, u.name, b.amount * b.price from buytbl u, usertbl b where b.userID = u.userID group by b.userID ;


select * from usertbl ;
select addr, max(height) from usertbl group by addr;

with t ( avgHeight )
as
(
select max(height) from usertbl group by addr
)
select avg(avgHight) from t ;

-- 요구사항 groupName에 price의 최저를 구해서 그것의 평균을 구하라.
select * from buytbl ;
select groupName, min(price) from buytbl group by groupName;
with t (minPrice)
as 
(
select groupName, min(price) from buytbl group by groupName
)
select avg(minPrice) from t;

with t ( id, name, total)
as 
(
select u.userID, u.name, b.amount * b.price from buytbl u, usertbl b where b.userID = u.userID--
)  
select name , sum( total ) from t group by name ;

-- 요구사항(총구매액-가상테이블) + 이름출력
with t ( tid, total ) as (select userId, sum(price *amount) as '총구매익' from buytbl group by userId ) select * from t ;



-- 회원 테이블(usertbl)에서 각 지역별로 가장 큰 키를 1명씩 뽑은 후 그 사람들의 키의 평균을 내기


-- ------------------------------------------------------------ 7장 SQL 고급
-- 239p 동영상, 소리, 그림 2진수(BLOB) 저장해야 한다alter
select cast('2020-10-19 12:35:29.123' as date) ;  -- cast() 형변환 함수
select cast('2020-10-19 12:35:29.123' as time) ; 
select cast('2020-10-19 12:35:29.123' as datetime) ; 

set @var1 = 10;
set @var2 = '제품판매처 : 홍길동';
select @var1, @var2;
select @var2, prodName from buytbl;

-- 데이터형 변환 cast(), convert()
select * from buytbl;
select avg(amount) from buytbl;
-- 실수형을 정수형으로 
select  cast( avg(amount) as signed integer)  from buytbl;
select  convert( avg(amount) , signed integer)  from buytbl;

-- 정수형을 실수형으로
set @var3 = 3;
select cast(@var3 as float) ;
select convert(@var3, float) ;

-- 정수형을 문자로 바꾸기
select cast(@var3 as char) ;
select convert(@var3, char) ;


-- 246
select '100', '200' ;
select concat('100', '200');
select concat(100, '200');
select 1 > '2mega'; -- 거짓 0
select 3 > '2mega'; -- 참 1
select 0 = '0mega' ; -- 문자는 0으로 바뀌므로 0 = 0 참

-- if 함수
-- select if (조건, 참, 거짓)

set @v1 = 200;
set @v2 = 20;
set @v3 = 100;

-- 가장 큰 수 구하기
select if(@v1 > @v2, if(@v1 > @v3, @v1, @v3), if(@v2 > @v3, @v2, @v3));
-- 가장 작은 수 구하기
select if(@v1 < @v2, if(@v1 < @v3, @v1, @v3), if(@v2 < @v3, @v2, @v3));
-- 중간 수 구하기
select if(@v1 <@v2, if(@v1 > @v3, @v1, @v3), if(@v2 > @v3, @v2, @v3));

-- ifnull(수식1,수식2) 
select ifnull(null, 100);
select ifnull(200, null);
select ifnull(200, 200);
select ifnull(null, null);
select ifnull(null, ifnull(null,300));

-- nullif(수식1, 수식2)
select nullif(100, 100); 
select nullif(200, 100); 

-- case when dels end
set @v1 = 1;
select case @v1 
	when 1 then '일'
	when 2 then '이'
	when 3 then '삼'
	else '1,2,3이 아님'
end as 'case 연습'    ;

select * from buytbl;
-- userid KBS 김범수, JYP 조용필 나머지는 모름

select case userID
	when 'KBS' then '김범수'
    when 'JYP' then '조용필'
    else '모름'
end as '이름',
	userId 
from buytbl;

-- 문자열함수
-- concat()
-- concat_ws(구문자, 문자열1, 문자열2)

select concat_ws(',', '100', '200');
select elt(1,'하나','둘','셋'); -- chose(엑셀함수와 비슷)
select field('김','이','박','최','김'); -- 처음 위치의 김이라는 문자를 그 뒤에서 찾아주는 것
select find_in_set('김','이','박','최','김','송');
select instr('이','박','최','김','송','김');
select locate('김','이','박','최','김','송');
select format(123456.123456, 4);
select hex(15) ;
select hex(10), oct(8), bin(15);
select insert('abcdefghi', 3,4, '0000');
select trim('       abc      '   );
select substring('대한민국만세', 3, 2 );
select substring_index('cafe.naver.com.co.kr','.', -2) ;
set @v = 'cafe.naver.com.co.kr' ; -- com 추출
set @v2 = substring_index(@v, '.', 4);
select @v2 ; 
set @v3 = substring_index(@v2,'.', -2);
select @v3 ;
set @v4 = substring_index(@v3,'.', 1);
select @v4;
set @v10 = 'a,b,c,d,e' ;
-- b출력하기
set @v11 = substring_index(@v11,'.', 2);
select @v11;
set @v12 = substring_index(@v12,'.', -1);
select @v12;
-- 숫자함수 
select ceiling(4.7), floor(4.7), round(4.7);
select pow(2,10);
-- 기억 공간의 단위
-- bit < 8bit = 1byte 1024byte = 1kb < 1024kb = 1megaByte < 1024mb = 1gb <1024gb = 1tb(terabyte) < 1024tb = 1hb(herabyte)
select rand(), floor(1+rand()*(7-1));
-- 1,234,564,444 1000 이하 절삭
select truncate(1231254512, -3);
-- 날짜, 시간 함수
select adddate(mdate, interval 31 day) from usertbl;
select date(now()), time(now()), now();
select sysdate();

select * from usertbl;


-- -------------------------------------261 대용량 파일 업로드 다운로드

create database moviedb;
use moviedb ;


create table movietbl (movie_id int, movie_title varchar(30), movie_director varchar(20), movie_star varchar(20), movie_script longtext, moive_film longblob) default charset=utf8mb4 ;
select * from movietbl;
-- movie_script와 movie_file이 널이 나온 이유
show variables like 'max_allowed_packet'; -- 패킷의 크기를 본다
show variables like 'secure_file_priv'; -- mysql이 지정한 업로드 경로

insert into movietbl values (1, '쉰들러리스트','스필버그','리암니슨',
load_file('D:/ai/study/temp/movies/Schindler.txt'),
load_file('D:/ai/study/temp/movies/Schindler.mp4')
);
drop table movietbl;

select * from movietbl;
