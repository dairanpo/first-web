<!--#include file="conn.asp" -->
<%
if session("limit")=""then
response.write "<script>alert('未登录');location='../index.html'</script>"
end if
%>
<%
title=request("title")
number=session("number")
sql="select * from test1 where title='"&title&"' and number= '"&number&"'"                 '查询数据库
set rs=server.CreateObject("adodb.recordset")                     '给予rs 操作权限
rs.open sql,conn,1,1                                              '操作数据库
if rs.eof then                                                    '如果到最后还没有和输入相同的则转到
else                                                              '否则
     response.write "<script>alert('题目之前已提交过，可查询成绩');onclick=history.go(-1)</script>"
    response.end                                                           '并且结束整个过程
end if                                                                 '结束if 语句
 rs.close                                                          '结束一切rs操作
 set rs=nothing                                                     '清空rs
%>


<%


t1=trim(request("t1"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t1=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目1未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t2=trim(request("t2"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t2=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目2未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if

t3=trim(request("t3"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t3=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目3未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if

t4=trim(request("t4"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t4=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目4未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t5=trim(request("t5"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t5=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目5未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if

t6=trim(request("t6"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t6=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目6未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t7=trim(request("t7"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t7=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目7未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if

t8=trim(request("t8"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t8=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目8未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t9=trim(request("t9"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t9=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目9未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t10=trim(request("t10"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t10=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目10未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if

t11=trim(request("t11"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t11=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目11未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t12=trim(request("t12"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t12=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目12未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if

t13=trim(request("t13"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t13=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目13未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t14=trim(request("t14"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t14=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目14未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t15=trim(request("t15"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t15=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目15未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t16=trim(request("t16"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t16=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目16未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t17=trim(request("t17"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t17=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目17未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t18=trim(request("t18"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t18=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目18未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t19=trim(request("t19"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t19=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目19未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if


t20=trim(request("t20"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if t20=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('题目20未答');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if



%>

<%
set rs=server.createobject("adodb.recordset")                              '对rs赋予权限
sql1="select * from test1"                                                   '对表的操作
rs.open sql1,conn,3,3                                                       '操作数据库
rs.addnew                                                                  '添加新数据
rs("title")=request("title")                                               '赋值给,给数据库
rs("nam")=session("nam")
rs("number")=session("number")
rs("ti1")=request.form("t1")
rs("ti2")=request.form("t2")
rs("ti3")=request.form("t3")
rs("ti4")=request.form("t4")
rs("ti5")=request.form("t5")
rs("ti6")=request.form("t6")
rs("ti7")=request.form("t7")
rs("ti8")=request.form("t8")
rs("ti9")=request.form("t9")
rs("ti10")=request.form("t10")
rs("ti11")=request.form("t11")
rs("ti12")=request.form("t12")
rs("ti13")=request.form("t13")
rs("ti14")=request.form("t14")
rs("ti15")=request.form("t15")
rs("ti16")=request.form("t16")
rs("ti17")=request.form("t17")
rs("ti18")=request.form("t18")
rs("ti19")=request.form("t19")
rs("ti20")=request.form("t20")


rs.update
rs.close                                                                   '结束一切rs操作
set rs=nothing                                                             '清空rs

%>
<%
title=request("title")
grade=0
set rs=server.createobject("adodb.recordset") 
sql="select * from content where title='"&title&"'"
rs.open sql,conn,1,1
if rs.eof then
response.write "题目已过期"
end if

if t1=trim(rs("tt1")) then 
    t1g="5" 
    grade=grade+5
else 
    t1g="0"
end if

if t2=trim(rs("tt2")) then 
    t2g="5" 
    grade=grade+5
else 
    t2g="0"
end if

if t3=trim(rs("tt3")) then 
    t3g="5" 
    grade=grade+5
else 
    t3g="0"
end if

if t4=trim(rs("tt4")) then 
    t4g="5" 
    grade=grade+5
else 
    t4g="0"
end if

if t5=trim(rs("tt5")) then 
    t5g="5" 
    grade=grade+5
else 
    t5g="0"
end if

if t6=trim(rs("tt6")) then 
    t6g="5" 
    grade=grade+5
else 
    t6g="0"
end if

if t7=trim(rs("tt7")) then 
    t7g="5" 
    grade=grade+5
else 
    t7g="0"
end if

if t8=trim(rs("tt8")) then 
    t8g="5" 
    grade=grade+5
else 
    t8g="0"
end if

if t9=trim(rs("tt9")) then 
    t9g="5" 
    grade=grade+5
else 
    t9g="0"
end if

if t10=trim(rs("tt10")) then 
    t10g="5" 
    grade=grade+5
else 
    t10g="0"
end if

if t11=trim(rs("tt11")) then 
    t11g="5" 
    grade=grade+5
else 
    t11g="0"
end if

if t12=trim(rs("tt12")) then 
    t12g="5" 
    grade=grade+5
else 
    t12g="0"
end if

if t13=trim(rs("tt13")) then 
    t13g="5" 
    grade=grade+5
else 
    t13g="0"
end if

if t14=trim(rs("tt14")) then 
    t14g="5" 
    grade=grade+5
else 
    t14g="0"
end if

if t15=trim(rs("tt15")) then 
    t15g="5" 
    grade=grade+5
else 
    t15g="0"
end if

if t16=trim(rs("tt16")) then 
    t16g="5" 
    grade=grade+5
else 
    t16g="0"
end if

if t17=trim(rs("tt17")) then 
    t17g="5" 
    grade=grade+5
else 
    t17g="0"
end if

if t18=trim(rs("tt18")) then 
    t18g="5" 
    grade=grade+5
else 
    t18g="0"
end if

if t19=trim(rs("tt19")) then 
    t19g="5" 
    grade=grade+5
else 
    t19g="0"
end if

if t20=trim(rs("tt20")) then 
    t20g="5" 
    grade=grade+5
else 
    t20g="0"
end if


rs.close                                                                   '结束一切rs操作
set rs=nothing
%>

<%
set rs=server.createobject("adodb.recordset")                              '对rs赋予权限
sql1="select * from test1grade"                                                   '对表的操作
rs.open sql1,conn,3,3                                                       '操作数据库
rs.addnew                             

rs("title")=request("title")                                               '赋值给,给数据库
rs("nam")=session("nam")
rs("number")=session("number")
rs("ti1g")=t1g
rs("ti2g")=t2g
rs("ti3g")=t3g
rs("ti4g")=t4g
rs("ti5g")=t5g
rs("ti6g")=t6g
rs("ti7g")=t7g
rs("ti8g")=t8g
rs("ti9g")=t9g
rs("ti10g")=t10g
rs("ti11g")=t11g
rs("ti12g")=t12g
rs("ti13g")=t13g
rs("ti14g")=t14g
rs("ti15g")=t15g
rs("ti16g")=t16g
rs("ti17g")=t17g
rs("ti18g")=t18g
rs("ti19g")=t19g
rs("ti20g")=t20g
rs("grade")=grade

rs.update
rs.close                                                                   '结束一切rs操作
set rs=nothing                                                             '清空rs
conn.close                                                                 '结束一切conn操作
set conn=nothing                                                           '清空conn

response.write "<script>alert('提交成功');location='main.asp'</script>"
%>