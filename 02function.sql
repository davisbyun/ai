--dual ���̺�� 1���� �� ������ ȯ���ϱ�
SELECT 24 * 60 from  dual; -- dual�� ����Ŭ���� �����ϴ� �⺻ ���̺�, �뵵�� ����
SELECT 24 * 60 as ��� from  dual; --�÷��� ��Ī �߰�

--dual ���̺� ��ȸ�ϱ�
select * from dual;

--�����Լ�
    --abs ���밪 cos �ڻ��� exp e^n (e(2.71828183...)�� n���� ��ȯ, log �αװ�, sin ����, tan ź��Ʈ
    --round �ݿø�, truc Ư���ڸ������� �߶� ����, mod �Է� ���� ���� �������� ��ȯ

--���밪 ���ϴ� abs�Լ�
SELECT sin(10) from dual;
select -10, abs(-10) from dual;
--�Ҽ��� �Ʒ��� ������ floor�Լ�
select 34.5678, floor(34.5678) from dual;
--Ư�� �ڸ������� �ݿø��ϴ� round �Լ�
SELECT 34.5678, round(34.5678) from dual;
--Ư�� �ڸ������� �߶󳻴� trunc �Լ�
select trunc(34.5678, 2), trunc(34.5678,-1), trunc(3456.78, -3) ,trunc(34.5678) from dual;

--�������� ���ϴ� �Լ�
select mod(25, 4), mod(27, 5), mod(27, 7) from dual;
--����ó�� �Լ��� ������ ���� �����Ͽ� ��ȯ�� ���� ���� ��ȯ�ϴ� �Լ��μ� ������ڰ��� ��ȯ�� ���� �Լ��� ���ڿ���
--�����ϰ� �����ϴ� �Լ��� �����ϴ�. 
--��ҹ��� ��ȯ�Լ� upper, lower, intcap
select 'Welcome to Oracle', upper('Welcome to Oracle'), lower('Welcome to Oracle'), initcap('WELCOME TO ORACLE') from dual;

select * from student;

select upper( stu_email) from student;
select lower( stu_email) from student;
select initcap( stu_email) from student;
select upper( stu_email),   lower( stu_email), initcap( stu_email) from student;

--���ڿ��� ���̸� ���ϴ� �Լ�
select length('oracle'), length('����Ŭ') from dual;
select lengthb('oracle'), lengthb('����Ŭ') from dual;

--���������Լ�
--substr(���, ������ġ, ������ ����)
select substr('Welcome to Oracle', 4, 3) from dual;  --�ε��� ��ȣ ������ 1������ ����(0�� �ƴ�)
select substr('Welcome to Oracle', 9, 2) from dual;  --�ε��� ��ȣ ������ 1������ ����(0�� �ƴ�)

--student���� �������� �̸����� �պκ��� �����ϱ� ��� moon
--select substr(stu_eamil, 1, 4) from student where stu_name = '������';

--stu_id�� 101~110���� ������� �̸����� �� �޺κ� �� com �����ϱ�
select substr(stu_email, -3, 3) from student where stu_id between 101 and 110 ; --  -3�� �ڿ��� 3��°���� 3�� ���� 

--instr(���, ã�¹���) ��󿡼� ã�� ������ ��ġ�� ���ڷ� ��ȯ�Ѵ�.���� �տ������� ã�´�.
select instr('Welcome to Oracle', 'e') from dual;

--instr(���, ã�¹���,������ġ) ��󿡼� ã�� ������ ��ġ�� ���ڷ� ��ȯ�Ѵ�. 
select instr('Welcome to Oracle', 'e', 3 ) from dual; --����°���� ã�� ����(������ġ 3���� e�� ã�� 7��° �ִ�)

--instr(���, ã�¹���, ���° �߰�) ��󿡼� ã�� ������ ��ġ�� ���ڷ� ��ȯ�Ѵ�.
select instr('Welcome to Oracle', 'e', 3, 2) from dual; --3��°���� ã�� �����ϰ� 2��° �߰� �� e��?

select * from  student;
--��� �л��� �̸��Ͽ��� '@' ��ġ�� �˱�
select instr(stu_email, '@') from student ;
--��� �л��� ���̵� ���ϱ�
select substr(stu_email, 1, instr(stu_email, '@')-1) id from student;

--LPAD --> left padding
--RPAD --> right padding
--�Է¹��� ���ڿ��� ��ȣ�� �����Ͽ� Ư�� ������ ���ڿ��� ��ȯ
select lpad('oracle',20,'#') from dual; 
select rpad('oracle',20,'#') from dual; 

select * from emp;
select lpad(job,10,' ') from emp; 

--����ȯ �Լ� to_char(��¥Ȥ�����ڸ� ���ڷ�), to_number(�������� ���ڷ�), to_date(�������� ��¥��) ��
select sysdate from dual; --���� �ð��� �����ִ� �����
select sysdate, to_char(sysdate, 'YYYY-MM- DAY am hh:mi:ss') from dual;
select * from emp;
select hiredate, to_char(hiredate, 'YYYY-MM- DAY') from emp;

select to_char(12345678, '000,000,000') from dual;  --���� �ڸ��� 0 ä��(����)
select to_char(12345678, '000,000') from dual; --#���� ä���.(����)

select to_char(12345678, '999,999,999') from dual;  --���� �ڸ��� ���� ä��(����)
select to_char(12345678, '999,999') from dual; --#���� ä���.(����)

select to_char(12345678, 'L999,999,999') from dual;  --��ȭ��ȣ           ��12,345,678

--to_date() ��¥������ �ٲٱ� ++++ �߿�
--����Ŭ���� �⺻ ��¥���� 'mm/dd/yy' 
--to_date('����', '����') ���ڰ� �������� �ٲ� ��¥���� �ȴ�. 

select * from emp;
-- select * from emp where hiredate = 20070402 ; �����߻�
select * from emp where hiredate = to_date(20070402, 'yyyymmdd') ; --���ڸ� ��¥��
select * from emp where hiredate = to_date('20070402', 'yyyymmdd') ; --���ڸ� ��¥��

--���� ��¥ - Ư����
select sysdate - '2023/06/23' from dual;
select trunc(sysdate - to_date(20230623, 'yyyymmdd') ) from dual; --trunc�� �Ҽ��� ����

select * from emp;
--�ȼ����� ��¥���� ������ ��¥�� ����
select '961004' - '070301' from dual;
select '070321' - '070310' from dual;
--select to_date( '20070321', 'yyyymmdd' - '20070310' from dual;

--to number*',�� �ִ� ��������)
select to_number( '20,000', '99,999') - to_number( '10,000', '99,999') from dual;

--��¥�Լ� ++++ �߿�
--����,����,����
select sysdate -1 ����,  sysdate ����,  sysdate +1 ���� from dual;
select to_char( sysdate -1, 'yyyy-mm-dd') ����,  sysdate ����,  sysdate +1 ���� from dual;
select sysdate + 2 from dual;

--months_between
select months_between(sysdate, '23/12/31') from dual;
select add_months('2023/10/01', 10) from dual;
select round(to_date('20/07/01', 'yy/mm/dd'), 'year') from dual; --7���������� 7������ �ݿø�
select round(to_date('20/07/17', 'yy/mm/dd'), 'month') from dual; 

select * from emp;
select hiredate, trunc(hiredate, 'month') from emp; 
select hiredate, trunc(hiredate, 'year') from emp;  --�Ի����� ���� ��� 01�� ��ġ��

--�ټ� ���, �ٹ� �޼�
--���ó�¥ - �Ի���, ��� �޼�
select ename, sysdate, hiredate from emp;
select ename �����, sysdate ������, hiredate �Ի���, trunc(months_between(sysdate, hiredate) ,0) �ٹ��޼� from emp;

--select ename �����, sysdate ������, hiredate �Ի���, months_between(sysdate, hiredate) �ٹ��޼� from emp;
--years_between() �Լ��� ����. �׷��� months_between/12�� ���

select ename �����, sysdate ������, hiredate �Ի���, trunc(months_between(sysdate, hiredate) /12, 0) �ٹ���� from emp;

--������� �Ի��� ���糯¥ �ټӳ�� �ټӿ� �ټ���
--select hriedate �Ի���, sysdate ���糯¥, trunc(months_between(sysdate, hriedate) / 12, 0) �ٹ����,
--trunc(months_between(sysdate, hiredate),0) �ٹ�����,
--trunc(months_between(sysdate, hiredate),0)*30 �ٹ��ϼ� from emp; 

--���ó�¥�� �������� ���ʷ� �����ϴ� �������� ��¥��?
select next_day(sysdate, '��'), 'yyyy/mm/dd' from dual;
select last_day( '24/01/01') from dual;

select * from emp;
select empno �����ȣ, last_day(sysdate) �޿��� from emp;

select * from emp;
select comm, nvl(comm, 0) from emp;

--nvl(comm, 0)
select * from emp where hiredate is null;
--�Ի����� null�̸� ���� ��¥�� �־��ֱ�
select hiredate, nvl(hiredate, sysdate) from emp where hiredate is null;
select hiredate, nvl(hiredate, sysdate) from emp ; --��� ��� ����ϰ� �� ���� ����
--�̸��� ������ '����' job�� null�̸� ���
select nvl(ename,'����'), nvl(job, '���') from emp;

--nvl2(��1, ��2, ��3) ���࿡ ��1�� null�� �ƴϸ� ��2�� ��ȯ�ϰ�, null�̸� ��3�� ��ȯ�Ѵ�.
--��������ϱ�, comm�� null�� �ƴ� ��� sal+12+com, comm�� null�� ��� sal*12
select ename, sal, nvl2( comm  , sal*12+comm  , sal*12   ) from emp;

--coalesce (��1, ��2, ��3....��n)
--��1�� null�� �ƴϸ� ��1 �� ���, ��2�� null�� �ƴϸ� ��2 ����ϰ�, ��� �� null �̸� ��n�� ����ϱ�
--��)

--�޿��� null�� �ڷ� ����++++
insert into emp values(1019, null, '�븮', 1003, sysdate, null, null, 20);
insert into emp values(1020, null, '�븮', 1003, sysdate, null, 100, 20);

select comm, sal, coalesce (comm, sal, 0) from emp;



--������ ���� decode �Լ� (switch~case���� ����� )
/* decode (ǥ����, ����1, ���1, 
                             ����2, ���2, 
                             ����3, ���3, 
                             �⺻��� n)
*/
--��) 10�̸� �渮��, 20�̸� �λ�� 30�̸� ������
select * from emp;
select deptno, decode(deptno, 10, '�渮��' ,
                                              20, '�λ��' ,
                                              '�����') 
