
<!--#include file="conn.asp" -->
<!--#include file="sqlin.asp" -->
<%
    if session("limit")="" then
	response.write "��û�е�½��֤��!"
	response.end
    end if
%>
<%
ok=request.form("ok")
if ok="" then
response.write "<script>alert('δ��ָ����ʦ���');onclick=history.go(-1)</script>"
    response.end 
else
end if 
id=request("id")                                        ' ��ȡID
set rs=server.CreateObject("adodb.recordset")
sql="select * from content where id in ("&id&")"
rs.open sql,conn,3,3

rs("ok")=request.form("ok")
rs.update
rs.close
set rs=nothing

response.write "<script>alert('��������ɹ�');location='../8/time.asp'</script>"
%>