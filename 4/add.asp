

<!--#include file="conn.asp" -->
<%
if session("limit")<"3"then
response.write "<script>alert('权限不够');location='../index.html'</script>"
end if
%>
<%
title=trim(request("title"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if title=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('未填题目');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if

time1=trim(request("time1"))                                                 '获取,并且去处后面的空格(trim 函数出去空格)
if time1=""  then                                                           '如果的值为空,则输出一下内容
response.write "<script>alert('未填发表时间');onclick=history.go(-1)</script>"
    response.end                                                           '并且结束整个过程
end if

source=trim(request("source"))                                                 '获取nam,并且去处后面的空格(trim 函数出去空格)
if source=""  then                                                           '如果nam的值为空,则输出一下内容
response.write "<script>alert('未填来源');onclick=history.go(-1)</script>"
    response.end                                                           '并且结束整个过程
end if

content1=trim(request("content1"))                                                 '获取nam,并且去处后面的空格(trim 函数出去空格)
if content1=""  then                                                           '如果nam的值为空,则输出一下内容
response.write "<script>alert('未填内容');onclick=history.go(-1)</script>"
    response.end                                                           '并且结束整个过程
end if

 sql="select * from content where title='"&title&"'"                   '查询数据库
 set rs=server.CreateObject("adodb.recordset")                     '给予rs 操作权限
 rs.open sql,conn,1,1                                              '操作数据库
 if rs.eof then                                                    '如果到最后还没有和输入的密码相同的则转到err.html
 else                                                              '否则
     response.write "<script>alert('文章已登记');onclick=history.go(-1)</script>"
    response.end                                                           '并且结束整个过程
end if                                                                 '结束if 语句
 rs.close                                                          '结束一切rs操作
 set rs=nothing                                                     '清空rs
%>


<%
set rs=server.createobject("adodb.recordset")                              '对rs赋予权限
sql1="select * from content"                                                   '对表的操作
rs.open sql1,conn,3,3                                                       '操作数据库
rs.addnew                                                                  '添加新数据
rs("title")=request.form("title")                                                '赋值给,给数据库
rs("time1")=request.form("time1")
rs("source")=request.form("source")
rs("content1")=request.form("content1")

rs.update
rs.close                                                                   '结束一切rs操作
set rs=nothing                                                             '清空rs
conn.close                                                                 '结束一切conn操作
set conn=nothing                                                           '清空conn
response.write "<script>alert('提交成功');location='../level/lvl3.asp'</script>"                           '返回上一页
%>