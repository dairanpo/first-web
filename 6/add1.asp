<!--#include file="conn.asp" -->
<%
nam1=trim(session("nam1"))                                                 '获取name,并且去处后面的空格(trim 函数出去空格)
if nam1=""  then                                                           '如果name的值为空,则输出一下内容
response.Redirect"mbjp.asp"
    response.end                                                           '并且结束整个过程
end if 
ly=trim(request("ly"))                                                    '获取ly,并且去处后面的空格(trim 函数出去空格)
if ly=""  then                                                            '如果ly的值为空,则输出一下内容
response.Redirect"mb.asp"
    response.end                                                          '并且结束整个过程
end if                                                                    '结束if 语句
%>

<%
set rs=server.createobject("adodb.recordset")                              '对rs赋予权限
sql="select * from data"                                                   '对表的操作
rs.open sql,conn,3,3                                                       '操作数据库
rs.addnew                                                                  '添加新数据
rs("ly")=request.form("ly")                                                '赋值给ly,给数据库
rs("name")=trim(session("nam1"))                                            '赋值给name,给数据库
rs.update                                                                  'rs为update
rs.close                                                                   '结束一切rs操作
set rs=nothing                                                             '清空rs
conn.close                                                                 '结束一切conn操作
set conn=nothing                                                           '清空conn
response.Redirect"mb.asp"                        
%>