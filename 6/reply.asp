

<!--#include file="conn.asp" -->
<!--#include file="sqlin.asp" -->
<%
    if session("limit")="" then                                               '���passΪ��'�����һ������
	response.Redirect"../login/denglu.asp"
	response.end
    end if                                                                   '����if ���
%>


<% 
dim rs3                                                                      '�������
dim sql3                                                                     '�������

id=request.form("id")                                                        '��ȡID

hf=request("hf")                                                             '��ȡhf
yd="1"                                                                       '��ֵ��yd

set rs3=server.CreateObject("adodb.recordset")                               '��rs3���ݿ����Ȩ��
sql3="select * from data where id="&cint(request.querystring("id"))          '��ѯ����
rs3.open sql3,conn,3,3                                                       '�������ݿ�
rs3("hf")=hf                                                                 '��ֵ��hf,���¸����ݿ�
rs3("yd")=yd                                                                 '��ֵ��yd,���¸����ݿ�
rs3("nam")=session("nam")
rs3.update                                                                   'rs3����Ϊupdate (���²���)
rs3.close                                                                    '����rs3һ�в���
response.Redirect"index.asp""                             '���ص���һҳ

%>