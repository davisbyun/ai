--���̺� �����
create table ���̺��(�÷��� �ڷ�� ��������);

create table dept_mission ( 
        don number(2) ,
        dname varchar2(14), --������ ���������� ���� �ڸ��� ��ū ����Ʈ�� ��´�.
        loc varchar2(13) );
        
create table emp_mission (
        eno number(4), -- ������ 4�ڸ�
        ename varchar2(10),
        dno number(2) );        

create table emp01(
        empno number(4),
        ename varchar2(14),
        sal number(7,3)); -- ���� 7�ڸ� �Ҽ��� 3�ڸ�
        
--���̺� ���� �����ϱ�
--������ �ٲٸ� ���̺� �ڷᰡ �ִٸ� �ڷᰡ �����ȴ�.
alter table emp01 
    add(birth date);

alter table emp_mission
    add(dept number(4), addr varchar2(20) );
    
--���̺� ����
alter table emp01
    modify(ename varchar2(14) );
    
alter table emp_mission
    modify(ename varchar2(25) );

--���̺��� ���� ����
desc emp01;
desc emp_mission;

--���̺� ����� 
alter table emp01
    drop column birth;

alter table emp_mission
    drop column deptno ;
alter table emp_mission
    drop column addr ;

--���̺���� �̸� �����ϱ�
rename emp_mission to emp_mi;
desc emp_mi;

--���̺� ����
--drop table ���̺��
drop table emp_mi;

select * from emp;
--emp�� �˻� ���(select)�� ���� ���� ���̺�� �����
create table emp_copy
as 
select * from emp;

desc emp;
desc emp_copy;

select * from emp_copy;

--emp_copy ���̺��� comm �÷� �����ϱ�
alter table emp_copy
    drop column comm ;
--emp_copy ���̺��� hiredate �÷� �����ϱ�
alter table emp_copy
    drop column hiredate ;        
--�÷� �̸� �ٲٱ�
alter table emp_copy
    rename column job to job1;

--��� ������ �����ϱ�
delete from emp_copy;
truncate table emp_copy; -- ������ ����ְ� �����͸� ����


--��ųʸ��� �����ͺ��̽� �������� �������ִ� ���̺�
--��ųʸ��� ������ �ȵǰ� �б⸸ �����ϴ�.
--�뵵:�ش� �����ͺ��̽��� ������ �� �ֿ� ����� user_ , all_ ��
;
select * from user_tables ; -- db1 ���� ��� ���̺�
select table_name from user_tables;
select * from user_views; --db1 ���� ��� views�� ����.

select * from all_tables;
select * from all_tables where table_name = 'EMP'; --��� ���̺� �� EMP�� ã�Ƽ� �����ֽÿ�

select * from dba_tables; 
                                    --�����ͺ��̽� �����ڴ� ����Ŭ���� �̸��� ������ ����. 
                                    --sys(��ġ������[�ϵ����], ������ġ[����Ʈ����])
                                    --system(������ ��ġ������-����Ʈ����)
                                    --�ʿ信 ���� ����ڸ� ����� �� �� �ִ�.              

--dml �� insert, update, delete �� : ���ڵ� ����, ����, �����ϱ�
select * from emp01 ;

--���ڵ� �����ϱ�
--���� insert into ���̺�� [(�÷���1, �÷���2)] values (��1, ��2); --�÷��� ���� ����, ������ ���� ������� �Էµ�
--��ü�࿡ ��� �ִ´�.
--�࿡�� Ư�� ���� �ִ´�.
insert into emp01 values(1000, 'ȫ�浿', 123.5); --�÷����� �����ϸ� ���� �������  values ���� �ִ´�.
insert into emp01(ename, empno,sal) values ('�̼���', 1001, 256.7); --�÷����� ���� values ���� �� ����
--��ȣ �̸��� �ֱ�
insert into emp01(empno, ename) values (1002, '�̼���');
--�޿��� �ֱ�
insert into emp01(sal) values (100);

--�̸��� ����
insert into emp01(empno, ename, sal) values (1004, ' ', 50);

desc emp01;
--�Ի��� �÷��� �߰��ϱ�
alter table emp01 
    add hire date;
--'�ڼ���' , 1010, 80, 23/01/09 ������ ����
insert into emp01(ename, empno , sal, hire) values ( '�ڼ��� ',1010, 80, '23/01/09' );
--1011,'�ְ��',0,24/01/08
insert into emp01(empno, ename, sal, hire) values ( 1011,'�ְ��',0,'24/01/08' );

--�����ϱ�
--update ���̺�� set �ķ��� = ���ο� �� where  ������;
--ȫ�浿�� �޿��� 200���� ����
update emp01 set sal = 200 where ename = 'ȫ�浿';
update emp01 set ename = ����� where empno =1002;
select * from emp01;

--��ȣ�� 1004�� �̸��� '������'�� ����
update emp01 set ename = '������' where empno = 1004;

--��ȣ�� 1010 ����� �޿��� ���� �޿��� 100 ���ϱ�, �Ի����� 22/10/25�� �ٲٱ�
update emp01 set sal = sal+100, hire='22/10/25' where empno = 1010;

--��� ����� �޿��� 200������ �λ�
update emp01 set sal = sal +200; --null ������ ������ �ȵ�
update emp01 set sal = nvl(sal+200, 200);

--delete from ���̺�� where ������
--�޿� 500 �̻� ����

delete from emp01 where sal >= 500;

--Ʈ�����

delete from emp01;
rollback ; --���� ���� update ���
commit ; --���� ���� update Ȯ�� = rollback �Ұ�
update emp01 set sal = nvl(sal+200, 200);

-- ��� ����� �Ի����� ���� ��¥�� ����
update emp01 set hire = sysdate;
select * from emp01;

--��������
select * from dept;
--insert into dept values(10,'test','test'); --10�� primary key�� ������ ���� ����(unique)�Ͽ��� �ϹǷ� ������ �߻�
--insert into dept values(null,'test','test'); --null�� primary key�� ������ ���� null�� �ƴϾ��(not null)�ϹǷ� ������ �߻�

create table pTab(
    code number(4) primary key,
    name varchar2(14)
    );

select * from user_constraints where table_name = 'PTAB';
--name�� ���������� not null�� ��ġ��(�߰��ϱ�)
desc pTab;
alter table pTab modify name varchar2(14) not null ;

--������ �����ϱ�
insert into ptab (code, name) values (1010, 'a');
--insert into ptab (code, name) values (1010, 'b'); 1010 ������ ����
--insert into ptab (code, name) values (1011, null); null ������ ����

--id��� �÷��� �߱��ϱ� carchar2(10)
alter table ptab 
    add id varchar2(10) ;
    
desc pTab;    
--id �÷��� ���� ������ unique�� �����
alter table ptab
    modify id varchar2(10) unique;

select * from user_constraints where table_name ='PTAB';

insert into ptab(code, name, id) values (1012, 'c', 'a100');
--insert into ptab(code, name, id) values (1013, 'd', 'a100'); a100 ����Ű ����



