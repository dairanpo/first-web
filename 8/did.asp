

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
set rs=server.CreateObject("adodb.recordset")
sql="select * from content where id in ("&id&")"
rs.open sql,conn,3,3

rs("ok1")="1"
rs.update
rs.close
set rs=nothing

response.write "<script>alert('处理申请成功');location='../8/synr.asp'</script>"
%>