from 
emp;

select * from student;
--sex�� 'M'�̸� ����, 'F'�� ����
select sex, decode(sex, 'M', '����', 
                                   'F', '����') 
from student;
--�׷��Լ� (�������� row�� �� 1���� row�� ������ ��)
--�׷��Լ��� �ϳ� �̻��� ���� �׷����� ���� �����Ͽ� �ϳ��� ����� ��Ÿ���ϴ�. 
--ǥ -���̺�
--���� -row-���ڵ�- Ʃ��(tuple)
--ĭ-��-colum-�÷�-�׸�-�ʵ�-item-�Ӽ�(attribute) 
select ename count(ename) from emp;   --20�� �Է� 1�� ���
select ename from emp; --20�� �Է� 20�� ���
--select ename, count(ename) from emp; --������� ������ ���� �ʾ� ����

select sum(sal) from emp;
select sum(sal), count(ename), avg(sal), max(sal), min(sal) from emp;
--�׷��Լ����� sum, count������ null�� ���꿡�� ����

--���ʽ��� �޴� ����� ����?
select count(comm) from emp;
--���� ������ �� - �ߺ� �����ϰ� ó��
select count(distinct job) from emp;

select * from emp;
select * from emp order by deptno ;
--�� �μ����� ���� ���� �޿��� ����ϼ���
select max(sal), deptno from emp group by deptno order by deptno;
--job���� �޿��� ���� ���� �޴� ���
select job, floor(avg(sal)) from emp group by job order by job;

