

<!--#include file="conn.asp" -->
<%
college=trim(request("college"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if college=""  then                                                            '如果的值为空,则输出一下内容
response.Redirect"zhuce1.asp"
    response.end                                                          '并且结束整个过程
end if

number=trim(request("number"))                                                 '获取,并且去处后面的空格(trim 函数出去空格)
if number=""  then                                                           '如果的值为空,则输出一下内容
response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if

nam=trim(request("nam"))                                                 '获取nam,并且去处后面的空格(trim 函数出去空格)
if nam=""  then                                                           '如果nam的值为空,则输出一下内容
response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if

nam1=trim(request("nam1"))                                                 '获取nam,并且去处后面的空格(trim 函数出去空格)
if nam1=""  then                                                           '如果nam的值为空,则输出一下内容
response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if
 
pass=trim(request("pass"))                                                 '获取,并且去处后面的空格(trim 函数出去空格)
if pass=""  then                                                           '如果的值为空,则输出一下内容
response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if      

pass1=trim(request("pass1"))                                                 '获取,并且去处后面的空格(trim 函数出去空格)
if pass1=""  then                                                           '如果的值为空,则输出一下内容
response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if                                                                 '结束if 语句

m1=trim(request("m1"))                                                 '获取nam,并且去处后面的空格(trim 函数出去空格)
if m1=""  then                                                           '如果nam的值为空,则输出一下内容
response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if

daan1=trim(request("daan1"))                                                 '获取nam,并且去处后面的空格(trim 函数出去空格)
if daan1=""  then                                                           '如果nam的值为空,则输出一下内容
response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if

m2=trim(request("m2"))                                                 '获取nam,并且去处后面的空格(trim 函数出去空格)
if m2=""  then                                                           '如果nam的值为空,则输出一下内容
response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if

daan2=trim(request("daan2"))                                                 '获取nam,并且去处后面的空格(trim 函数出去空格)
if daan2=""  then                                                           '如果nam的值为空,则输出一下内容
response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if

mail=trim(request("mail"))                                                 '获取nam,并且去处后面的空格(trim 函数出去空格)
if mail=""  then                                                           '如果nam的值为空,则输出一下内容
response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if

phone=trim(request("phone"))                                                 '获取nam,并且去处后面的空格(trim 函数出去空格)
if phone=""  then                                                           '如果nam的值为空,则输出一下内容
response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if

if pass=pass1 then
else 
    response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if                                                                 '结束if 语句
 
 number=trim(request.form("number"))
 sql="select * from users where number='"&number&"'"                   '查询数据库
 set rs=server.CreateObject("adodb.recordset")                     '给予rs 操作权限
 rs.open sql,conn,1,1                                              '操作数据库
 if rs.eof then                                                    '如果到最后还没有和输入的密码相同的则转到err.html
 else                                                              '否则
     response.Redirect"zhuce1.asp"
    response.end                                                           '并且结束整个过程
end if                                                                 '结束if 语句
 rs.close                                                          '结束一切rs操作
 set rs=nothing                                                     '清空rs
%>


<%
set rs=server.createobject("adodb.recordset")                              '对rs赋予权限
sql1="select * from users"                                                   '对表的操作
rs.open sql1,conn,3,3                                                       '操作数据库
rs.addnew                                                                  '添加新数据
rs("college")=request.form("college")                                                '赋值给,给数据库
rs("identity")=request.form("identity")
rs("nam")=request.form("nam")
rs("nam1")=request.form("nam1")
rs("number")=request.form("number")                                            '赋值给,给数据库
rs("pass")=request.form("pass")
rs("pass1")=request.form("pass1")
rs("m1")=request.form("m1")
rs("m2")=request.form("m2")
rs("daan1")=request.form("daan1")
rs("daan2")=request.form("daan2")
rs("mail")=request.form("mail")
rs("phone")=request.form("phone")
rs("limit")="1"
rs.update                                                                  'rs为update
rs.close                                                                   '结束一切rs操作
set rs=nothing                                                             '清空rs
conn.close                                                                 '结束一切conn操作
set conn=nothing                                                           '清空conn
response.Redirect"success@.html"                           '返回上一页
%>