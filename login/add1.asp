

<!--#include file="conn.asp" -->
<%
college=trim(request("college"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if college=""  then                                                            '�����ֵΪ��,�����һ������
response.Redirect"zhuce1.asp"
    response.end                                                          '���ҽ�����������
end if

number=trim(request("number"))                                                 '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if number=""  then                                                           '�����ֵΪ��,�����һ������
response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if

nam=trim(request("nam"))                                                 '��ȡnam,����ȥ������Ŀո�(trim ������ȥ�ո�)
if nam=""  then                                                           '���nam��ֵΪ��,�����һ������
response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if

nam1=trim(request("nam1"))                                                 '��ȡnam,����ȥ������Ŀո�(trim ������ȥ�ո�)
if nam1=""  then                                                           '���nam��ֵΪ��,�����һ������
response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if
 
pass=trim(request("pass"))                                                 '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if pass=""  then                                                           '�����ֵΪ��,�����һ������
response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if      

pass1=trim(request("pass1"))                                                 '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if pass1=""  then                                                           '�����ֵΪ��,�����һ������
response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if                                                                 '����if ���

m1=trim(request("m1"))                                                 '��ȡnam,����ȥ������Ŀո�(trim ������ȥ�ո�)
if m1=""  then                                                           '���nam��ֵΪ��,�����һ������
response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if

daan1=trim(request("daan1"))                                                 '��ȡnam,����ȥ������Ŀո�(trim ������ȥ�ո�)
if daan1=""  then                                                           '���nam��ֵΪ��,�����һ������
response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if

m2=trim(request("m2"))                                                 '��ȡnam,����ȥ������Ŀո�(trim ������ȥ�ո�)
if m2=""  then                                                           '���nam��ֵΪ��,�����һ������
response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if

daan2=trim(request("daan2"))                                                 '��ȡnam,����ȥ������Ŀո�(trim ������ȥ�ո�)
if daan2=""  then                                                           '���nam��ֵΪ��,�����һ������
response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if

mail=trim(request("mail"))                                                 '��ȡnam,����ȥ������Ŀո�(trim ������ȥ�ո�)
if mail=""  then                                                           '���nam��ֵΪ��,�����һ������
response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if

phone=trim(request("phone"))                                                 '��ȡnam,����ȥ������Ŀո�(trim ������ȥ�ո�)
if phone=""  then                                                           '���nam��ֵΪ��,�����һ������
response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if

if pass=pass1 then
else 
    response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if                                                                 '����if ���
 
 number=trim(request.form("number"))
 sql="select * from users where number='"&number&"'"                   '��ѯ���ݿ�
 set rs=server.CreateObject("adodb.recordset")                     '����rs ����Ȩ��
 rs.open sql,conn,1,1                                              '�������ݿ�
 if rs.eof then                                                    '��������û�к������������ͬ����ת��err.html
 else                                                              '����
     response.Redirect"zhuce1.asp"
    response.end                                                           '���ҽ�����������
end if                                                                 '����if ���
 rs.close                                                          '����һ��rs����
 set rs=nothing                                                     '���rs
%>


<%
set rs=server.createobject("adodb.recordset")                              '��rs����Ȩ��
sql1="select * from users"                                                   '�Ա�Ĳ���
rs.open sql1,conn,3,3                                                       '�������ݿ�
rs.addnew                                                                  '���������
rs("college")=request.form("college")                                                '��ֵ��,�����ݿ�
rs("identity")=request.form("identity")
rs("nam")=request.form("nam")
rs("nam1")=request.form("nam1")
rs("number")=request.form("number")                                            '��ֵ��,�����ݿ�
rs("pass")=request.form("pass")
rs("pass1")=request.form("pass1")
rs("m1")=request.form("m1")
rs("m2")=request.form("m2")
rs("daan1")=request.form("daan1")
rs("daan2")=request.form("daan2")
rs("mail")=request.form("mail")
rs("phone")=request.form("phone")
rs("limit")="1"
rs.update                                                                  'rsΪupdate
rs.close                                                                   '����һ��rs����
set rs=nothing                                                             '���rs
conn.close                                                                 '����һ��conn����
set conn=nothing                                                           '���conn
response.Redirect"success@.html"                           '������һҳ
%>