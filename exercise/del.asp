

<!--#include file="conn.asp" -->
<!--#include file="sqlin.asp" -->
<%
    if session("limit")="" then
	response.write "还没有登陆验证呢!"
	response.end
    end if
%>

<%
id=request("id")                                        ' 获取ID
conn.execute("delete from content where id in ("&id&")")   '删除查询到的ID
response.write "<script>history.go(-1)</script>"        '返回到上页
%>