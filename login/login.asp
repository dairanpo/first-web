<!--#include file="conn.asp" -->
<%
dim number,pass1
if request.Form("pass1")="" then                                    '如果获取的pass为空,则输出以下内容.     
    response.Write"<script language=javascript>alert('未输入密码');history.back(-1);</script>"
 response.End()                                                    '并且结束整个过程
 end if                                                            '结束if语句
if request.Form("number")="" then                                    '如果获取的pass为空,则输出以下内容.     
    response.Write"<script language=javascript>alert('未输入学号或工号');history.back(-1);</script>"
 response.End()                                                    '并且结束整个过程
 end if                                                            '结束if语句
pass1=trim(request.form("pass1"))                              '将pass去处空格,
number=trim(request.form("number"))
set rs=server.createobject("adodb.recordset") 
 sql="select * from users where number='"&number&"'"
 rs.open sql,conn,1,1
 if rs.eof then
  response.write "<script>alert('学号或工号尚未注册');history.back();</script>"
  response.end
 else
    if trim(rs("pass1"))<>trim(pass1) then
      response.write "<script>alert('密码错误');history.back();</script>"
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
      response.Redirect"../index.html"
  end if
 end if                                                          '结束if 语句
 rs.close                                                          '结束一切rs操作
 set rs=nothing                                                     '清空rs
%> 