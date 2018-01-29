<!--#include file="conn.asp" -->
<%
dim number,nam
if request.Form("nam")="" then                                    '如果获取的pass为空,则输出以下内容.     
    response.Write"<script language=javascript>alert('未输入姓名');history.back(-1);</script>"
 response.End()                                                    '并且结束整个过程
 end if                                                            '结束if语句
if request.Form("number")="" then                                    '如果获取的pass为空,则输出以下内容.     
    response.Write"<script language=javascript>alert('未输入学号或工号');history.back(-1);</script>"
 response.End()                                                    '并且结束整个过程
 end if                                                            '结束if语句
nam=trim(request.form("nam"))                              '将nam去处空格,
number=trim(request.form("number"))
set rs=server.createobject("adodb.recordset") 
sql="select * from users where number='"&number&"'"
rs.open sql,conn,1,1
 if rs.eof then
  response.write "<script>alert('学号尚未注册');history.back();</script>"
  response.end
 else
    if trim(rs("nam"))<>nam then
      response.write "<script>alert('姓名错误');history.back();</script>"
      response.end     
    else
      session("number")=rs("number")
      session("m1")=rs("m1")
      session("m2")=rs("m2")      
      response.Redirect"2gm.asp"
  end if
 end if                                                          '结束if 语句
 rs.close                                                          '结束一切rs操作
 set rs=nothing                                                     '清空rs
%> 