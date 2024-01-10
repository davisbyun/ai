--테이블 만들기
create table 테이블명(컬럼명 자료명 제약조건);

create table dept_mission ( 
        don number(2) ,
        dname varchar2(14), --가변형 문자형으로 실제 자리수 만큰 바이트를 잡는다.
        loc varchar2(13) );
        
create table emp_mission (
        eno number(4), -- 정수형 4자리
        ename varchar2(10),
        dno number(2) );        

create table emp01(
        empno number(4),
        ename varchar2(14),
        sal number(7,3)); -- 숫자 7자리 소숫점 3자리
        
--테이블 구조 변경하기
--구조를 바꾸면 테이블에 자료가 있다면 자료가 삭제된다.
alter table emp01 
    add(birth date);

alter table emp_mission
    add(dept number(4), addr varchar2(20) );
    
--테이블 수정
alter table emp01
    modify(ename varchar2(14) );
    
alter table emp_mission
    modify(ename varchar2(25) );

--테이블의 구조 보기
desc emp01;
desc emp_mission;

--테이블 지우기 
alter table emp01
    drop column birth;

alter table emp_mission
    drop column deptno ;
alter table emp_mission
    drop column addr ;

--테이블명의 이름 변경하기
rename emp_mission to emp_mi;
desc emp_mi;

--테이블 삭제
--drop table 테이블명
drop table emp_mi;

select * from emp;
--emp의 검색 결과(select)로 나온 것을 테이블로 만들기
create table emp_copy
as 
select * from emp;

desc emp;
desc emp_copy;

select * from emp_copy;

--emp_copy 테이블의 comm 컬럼 삭제하기
alter table emp_copy
    drop column comm ;
--emp_copy 테이블의 hiredate 컬럼 삭제하기
alter table emp_copy
    drop column hiredate ;        
--컬럼 이름 바꾸기
alter table emp_copy
    rename column job to job1;

--모든 데이터 제거하기
delete from emp_copy;
truncate table emp_copy; -- 구조는 살아있고 데이터만 삭제


--딕셔너리는 데이터베이스 서버에서 제공해주는 테이블
--딕셔너리는 수정은 안되고 읽기만 가능하다.
--용도:해당 데이터베이스를 관리할 때 주요 사용함 user_ , all_ 등
;
select * from user_tables ; -- db1 내의 모든 테이블
select table_name from user_tables;
select * from user_views; --db1 내의 모든 views를 본다.

select * from all_tables;
select * from all_tables where table_name = 'EMP'; --모든 테이블 중 EMP를 찾아서 보여주시오

select * from dba_tables; 
                                    --데이터베이스 관리자는 오라클에서 이름이 지정되 있음. 
                                    --sys(장치관리자[하드웨어], 논리적장치[소프트웨어])
                                    --system(논리적인 장치관리함-소프트웨어)
                                    --필요에 따라서 사용자를 만들어 쓸 수 있다.              

--dml 문 insert, update, delete 문 : 레코드 삽입, 수정, 삭제하기
select * from emp01 ;

--레코드 삽입하기
--형식 insert into 테이블명 [(컬럼명1, 컬럼명2)] values (값1, 값2); --컬럼명 생략 가능, 생략시 구조 순서대로 입력됨
--전체행에 모두 넣는다.
--행에서 특정 열만 넣는다.
insert into emp01 values(1000, '홍길동', 123.5); --컬럼명을 생략하면 구조 순서대로  values 값을 넣는다.
insert into emp01(ename, empno,sal) values ('이순신', 1001, 256.7); --컬럼명을 쓰고 values 값을 후 기입
--번호 이름만 넣기
insert into emp01(empno, ename) values (1002, '이수민');
--급여만 넣기
insert into emp01(sal) values (100);

--이름을 공백
insert into emp01(empno, ename, sal) values (1004, ' ', 50);

desc emp01;
--입사일 컬럼을 추가하기
alter table emp01 
    add hire date;
--'박수미' , 1010, 80, 23/01/09 데이터 삽입
insert into emp01(ename, empno , sal, hire) values ( '박수미 ',1010, 80, '23/01/09' );
--1011,'최경수',0,24/01/08
insert into emp01(empno, ename, sal, hire) values ( 1011,'최경수',0,'24/01/08' );

--수정하기
--update 테이블명 set 컴럼명 = 새로운 값 where  조건절;
--홍길동의 급여를 200으로 변경
update emp01 set sal = 200 where ename = '홍길동';
update emp01 set ename = 김수민 where empno =1002;
select * from emp01;

--번호가 1004의 이름을 '이진수'로 변경
update emp01 set ename = '이진수' where empno = 1004;

--번호가 1010 사람의 급여를 현재 급여에 100 더하기, 입사일을 22/10/25로 바꾸기
update emp01 set sal = sal+100, hire='22/10/25' where empno = 1010;

--모든 사람의 급여를 200만원씩 인상
update emp01 set sal = sal +200; --null 값에는 적용이 안됨
update emp01 set sal = nvl(sal+200, 200);

--delete from 테이블명 where 조건절
--급여 500 이상 삭제

delete from emp01 where sal >= 500;

--트랜잭션

delete from emp01;
rollback ; --최종 편집 update 취소
commit ; --최종 편집 update 확정 = rollback 불가
update emp01 set sal = nvl(sal+200, 200);

-- 모든 사람의 입사일을 오늘 날짜로 수정
update emp01 set hire = sysdate;
select * from emp01;

--제약조건
select * from dept;
--insert into dept values(10,'test','test'); --10은 primary key로 구조를 만들어서 유일(unique)하여야 하므로 오류가 발생
--insert into dept values(null,'test','test'); --null은 primary key로 구조를 만들어서 null이 아니어야(not null)하므로 오류가 발생

create table pTab(
    code number(4) primary key,
    name varchar2(14)
    );

select * from user_constraints where table_name = 'PTAB';
--name의 제약조건을 not null로 고치기(추가하기)
desc pTab;
alter table pTab modify name varchar2(14) not null ;

--데이터 삽입하기
insert into ptab (code, name) values (1010, 'a');
--insert into ptab (code, name) values (1010, 'b'); 1010 때문에 에러
--insert into ptab (code, name) values (1011, null); null 때문에 에러

--id라는 컬럼을 추기하기 carchar2(10)
alter table ptab 
    add id varchar2(10) ;
    
desc pTab;    
--id 컬럼에 제약 조건은 unique로 만들기
alter table ptab
    modify id varchar2(10) unique;

select * from user_constraints where table_name ='PTAB';

insert into ptab(code, name, id) values (1012, 'c', 'a100');
--insert into ptab(code, name, id) values (1013, 'd', 'a100'); a100 유일키 위배



