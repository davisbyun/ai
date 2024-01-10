--dual 테이블로 1일이 몇 분인지 환산하기
SELECT 24 * 60 from  dual; -- dual은 오라클에서 제공하는 기본 테이블, 용도는 계산용
SELECT 24 * 60 as 계산 from  dual; --컬럼명 애칭 추가

--dual 테이블 조회하기
select * from dual;

--숫자함수
    --abs 절대값 cos 코사인 exp e^n (e(2.71828183...)의 n승을 반환, log 로그값, sin 사인, tan 탄젠트
    --round 반올림, truc 특정자리수에서 잘라냄 버림, mod 입력 받은 수의 나머지를 반환

--절대값 구하는 abs함수
SELECT sin(10) from dual;
select -10, abs(-10) from dual;
--소수점 아래를 버리는 floor함수
select 34.5678, floor(34.5678) from dual;
--특정 자릿수에서 반올림하는 round 함수
SELECT 34.5678, round(34.5678) from dual;
--특정 자릿수에서 잘라내는 trunc 함수
select trunc(34.5678, 2), trunc(34.5678,-1), trunc(3456.78, -3) ,trunc(34.5678) from dual;

--나머지를 구하는 함수
select mod(25, 4), mod(27, 5), mod(27, 7) from dual;
--문자처리 함수는 자형의 값을 조작하여 변환된 문자 값을 반환하는 함수로서 대수문자간의 변환을 위한 함수와 문자열을
--정교하게 조작하는 함수로 나뉩니다. 
--대소문자 변환함수 upper, lower, intcap
select 'Welcome to Oracle', upper('Welcome to Oracle'), lower('Welcome to Oracle'), initcap('WELCOME TO ORACLE') from dual;

select * from student;

select upper( stu_email) from student;
select lower( stu_email) from student;
select initcap( stu_email) from student;
select upper( stu_email),   lower( stu_email), initcap( stu_email) from student;

--문자열의 길이를 구하는 함수
select length('oracle'), length('오라클') from dual;
select lengthb('oracle'), lengthb('오라클') from dual;

--문자조작함수
--substr(대상, 시작위치, 추출할 갯수)
select substr('Welcome to Oracle', 4, 3) from dual;  --인덱스 번호 시작은 1번부터 시작(0이 아님)
select substr('Welcome to Oracle', 9, 2) from dual;  --인덱스 번호 시작은 1번부터 시작(0이 아님)

--student에서 문종헌의 이메일의 앞부분을 추출하기 결과 moon
--select substr(stu_eamil, 1, 4) from student where stu_name = '문종헌';

--stu_id가 101~110까지 사람들의 이메일이 맨 뒷부분 즉 com 추출하기
select substr(stu_email, -3, 3) from student where stu_id between 101 and 110 ; --  -3은 뒤에서 3번째부터 3개 추출 

--instr(대상, 찾는문자) 대상에서 찾는 문자의 위치를 숫자로 반환한다.제일 앞에서부터 찾는다.
select instr('Welcome to Oracle', 'e') from dual;

--instr(대상, 찾는문자,시작위치) 대상에서 찾는 문자의 위치를 숫자로 반환한다. 
select instr('Welcome to Oracle', 'e', 3 ) from dual; --세번째부터 찾기 시작(시작위치 3부터 e를 찾고 7번째 있다)

--instr(대상, 찾는문자, 몇번째 발견) 대상에서 찾는 문자의 위치를 숫자로 반환한다.
select instr('Welcome to Oracle', 'e', 3, 2) from dual; --3번째부터 찾기 시작하고 2번째 발견 된 e는?

select * from  student;
--모든 학생의 이메일에서 '@' 위치를 알기
select instr(stu_email, '@') from student ;
--모든 학생의 아이디를 구하기
select substr(stu_email, 1, instr(stu_email, '@')-1) id from student;

--LPAD --> left padding
--RPAD --> right padding
--입력받은 문자열과 기호를 정렬하여 특정 길이의 문자열로 반환
select lpad('oracle',20,'#') from dual; 
select rpad('oracle',20,'#') from dual; 

select * from emp;
select lpad(job,10,' ') from emp; 

--형변환 함수 to_char(날짜혹은숫자를 문자로), to_number(문자형을 숫자로), to_date(문자형을 날짜로) 등
select sysdate from dual; --현재 시간을 구해주는 예약어
select sysdate, to_char(sysdate, 'YYYY-MM- DAY am hh:mi:ss') from dual;
select * from emp;
select hiredate, to_char(hiredate, 'YYYY-MM- DAY') from emp;

select to_char(12345678, '000,000,000') from dual;  --남은 자리에 0 채움(남음)
select to_char(12345678, '000,000') from dual; --#으로 채운다.(에러)

select to_char(12345678, '999,999,999') from dual;  --남은 자리에 공백 채움(남음)
select to_char(12345678, '999,999') from dual; --#으로 채운다.(에러)

select to_char(12345678, 'L999,999,999') from dual;  --통화기호           ￦12,345,678

--to_date() 날짜형으로 바꾸기 ++++ 중요
--오라클에서 기본 날짜형은 'mm/dd/yy' 
--to_date('문자', '형식') 문자가 형식으로 바뀌어서 날짜형이 된다. 

select * from emp;
-- select * from emp where hiredate = 20070402 ; 에러발생
select * from emp where hiredate = to_date(20070402, 'yyyymmdd') ; --숫자를 날짜로
select * from emp where hiredate = to_date('20070402', 'yyyymmdd') ; --문자를 날짜로

--오늘 날짜 - 특정일
select sysdate - '2023/06/23' from dual;
select trunc(sysdate - to_date(20230623, 'yyyymmdd') ) from dual; --trunc로 소수점 버림

select * from emp;
--안성기의 날짜에서 김사랑의 날짜를 빼기
select '961004' - '070301' from dual;
select '070321' - '070310' from dual;
--select to_date( '20070321', 'yyyymmdd' - '20070310' from dual;

--to number*',가 있는 숫자형식)
select to_number( '20,000', '99,999') - to_number( '10,000', '99,999') from dual;

--날짜함수 ++++ 중요
--어제,오늘,내일
select sysdate -1 어제,  sysdate 오늘,  sysdate +1 내일 from dual;
select to_char( sysdate -1, 'yyyy-mm-dd') 어제,  sysdate 오늘,  sysdate +1 내일 from dual;
select sysdate + 2 from dual;

--months_between
select months_between(sysdate, '23/12/31') from dual;
select add_months('2023/10/01', 10) from dual;
select round(to_date('20/07/01', 'yy/mm/dd'), 'year') from dual; --7월기준으로 7월부터 반올림
select round(to_date('20/07/17', 'yy/mm/dd'), 'month') from dual; 

select * from emp;
select hiredate, trunc(hiredate, 'month') from emp; 
select hiredate, trunc(hiredate, 'year') from emp;  --입사일의 일을 모두 01로 고치기

--근속 년수, 근무 달수
--오늘날짜 - 입사일, 년수 달수
select ename, sysdate, hiredate from emp;
select ename 사원명, sysdate 현재일, hiredate 입사일, trunc(months_between(sysdate, hiredate) ,0) 근무달수 from emp;

--select ename 사원명, sysdate 현재일, hiredate 입사일, months_between(sysdate, hiredate) 근무달수 from emp;
--years_between() 함수는 없다. 그러면 months_between/12로 계산

select ename 사원명, sysdate 현재일, hiredate 입사일, trunc(months_between(sysdate, hiredate) /12, 0) 근무년수 from emp;

--출력형식 입사일 현재날짜 근속년수 근속월 근속일
--select hriedate 입사일, sysdate 현재날짜, trunc(months_between(sysdate, hriedate) / 12, 0) 근무년수,
--trunc(months_between(sysdate, hiredate),0) 근무월수,
--trunc(months_between(sysdate, hiredate),0)*30 근무일수 from emp; 

--오늘나짜를 기준으로 최초로 도래하는 수요일의 날짜는?
select next_day(sysdate, '수'), 'yyyy/mm/dd' from dual;
select last_day( '24/01/01') from dual;

select * from emp;
select empno 사원번호, last_day(sysdate) 급여일 from emp;

select * from emp;
select comm, nvl(comm, 0) from emp;

--nvl(comm, 0)
select * from emp where hiredate is null;
--입사일이 null이면 오늘 날짜로 넣어주기
select hiredate, nvl(hiredate, sysdate) from emp where hiredate is null;
select hiredate, nvl(hiredate, sysdate) from emp ; --모든 사람 출력하고 위 조건 진행
--이름이 없으면 '무명' job이 null이면 사원
select nvl(ename,'무명'), nvl(job, '사원') from emp;

--nvl2(식1, 식2, 식3) 만약에 식1이 null이 아니면 식2를 반환하고, null이면 식3을 반환한다.
--연봉계산하기, comm이 null이 아닌 경우 sal+12+com, comm이 null인 경우 sal*12
select ename, sal, nvl2( comm  , sal*12+comm  , sal*12   ) from emp;

--coalesce (식1, 식2, 식3....식n)
--식1이 null이 아니면 식1 값 출력, 식2가 null이 아니면 식2 출력하고, 모ㅜ 다 null 이면 식n을 출력하기
--예)

--급여가 null인 자료 삽입++++
insert into emp values(1019, null, '대리', 1003, sysdate, null, null, 20);
insert into emp values(1020, null, '대리', 1003, sysdate, null, 100, 20);

select comm, sal, coalesce (comm, sal, 0) from emp;



--선택을 위한 decode 함수 (switch~case문과 비슷함 )
/* decode (표현식, 조건1, 결과1, 
                             조건2, 결과2, 
                             조건3, 결과3, 
                             기본결과 n)
*/
--예) 10이면 경리보, 20이면 인사부 30이면 영업부
select * from emp;
select deptno, decode(deptno, 10, '경리부' ,
                                              20, '인사부' ,
                                              '전산부') 
