

<!--#include file="conn.asp" -->
<!--#include file="sqlin.asp" -->
<%
    if session("limit")="" then
	response.Redirect"../login/denglu.asp"
	response.end
    end if
%>

<%
id=request("id")                                        ' ��ȡID
conn.execute("delete from data where id in ("&id&")")   'ɾ����ѯ����ID
response.Redirect"index.asp"        '���ص���ҳ
%>