

<!--#include file="conn.asp" -->
<!--#include file="sqlin.asp" -->
<%
    if session("limit")="" then
	response.Redirect"../login/denglu1.asp"
	response.end
    end if
%>

<%
id=request("id")                                        ' 获取ID
conn.execute("delete from data where id in ("&id&")")   '删除查询到的ID
response.Redirect"mb.asp"        '返回到上页
%>