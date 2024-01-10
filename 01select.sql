select * from emp;
select * from student;
select * from dept;
select * from ename ;

select empno, ename, sal, job from emp;
/* ������ �ּ� */ 
-- ���� �ּ�
-- stu_id, stu_name, sex Ŀ���� �˻��ϱ�, ��ҹ��� ���� ����

select stu_id, stu_name, sex from student;

--��������� ���� �÷�(��)�� �� �� �ִ�.
select empno, ename, sal, sal*12, job from emp;
select empno, ename, sal, sal*12*0.33, job from emp;
select empno as �����ȣ, ename as �����, sal as �޿�, sal*12 as ����, sal*12*0.33 as ����, job as ���� from emp;
-- �÷��� [as] ��Ī
select empno �����ȣ, ename �����, sal �޿�, sal*12 ����, sal*12*0.33 ����, job ���� from emp;
-- as �� ������ �� �ִ�.

select * from salgrade;
-- �������: hisal���ٰ� 1000 ���ϰ�, losal 1500 ���ϱ�
select grade ���, losal �����ݾ�, losal+1500 �λ������ݾ�, hisal �ִ�ݾ�, hisal+1000 �λ��ִ�ݾ� from salgrade;

--NULL�̶�? 0�� �ƴ�, ������� �ƴ�, ��Ȯ��, �� �� ���� �ǹ�, � ������ ���� ��, ������ �� �� ����.

select * from emp;
--comm ���ʽ��� +100�� ����
select comm, comm+100 from emp; --���� NULL �� +100 ������ �ȵ�. null�� ��Ÿ����.
select comm, nvl(comm,0)+100 "�� �� ��" from emp; --nvl(comm,0) null�̸� 0���� null�ƴϸ� comm������ ó��, " "���ڿ� ���̿� ������ ������ ó��

--���ڿ� ���� || ''����ǥ �ȿ� ���� �ֱ� ""�� ���� �߻�
select ename || '�� ������ ' || job || '�Դϴ�' ���� from emp;
--�������� ���̴� 24�� �Դϴ�.

select stu_name ||'�� ���̴� ' || age || '���Դϴ�.' ���� from student;

select * from student;
--��ü �ڽ��� �����ΰ���?(�ߺ�����) distinct ���
select distinct cou_id from student; 
select * from emp;
--�μ��� ������ ?(�ߺ������ϱ�
select distinct deptno from emp;

--�μ����� 20�� ������� ����
select * from emp where deptno = 20;
--job�� ����� ��� ����
select * from emp where job = '���';
--job�� ����̰ų� ������ �͸� ����
select * from emp where job = '���' or job='����';
--sal�� 400 �̻��� ����� �����ȣ, �̸�, �޿� ����
select empno �����ȣ , ename �̸�, sal �޿� from emp where sal >= 400;
select empno �����ȣ , ename �̸�, sal �޿� , job ���� from emp where sal >= 400 and job ='����';
--hiredate �Ի����� 2005�� ������ �Ի��� ���
select * from emp where hiredate < '05/01/01';
--hiredate �Ի����� 2005�� ���Ŀ� �Ի��� ���
select * from emp where hiredate > '05/01/01';
--�Ի����� 2006/01/01~2007/12/31������ ���
select * from emp where    '06/01/01' <= hiredate  and hiredate <= '07/12/31';
--�达�� ã�ƶ�
select * from emp where ename  like '��%'; --�����ϴ� like
select * from emp where ename  like '��%' or  ename like '��%';
--�̾� ���� �ƴ� ��� ã��
select * from emp where not ename like '��%' ;

--�̸��� �߰��۾��� '��'�� ���
select * from emp where ename like '%��%' ;

--in ~�ȿ�
--job ����̰ų� �����̰ų� ������ ��� ����ϱ�
select * from emp where job = '���' or job='����' or job='����';
select * from emp where job in ('���', '����', '����') ;

--�÷��� between ���ۼ� and ���� : ���ۼ� ~���� ����
--300<= sal <=600 ������ ��� ����ϱ�
select * from emp where sal between 300 and 600;
select * from emp where hiredate between '06/01/01' and '07/12/31';

--MGR(������)�� 1010~1020 ����
select * from emp where mgr between 1010 and 1020 ;
--comm �� null ��� ����ϱ� is null ���, ���ǵǱ� ���� �ڷ�
select * from emp where comm is null ;

-- �̸� ������������ ����ϱ�
select * from emp order by ename asc ;
select * from emp order by ename ; --asc ���� ����

-- �޿� ������������ ����ϱ�
select * from emp order by sal desc ;

--�μ� ��ȣ ������������ ����ϱ�
select * from emp order by deptno ;

--job �������� ����ϱ�
select * from emp order by job desc ;

--�μ���ȣ �������� ���� �����ϸ� empno (�����ȣ) ������� ����ϱ�
select * from emp order by deptno, empno ;

--�μ���ȣ �������� ���� �����ϸ� sal (�޿�) �� ���� ��� ������� ����ϱ�
select * from emp order by deptno, sal desc ;

--job �� �����̰ų� ������ ����� job ������������ ����ϱ�
select * from emp where job in '����' or job = '����'  order by job asc ;
--      3           1                     2                                     4                  <--ó������
--deptno �� 10�̰ų� 30�� ����� mgr�� ������������ deptno�� ������������
select * from emp where deptno in( 10,30) order by mgr, deptno asc ;

--������ (�ߺ���� �ѹ��� ���)
select * from group_star
union 
select * from single_star;

--������(�ߺ� ��� �ߺ� ���)
select * from group_star
union all
select * from single_star;


--������
select * from group_star
intersect
select * from single_star;

--������
select * from group_star
minus
select * from single_star;

--������ �̱�Ȱ���� �ϰ� �ִ� ���
select * from single_star
minus
select * from group_star;

--�޿��� 300 ������ ����� �����ȣ, ����̸�, �޿��� ����ϱ�
select empno �����ȣ , ename �̸�, sal �޿� from emp where sal <= 300; 
--�̸��� '����ȣ'�� ����� �����ȣ, �����, �޿��� ����ϱ�

select empno �����ȣ, sal �޿� from emp where ename = '����ȣ' ;
--�޿��� 250�̰ų� 300�̰ų� 500�� ������� �����ȣ�� ������ �޿��� ����ϱ�
select empno �����ȣ, ename �̸� , sal �޿� from emp where sal in( 250, 300, 500) ;
--�޿��� 250��, 300��, 500�� �ƴ� ����� ����ϱ�
select empno, ename from emp where sal not in (250,300,500);
--�̸��� '��'���� �����ϴ� ����� �̸� �߿� '��'�� �����ϴ� ����� �����ȣ�� ����̸� ����ϱ�
select empno �����ȣ, ename �̸�  from emp where ename  like '��%' or ename like '��%' ;  --�����ϴ� like 
--�μ���ȣ�� ���� ������� ����ϵ� ���� �μ� ���� ����� ����� ��� �ӻ��� �� ���� ������ ������� ����ϱ�
select * from emp order by deptno asc, hiredate asc ;
--
