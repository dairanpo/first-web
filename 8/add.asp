

<!--#include file="conn.asp" -->
<%
if session("limit")="" then
response.write "<script>alert('请先登录');location='../6/partmain.asp'</script>"
end if
%>
<%
name1=trim(request("name1"))                                                    '获取,并且去处后面的空格(trim 函数出去空格)
if name1=""  then                                                            '如果的值为空,则输出一下内容
response.write "<script>alert('未填申请的实验室');onclick=history.go(-1)</script>"
    response.end                                                          '并且结束整个过程
end if

time1=trim(request("time1"))                                                 '获取,并且去处后面的空格(trim 函数出去空格)
if time1=""  then                                                           '如果的值为空,则输出一下内容
response.write "<script>alert('未填申请使用时间');onclick=history.go(-1)</script>"
    response.end                                                           '并且结束整个过程
end if

reason1=trim(request("reason1"))                                                 '获取nam,并且去处后面的空格(trim 函数出去空格)
if reason1=""  then                                                           '如果nam的值为空,则输出一下内容
response.write "<script>alert('未填使用用途');onclick=history.go(-1)</script>"
    response.end                                                           '并且结束整个过程
end if

nam1=trim(request("nam1"))                                                 '获取nam,并且去处后面的空格(trim 函数出去空格)
if nam1=""  then                                                           '如果nam的值为空,则输出一下内容
response.write "<script>alert('未填申请人');onclick=history.go(-1)</script>"
    response.end                                                           '并且结束整个过程
end if

sql="select * from content where name1='"&name1&"' and time1= '"&time1&"'"                 '查询数据库
set rs=server.CreateObject("adodb.recordset")                     '给予rs 操作权限
rs.open sql,conn,1,1                                              '操作数据库
if rs.eof then                                                    '如果到最后还没有和输入相同的则转到
else                                                              '否则
     response.write "<script>alert('实验室使用申请已提交');onclick=history.go(-1)</script>"
    response.end                                                           '并且结束整个过程
end if                                                                 '结束if 语句
 rs.close                                                          '结束一切rs操作
 set rs=nothing                                                     '清空rs
%>


<%
set rs=server.createobject("adodb.recordset")                              '对rs赋予权限
sql1="select * from content"                                                   '对表的操作
rs.open sql1,conn,3,3                                                       '操作数据库
rs.addnew    
                                                              '添加新数据
rs("nam")=session("nam")
rs("number")=session("number")
rs("name1")=request.form("name1")                                                '赋值给,给数据库
rs("time1")=request.form("time1")
rs("reason1")=request.form("reason1")
rs("nam1")=request.form("nam1")
rs("ok")=0     
rs("ok1")=0    

rs.update
rs.close                                                                   '结束一切rs操作
set rs=nothing                                                             '清空rs
conn.close                                                                 '结束一切conn操作
set conn=nothing                                                           '清空conn
response.write "<script>alert('提交申请成功');location='../8/synr.asp'</script>"                           '返回上一页
%>