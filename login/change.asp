<!--#include file="conn.asp" -->
<%
 if request.Form("pass2")="" then                                    '如果获取的为空,则输出以下内容.     
    response.Write"<script language=javascript>alert('未输入旧密码');history.back(-1);</script>"
 response.End()                                                    '并且结束整个过程
 end if
 number=trim(session("number"))
 set rs=server.createobject("adodb.recordset") 
 sql="select * from user where number='"&number&"'"
 rs.open sql,conn,1,1
 if rs.eof then
 else
    if trim(rs("pass"))<>trim(pass2) then
      response.write "<script>alert('旧密码错误');history.back();</script>"
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
rs("college")=(request.form("college")                                                '赋值给,给数据库
rs("identity")=request.form("identity")
rs("nam")=request.form("nam")
rs("nam1")=request.form("nam1")
rs("pass")=request.form("pass")
rs("pass1")=request.form("pass1")
rs("mail")=request.form("mail")
rs("phone")=request.form("phone")
rs.update                                                                  'rs为update
rs.close                                                                   '结束一切rs操作
set rs=nothing                                                             '清空rs
conn.close                                                                 '结束一切conn操作
set conn=nothing                                                           '清空conn
session("pass2")=""                                                       '清除
response.Redirect"success2.html"                                           '返回上一页
%>