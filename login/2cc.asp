<!--#include file="conn.asp" -->
<%
dim number,nam
if request.Form("nam")="" then                                    '�����ȡ��passΪ��,�������������.     
    response.Write"<script language=javascript>alert('δ��������');history.back(-1);</script>"
 response.End()                                                    '���ҽ�����������
 end if                                                            '����if���
if request.Form("number")="" then                                    '�����ȡ��passΪ��,�������������.     
    response.Write"<script language=javascript>alert('δ����ѧ�Ż򹤺�');history.back(-1);</script>"
 response.End()                                                    '���ҽ�����������
 end if                                                            '����if���
nam=trim(request.form("nam"))                              '��namȥ���ո�,
number=trim(request.form("number"))
set rs=server.createobject("adodb.recordset") 
sql="select * from users where number='"&number&"'"
rs.open sql,conn,1,1
 if rs.eof then
  response.write "<script>alert('ѧ����δע��');history.back();</script>"
  response.end
 else
    if trim(rs("nam"))<>nam then
      response.write "<script>alert('��������');history.back();</script>"
      response.end     
    else
      session("number")=rs("number")
      session("m1")=rs("m1")
      session("m2")=rs("m2")      
      response.Redirect"2gm.asp"
  end if
 end if                                                          '����if ���
 rs.close                                                          '����һ��rs����
 set rs=nothing                                                     '���rs
%> 