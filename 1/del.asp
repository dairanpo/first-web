

<!--#include file="conn.asp" -->
<!--#include file="sqlin.asp" -->
<%
    if session("limit")="" then
	response.write "��û�е�½��֤��!"
	response.end
    end if
%>

<%
id=request("id")                                        ' ��ȡID
conn.execute("delete from content where id in ("&id&")")   'ɾ����ѯ����ID
response.write "<script>history.go(-1)</script>"        '���ص���ҳ
%>