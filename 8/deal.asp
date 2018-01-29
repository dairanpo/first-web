
<!--#include file="conn.asp" -->
<!--#include file="sqlin.asp" -->
<%
    if session("limit")="" then
	response.write "还没有登陆验证呢!"
	response.end
    end if
%>
<%
ok=request.form("ok")
if ok="" then
response.write "<script>alert('未填指导老师意见');onclick=history.go(-1)</script>"
    response.end 
else
end if 
id=request("id")                                        ' 获取ID
set rs=server.CreateObject("adodb.recordset")
sql="select * from content where id in ("&id&")"
rs.open sql,conn,3,3

rs("ok")=request.form("ok")
rs.update
rs.close
set rs=nothing

response.write "<script>alert('处理申请成功');location='../8/time.asp'</script>"
%>