from 
emp;

select * from student;
--sex가 'M'이면 남자, 'F'면 여자
select sex, decode(sex, 'M', '남자', 
                                   'F', '여자') 
from student;
--그룹함수 (여러개의 row가 들어가 1개의 row가 나오는 것)
--그룹함수는 하나 이상의 행을 그룹으로 묶어 연산하여 하나의 결과로 나타납니다. 
--표 -테이블
--한줄 -row-레코드- 튜플(tuple)
--칸-열-colum-컬럼-항목-필드-item-속성(attribute) 
select ename count(ename) from emp;   --20행 입력 1행 출력
select ename from emp; --20행 입력 20행 출력
--select ename, count(ename) from emp; --출력행의 갯수가 같이 않아 에러

select sum(sal) from emp;
select sum(sal), count(ename), avg(sal), max(sal), min(sal) from emp;
--그룹함수에서 sum, count에서는 null은 연산에서 제외

--보너스를 받는 사원의 수는?
select count(comm) from emp;
--직위 종류의 수 - 중복 제외하고 처리
select count(distinct job) from emp;

select * from emp;
select * from emp order by deptno ;
--각 부서별로 제일 높은 급여를 출력하세요
select max(sal), deptno from emp group by deptno order by deptno;
--job별로 급여를 제일 적게 받는 사람
select job, floor(avg(sal)) from emp group by job order by job;

