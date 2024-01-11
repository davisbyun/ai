-- sqldb 사용하러 가기
use sqldb; 

drop table if exists testtbl4 ; 
select * from buytbl ;
-- 요구사항 : 상품명, 가격 테이블 만들기
-- 1단계 테이블 만들기
create table if not exists testtbl4 
  ( prodName varchar(40) not null,
    price int not null ) ;
-- 2단계 삽입한다.
select distinct prodName, price from buytbl ;

insert into testtbl4  
       select distinct prodName, price from buytbl ;

select * from testtbl4 order by price desc ;

-- 청바지 가격을 100으로 수정하기
update testtbl4 set price = 100 where prodName = '청바지' ;
-- 가장 높은 가격인 것을 찾아서 10% 인하하기
-- 1단계 가장 높은 가격 것 찾기
select price from testtbl4 order by price desc limit 0, 1;
-- 2단계 10% 인하하기  **** with문으로 사용하기 
-- update시에 동일한 테이블을 서브쿼리 사용하여 update 할 수 없다. 
-- 오류 
update testtbl4  set price = price - price * 0.1 
   where price =
   ( select price from ( select price from testtbl4 order by price desc limit 1 ) as t );

update testtbl4  set price = price - price * 0.1 
 where  price = 
   ( select price from ( select price from testtbl4 order by price desc limit 0, 1 ) as t  ); 

select * from testtbl4;


-- delete문 
select * from buytbl;
-- copyBuy 테이블 복사해서 만들기 
create table if not exists copyBuy
   select * from buytbl;
select * from copyBuy;

-- copyBuy amount가 제일 작은 것 찾아서 삭제하기
-- 1단계 amount가 제일 작은 것 찾기
select amount from copyBuy  order by amount asc limit 1;
-- 2단계 삭제하기
delete from copyBuy  
where 
amount = (  select amount from 
               ( select amount from copyBuy  order by amount asc limit 1 ) as t );

select * from copyBuy ;

-- 1.  with절 사용하기 229쪽 교재
-- 뷰, 파생테이블, 임시테이블, 가상테이블  : 잠깐 쓰고 버리기(메모리에서 삭제)
use sqldb;
select * from usertbl;
select * from buytbl;
 
-- 요구사항 이름 총구매액(price * amount )
select userid, sum( price ) * sum(amount) as '총구매액' from buytbl group by userId ;
-- 이름을 출력하기
select name from usertbl;

select userid, sum( price * amount) from buytbl, usertbl 
                                    where buytbl.userid = usertbl.userid  
 group by userId ;

select * from usertbl, buytbl; -- usertbl 행과 buytbl 행이 모두 곱해져 나온다 
select * from usertbl, buytbl where usertbl.userid = buytbl.userid ; -- 교집합 나온다 

-- userid, name, amount, price 두개 테이블에 각각 다른 항목 검색하기 
select usertbl.userid,  usertbl.name, buytbl.amount, buytbl.price 
      from usertbl, buytbl
      where usertbl.userid = buytbl.userid ;

select usertbl.name, buytbl.amount * buytbl.price 
      from usertbl, buytbl
      where usertbl.userid = buytbl.userid ;

-- 에러발생     
-- select usertbl.name, buytbl.amount * buytbl.price 
--       from usertbl , buytbl
--       where usertbl.userid = buytbl.userid 
--       group by buytbl.userid ;



select u.userid, u.name, b.amount * b.price 
      from usertbl u, buytbl b
      where u.userid = b.userid ; 
      
-- 위에 쿼리를 가상테이블 만들기
with t(  id, name, total )
as
(
   select u.userid, u.name, b.amount * b.price 
      from usertbl u, buytbl b
      where u.userid = b.userid
)
select  name, sum( total )   from t  group by  name  ; 

-- -------------------------------
-- 회원테이블(userTbl)에서 각 지역별로 가장 큰 키를 1명씩 뽑은 후 그 사람들의 키의 평균을 내보자
-- 1단계 각 지역별로 가장 큰 키를 1명씩 뽑은 후
select  addr, max( height )  from usertbl group by addr;
-- 2단계 가상테이블 만들기
with  t(  avgHeight ) 
as 
(
   select  max( height )  from usertbl group by addr
)
select avg(avgHeight)  from t ;

select * from buytbl;

-- 요구사항 각 groupName의 price가 최저을 구해서 그것의 평균을 구하기 
-- 1단계 각 groupName의 price가 최저을 구하기
select  groupName, min(price)  from buytbl  group by groupName;
-- 2단계 1단계 가상테이블 만들기
with t(  minPrice )
as
(
   select  min(price)  from buytbl  group by groupName
)
select   avg( minPrice)   from  t ; 


with  t( tid, total ) 
as
(
  select userid, sum( price  * amount) from buytbl group by userId
)
select tid, total from t ; 

select  usertbl.name, buytbl.price  from usertbl, buytbl ;

-- ----------------------------------------- 7장 SQL고급 
-- 238 동영상, 소리, 그림 2진수(BLOB) 저장해야 된다. 
-- 날짜형 

select  cast( '2020-10-19 12:35:29.123' as date  ) ; -- cast() 형변환 함수 
select  cast( '2020-10-19 12:35:29.123' as time  ) ;
select  cast( '2020-10-19 12:35:29.123' as datetime  ) ;

set @var1 = 10;
set @var2 = '제품판매처 : 삼성';
select @var2, @var1 ;
select  @var2, prodName  from buytbl; 

