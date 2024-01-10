DROP TABLE STUDENT;
DROP TABLE COURSE;
CREATE TABLE COURSE (
  COU_ID       NUMBER(4)      NOT NULL,   -- ���� ��ȣ
  COU_NAME     VARCHAR(20)    NULL,  -- ������
  TEA_NAME     VARCHAR(20)    NULL,  -- �����
  PRIMARY KEY(COU_ID)   -- ���� ��ȣ�� �⺻Ű�� ����
);
CREATE TABLE STUDENT (
  STU_ID       NUMBER(4)        NOT NULL, -- �л���ȣ, �� �� ��� �� ��
  STU_NAME     VARCHAR(20)      NULL, -- �л���
  AGE          NUMBER(4)        NULL, -- ����
  STU_EMAIL    VARCHAR(20)      NULL, -- �̸���
  COU_ID       NUMBER(4)        NULL,-- �Ҽӵ� ������ ���� ��ȣ
  SEX          CHAR(1)          DEFAULT 'M',  -- ����   
  PRIMARY KEY(STU_ID),            -- �л���ȣ�� �⺻Ű�� ����  
  -- -- ���� ��ȣ�� �ܷ�Ű�� ����
  FOREIGN KEY(COU_ID) REFERENCES COURSE(COU_ID)
);
--���� ���̺� ������ �Է�
INSERT INTO course VALUES(10,'�����','������');
INSERT INTO course VALUES(20,'�ڹ�','������');
INSERT INTO course VALUES(30,'������','Ȳ����');
INSERT INTO course VALUES(40,'��ǥ��','������');

--�л� ���̺� ������ �Է�
INSERT INTO STUDENT VALUES(101,'������', 24,'moon@nate.com',10,'M');
INSERT INTO STUDENT VALUES(102,'���Ѽ�', 22,'five@nate.com',20,'M');
INSERT INTO STUDENT VALUES(103,'���뼮', 22,'again@nate.com',20,'M');
INSERT INTO STUDENT VALUES(104,'����ö', 22,'cook@nate.com',20,'M');
INSERT INTO STUDENT VALUES(105,'��ȫ��', 24,'red@nate.com',10,'M');
INSERT INTO STUDENT VALUES(106,'������', 21,'kim@nate.com',20,'M');
INSERT INTO STUDENT VALUES(107,'�ڽ���', 22,'season@nate.com',20,'M');
INSERT INTO STUDENT VALUES(108,'������', 27,'brother@nate.com',10,'M');
INSERT INTO STUDENT VALUES(109,'������', 22, NULL,20,'F');
INSERT INTO STUDENT VALUES(110,'�ڱ⼮', 34,'flag@nate.com',10,'M');
INSERT INTO STUDENT VALUES(111,'��ȿ��', 24,'od@nate.com',30,'F');
INSERT INTO STUDENT VALUES(112,'��â��', 34,'window@nate.com',30,'M');
INSERT INTO STUDENT VALUES(113,'������', 28, NULL, 10,'M');
INSERT INTO STUDENT VALUES(114,'�̺���', 29,'bbong@nate.com',10,'M');
INSERT INTO STUDENT VALUES(115,'��â��', 24,'chang@nate.com',30,'M');
INSERT INTO STUDENT VALUES(116,'����', 34,'shine@nate.com',10,'M');

--
DROP TABLE GROUP_STAR;
DROP TABLE SINGLE_STAR;
--
CREATE TABLE GROUP_STAR(
	NAME		VARCHAR2(50)
);
--
CREATE TABLE SINGLE_STAR(
	NAME		VARCHAR2(50)
);
INSERT INTO GROUP_STAR VALUES('�¿�');
INSERT INTO GROUP_STAR VALUES('����');
INSERT INTO GROUP_STAR VALUES('����');
INSERT INTO GROUP_STAR VALUES('ȿ��');
INSERT INTO GROUP_STAR VALUES('Ƽ�Ĵ�');
INSERT INTO GROUP_STAR VALUES('����ī');
INSERT INTO GROUP_STAR VALUES('����');
INSERT INTO GROUP_STAR VALUES('���');
INSERT INTO GROUP_STAR VALUES('����');
INSERT INTO GROUP_STAR VALUES('ž');
INSERT INTO GROUP_STAR VALUES('���巡��');
INSERT INTO GROUP_STAR VALUES('�뼺');
INSERT INTO GROUP_STAR VALUES('�¸�');
INSERT INTO GROUP_STAR VALUES('�¾�');

INSERT INTO SINGLE_STAR VALUES('�¿�');
INSERT INTO SINGLE_STAR VALUES('���巡��');
INSERT INTO SINGLE_STAR VALUES('�뼺');
INSERT INTO SINGLE_STAR VALUES('�¾�');
INSERT INTO SINGLE_STAR VALUES('������');
INSERT INTO SINGLE_STAR VALUES('������');
INSERT INTO SINGLE_STAR VALUES('������');
COMMIT;


commit;