--사원이거나 대리이거나 과장의 급여 합계
--직급별
select * from emp where job in('사원', '대리','과장');
--그룹by
select job, round(avg(sal)) from emp where job in('사원', '대리','과장') group by job;
--최대급여가 700을 초과하는 부서에 대해서 최대 급여와 초소 급여를 구하기
--결과 20 1000 300 
-- 최대 급여가 700이 넘는 것은? max(sal) >=sal group by deptno
--부서별 최대 값
--SELECT절에 조건을 사용하여 결과를 제한할 때는 WHERE절을 사용하지만 
--그룹의 결과를 제한할 때는 HAVING절을 사용합니다.
select deptno, max(sal) from emp group by deptno having max(sal) >700  ;

--직급별로 급여의 평균이 600 이상인 직급, 급여평균, 부서명을 출력하기
--1단계 직급별로 그룹
select job, avg(sal), deptno from emp group by job; --에러 deptno 2 개 > job 1개 같지 않아서 
select job, avg(sal) from emp group by job;
--2단계 급여의 평균이 500이상인지 판단 출력하기
select job, avg(sal) from emp group by job having avg(sal) >= 500;
--평균급여 오름차순 출력하기
select job, avg(sal) from emp group by job having avg(sal) >= 500 order by avg(sal) asc ;


select * from student ;
--최대 나이, 최소 나이, 평균 나이
select max(age) from student ; 
select min(age) from student; 
select round(avg(age) )from student; 

select sex 성별, max(age) from student group by sex ; 
select min(age) from student; 
--cou_id 별로 평균 나이
select cou_id 코스, round(avg(age)) from student group by cou_id order by cou_id;
--평균 나이가 25세 이상 
select cou_id 코스, round(avg(age)) from student group by cou_id having avg(age) >=25 order by cou_id;
--남자인 경우에는  cou_id 별로 평균 나이가 25세 이상인 코스와 평균 나이 오름차순으로 구하기
--1단계 남자만 출력
select * from student where sex = 'M';
--2단계 남자인 경우에 cou_id 별로
select avg(age), cou_id from student where sex='M' group by cou_id;
--3단계 남자인 경우에 cou_id 
select round(avg(age)), cou_id from student where sex='M' group by cou_id having avg(age) >=25 order by avg(age) ;