-- 데이터 형 변환 cast(), convert()
select * from buytbl;
select avg( amount ) from buytbl ; 
-- 실수형을 정수형으로 변환하기 
select   cast(  avg( amount ) as signed Integer )   from buytbl ; 
select   convert(  avg( amount ), signed Integer )   from buytbl ; 

-- 정수형을 실수형으로 변환
set @var3 = 3; 
select cast( @var3 as Float ) ; 
select convert( @var3, Float );
-- 정수형을 문자로 변환
select cast( @var3 as character ) ; 
select convert( @var3, char );

-- 246 
select '100' + '200' ;
select concat( '100', '200' ) ;
select concat( 100, '200' );
select 1 > '2mega' ; -- 거짓 이니깐 0
select 3 > '2mega' ; -- 참이니깐 1
select 0 = 'mega0' ; -- 문자는 0으로 바뀌므로 0 = 0

-- if 함수
-- select if( 조건, 참, 거짓 )

set @v1 = 200;
set @v2 = 20;
set @v3 = 100;

-- 가장 큰 수 구하기 답 20
select if( @v1 > @v2, if( @v1 > @v3 , @v1, @v3 ), if( @v2 > @v3, @v2, @v3  ) ); 
-- 가장 작은 수 구하기 
select if( @v1 < @v2, if(@v1 < @v3, @v1, @v3), if( @v2 < @v3, @v2, @v3 ) );
-- 중간수 구하기
select if( @v1 < @v2, if( @v1 >  @v3, @v1, @v3), if( @v2 > @v3, @v2, @v3 ) ); 

-- ifnull(수식1, 수식2 )
select ifnull( null, 100 ) ;
select ifnull( 200, null ) ;
select ifnull( 200, 300 ) ;
select ifnull( null, ifnull( null, 300 )  ) ;

-- nullif(수식1, 수식2 )
select nullif(100, 100) ;
select nullif(200, 100) ;

-- case when else end 
set @v1 = 1;
select case @v1
   when 1 then '일'
   when 2 then '이'
   when 3 then '삼'
   else '1,2,3이 아님'
end as 'case 연습';

select * from buytbl;
-- userId KBS 김범수, JYP 조용필 나머지는 '모름'
select  case userId
            when 'KBS' then '김범수'
			when 'JYP' then '조용필'
            else '모름'
         end as '이름' , 
         userId    
from buytbl;    

-- 문자열 함수
-- concat() 
-- concat_ws(구분자, 문자열1, 문자열2 )
select  concat_ws(',', '100', '200') ;  
select elt(1, '하나','둘','셋' ) ; --
select field('김', '이','박','최','김' ); -- 처음 위치의 '김'이라는 문자를 뒤에 문자열에서 찾기 
select find_in_set('김', '이, 박, 최,김, 송');
select instr('이,박,최,김,송', '김') ;
select locate('김', '이,박,최,김,송');

select format( 123456.123456, 4 ); 

select hex(10), oct( 8 ), bin( 15 )   ;

select insert( 'abcdefghi',  3, 4, '0000' ) ;

select trim( '    abc    '  ) ; 
select substring('대한민국만세', 3, 2 );

select substring_index('cafe.naver.com.co.kr', '.', -2 ) ;

set @v = 'cafe.naver.com.co.kr';
set @v2 = substring_index(@v, '.', 4 ); 
select @v2 ; -- cafe.naver.com.co 
-- 요구 사항 com 
-- 1단계 com.co 만들기
set @v3 = substring_index( @v2,'.',  -2 ) ;
select @v3 ;
set @v4 = substring_index( @v3, '.', 1 );
select @v4;

set @v10 = 'a,b,c,d,e';
-- b를 출력하기 
set @v11 = substring_index( @v10,',',  2 ) ;
select @v11 ;
set @v12 = substring_index( @v11, ',', -1 );
select @v12;

--  숫자 함수
select ceiling( 4.1 ), floor( 4.7 ), round( 4.7 ) ; 
select pow( 2, 10 ) ;

-- 기억 공간 단위 
-- bit < 8bit  = 1byte < 1024 byte = 1kb < 1024kb = 1 megaByte < 1024mb = 1gb
-- 1024 gb = 1tb (terabye) < 1024tb = 1hb (hera byte )

select rand(), floor( 1 + ( rand() * (7-1) ) ); 

-- 1,235,456,577 천원이하 절삭
select truncate( 1235456577, -3 ) ;

-- 날짜, 시간 함수
select mdate, adddate( mdate, interval 31 day) 
from usertbl; 

select  date( now() ), time( now() ), now() ;
select sysdate() ;

-- --------------------- 261 대용량 파일 처리하기 - 파일 올리고(업로드) 내리기(다운로드) 
create database moviedb ; 
use moviedb ;

create table movietbl 
  ( movie_id int,
    movie_title varchar(30 ),
    movie_director varchar( 20 ),
    movie_star varchar( 20 ),
    movie_script longtext, -- 대본
    movie_film  longblob ) default charset=utf8mb4 ;

insert into movietbl
  values ( 1, '쉰들러리스트','스필버그','리암니슨',
           load_file('D:/ai/study/temp/movies/Schindler.txt' ), 
           load_file('D:/ai/study/temp/movies/Schindler.mp4') 
          ) ; 
          
select * from movietbl ;    

-- movie_script와 movie_file이 null이 나온 이유 
show variables like 'max_allowed_packet';  -- 패킷의 크기를 보기
show variables like 'secure_file_priv';  -- mySQL이 지정한 업로드 경로 보기    
    
    



