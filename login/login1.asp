<!--#include file="conn.asp" -->
<%
dim number,pass1
if request.Form("pass1")="" then                                    '�����ȡ��passΪ��,�������������.     
    response.Redirect"zhuce1.asp"
 response.End()                                                    '���ҽ�����������
 end if                                                            '����if���
if request.Form("number")="" then                                    '�����ȡ��passΪ��,�������������.     
    response.Redirect"zhuce1.asp"
 response.End()                                                    '���ҽ�����������
 end if                                                            '����if���
pass1=trim(request.form("pass1"))                              '��passȥ���ո�,
number=trim(request.form("number"))
set rs=server.createobject("adodb.recordset") 
 sql="select * from users where number='"&number&"'"
 rs.open sql,conn,1,1
 if rs.eof then
  response.Redirect"zhuce1.asp"
  response.end
 else
    if trim(rs("pass1"))<>trim(pass1) then
      response.Redirect"zhuce1.asp"
      response.end     
    else
      session("number")=trim(rs("number"))
      session("pass1")=trim(rs("pass1"))
      session("nam1")=trim(rs("nam1"))
      session("nam")=trim(rs("nam"))
      session("identity")=trim(rs("identity")) 
      session("limit")=trim(rs("limit"))
      session("phone")=trim(rs("phone"))
      session("mail")=trim(rs("mail"))     
      response.Redirect"../mobile/mobile.asp"
  end if
 end if                                                          '����if ���
 rs.close                                                          '����һ��rs����
 set rs=nothing                                                     '���rs
%> 