

<!--#include file="conn.asp" -->
<%
if session("limit")<"3"then
response.write "<script>alert('Ȩ�޲���');location='../index.html'</script>"
end if
%>
<%
title=trim(request("title"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if title=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('δ����Ŀ');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if

time1=trim(request("time1"))                                                 '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if time1=""  then                                                           '�����ֵΪ��,�����һ������
response.write "<script>alert('δ���ʱ��');onclick=history.go(-1)</script>"
    response.end                                                           '���ҽ�����������
end if

source=trim(request("source"))                                                 '��ȡnam,����ȥ������Ŀո�(trim ������ȥ�ո�)
if source=""  then                                                           '���nam��ֵΪ��,�����һ������
response.write "<script>alert('δ����Դ');onclick=history.go(-1)</script>"
    response.end                                                           '���ҽ�����������
end if

content1=trim(request("content1"))                                                 '��ȡnam,����ȥ������Ŀո�(trim ������ȥ�ո�)
if content1=""  then                                                           '���nam��ֵΪ��,�����һ������
response.write "<script>alert('δ������');onclick=history.go(-1)</script>"
    response.end                                                           '���ҽ�����������
end if

 sql="select * from content where title='"&title&"'"                   '��ѯ���ݿ�
 set rs=server.CreateObject("adodb.recordset")                     '����rs ����Ȩ��
 rs.open sql,conn,1,1                                              '�������ݿ�
 if rs.eof then                                                    '��������û�к������������ͬ����ת��err.html
 else                                                              '����
     response.write "<script>alert('�����ѵǼ�');onclick=history.go(-1)</script>"
    response.end                                                           '���ҽ�����������
end if                                                                 '����if ���
 rs.close                                                          '����һ��rs����
 set rs=nothing                                                     '���rs
%>


<%
set rs=server.createobject("adodb.recordset")                              '��rs����Ȩ��
sql1="select * from content"                                                   '�Ա�Ĳ���
rs.open sql1,conn,3,3                                                       '�������ݿ�
rs.addnew                                                                  '���������
rs("title")=request.form("title")                                                '��ֵ��,�����ݿ�
rs("time1")=request.form("time1")
rs("source")=request.form("source")
rs("content1")=request.form("content1")

rs.update
rs.close                                                                   '����һ��rs����
set rs=nothing                                                             '���rs
conn.close                                                                 '����һ��conn����
set conn=nothing                                                           '���conn
response.write "<script>alert('�ύ�ɹ�');location='../level/lvl3.asp'</script>"                           '������һҳ
%>