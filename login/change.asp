<!--#include file="conn.asp" -->
<%
 if request.Form("pass2")="" then                                    '�����ȡ��Ϊ��,�������������.     
    response.Write"<script language=javascript>alert('δ���������');history.back(-1);</script>"
 response.End()                                                    '���ҽ�����������
 end if
 number=trim(session("number"))
 set rs=server.createobject("adodb.recordset") 
 sql="select * from user where number='"&number&"'"
 rs.open sql,conn,1,1
 if rs.eof then
 else
    if trim(rs("pass"))<>trim(pass2) then
      response.write "<script>alert('���������');history.back();</script>"
      response.end     
    end if
 end if
rs.close
set rs=nothing
%>

<%
number=trim(session("number"))
set rs=server.createobject("adodb.recordset") 
sql="select * from user where number='"&number&"'"
rs.open sql,conn,1,3
rs("college")=(request.form("college")                                                '��ֵ��,�����ݿ�
rs("identity")=request.form("identity")
rs("nam")=request.form("nam")
rs("nam1")=request.form("nam1")
rs("pass")=request.form("pass")
rs("pass1")=request.form("pass1")
rs("mail")=request.form("mail")
rs("phone")=request.form("phone")
rs.update                                                                  'rsΪupdate
rs.close                                                                   '����һ��rs����
set rs=nothing                                                             '���rs
conn.close                                                                 '����һ��conn����
set conn=nothing                                                           '���conn
session("pass2")=""                                                       '���
response.Redirect"success2.html"                                           '������һҳ
%>