--����̰ų� �븮�̰ų� ������ �޿� �հ�
--���޺�
select * from emp where job in('���', '�븮','����');
--�׷�by
select job, round(avg(sal)) from emp where job in('���', '�븮','����') group by job;
--�ִ�޿��� 700�� �ʰ��ϴ� �μ��� ���ؼ� �ִ� �޿��� �ʼ� �޿��� ���ϱ�
--��� 20 1000 300 
-- �ִ� �޿��� 700�� �Ѵ� ����? max(sal) >=sal group by deptno
--�μ��� �ִ� ��
--SELECT���� ������ ����Ͽ� ����� ������ ���� WHERE���� ��������� 
--�׷��� ����� ������ ���� HAVING���� ����մϴ�.
select deptno, max(sal) from emp group by deptno having max(sal) >700  ;

--���޺��� �޿��� ����� 600 �̻��� ����, �޿����, �μ����� ����ϱ�
--1�ܰ� ���޺��� �׷�
select job, avg(sal), deptno from emp group by job; --���� deptno 2 �� > job 1�� ���� �ʾƼ� 
select job, avg(sal) from emp group by job;
--2�ܰ� �޿��� ����� 500�̻����� �Ǵ� ����ϱ�
select job, avg(sal) from emp group by job having avg(sal) >= 500;
--��ձ޿� �������� ����ϱ�
select job, avg(sal) from emp group by job having avg(sal) >= 500 order by avg(sal) asc ;


select * from student ;
--�ִ� ����, �ּ� ����, ��� ����
select max(age) from student ; 
select min(age) from student; 
select round(avg(age) )from student; 

select sex ����, max(age) from student group by sex ; 
select min(age) from student; 
--cou_id ���� ��� ����
select cou_id �ڽ�, round(avg(age)) from student group by cou_id order by cou_id;
--��� ���̰� 25�� �̻� 
select cou_id �ڽ�, round(avg(age)) from student group by cou_id having avg(age) >=25 order by cou_id;
--������ ��쿡��  cou_id ���� ��� ���̰� 25�� �̻��� �ڽ��� ��� ���� ������������ ���ϱ�
--1�ܰ� ���ڸ� ���
select * from student where sex = 'M';
--2�ܰ� ������ ��쿡 cou_id ����
select avg(age), cou_id from student where sex='M' group by cou_id;
--3�ܰ� ������ ��쿡 cou_id 
select round(avg(age)), cou_id from student where sex='M' group by cou_id having avg(age) >=25 order by avg(age) ;