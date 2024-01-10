--dept 데이터 넣기
insert into dept (deptno, dname, loc) values (10, '경리부','서울');
insert into dept (deptno, dname, loc) values (30, '초무부','인천');
insert into dept (deptno, dname, loc) values (40, '총무부','인천');
select * from dept;
update dept set loc='서울' where deptno = 40;
delete from dept where deptno = 30;
