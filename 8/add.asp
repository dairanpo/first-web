

<!--#include file="conn.asp" -->
<%
if session("limit")="" then
response.write "<script>alert('���ȵ�¼');location='../6/partmain.asp'</script>"
end if
%>
<%
name1=trim(request("name1"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if name1=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('δ�������ʵ����');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if

time1=trim(request("time1"))                                                 '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if time1=""  then                                                           '�����ֵΪ��,�����һ������
response.write "<script>alert('δ������ʹ��ʱ��');onclick=history.go(-1)</script>"
    response.end                                                           '���ҽ�����������
end if

reason1=trim(request("reason1"))                                                 '��ȡnam,����ȥ������Ŀո�(trim ������ȥ�ո�)
if reason1=""  then                                                           '���nam��ֵΪ��,�����һ������
response.write "<script>alert('δ��ʹ����;');onclick=history.go(-1)</script>"
    response.end                                                           '���ҽ�����������
end if

nam1=trim(request("nam1"))                                                 '��ȡnam,����ȥ������Ŀո�(trim ������ȥ�ո�)
if nam1=""  then                                                           '���nam��ֵΪ��,�����һ������
response.write "<script>alert('δ��������');onclick=history.go(-1)</script>"
    response.end                                                           '���ҽ�����������
end if

sql="select * from content where name1='"&name1&"' and time1= '"&time1&"'"                 '��ѯ���ݿ�
set rs=server.CreateObject("adodb.recordset")                     '����rs ����Ȩ��
rs.open sql,conn,1,1                                              '�������ݿ�
if rs.eof then                                                    '��������û�к�������ͬ����ת��
else                                                              '����
     response.write "<script>alert('ʵ����ʹ���������ύ');onclick=history.go(-1)</script>"
    response.end                                                           '���ҽ�����������
end if                                                                 '����if ���
 rs.close                                                          '����һ��rs����
 set rs=nothing                                                     '���rs
%>


<%
set rs=server.createobject("adodb.recordset")                              '��rs����Ȩ��
sql1="select * from content"                                                   '�Ա�Ĳ���
rs.open sql1,conn,3,3                                                       '�������ݿ�
rs.addnew    
                                                              '���������
rs("nam")=session("nam")
rs("number")=session("number")
rs("name1")=request.form("name1")                                                '��ֵ��,�����ݿ�
rs("time1")=request.form("time1")
rs("reason1")=request.form("reason1")
rs("nam1")=request.form("nam1")
rs("ok")=0     
rs("ok1")=0    

rs.update
rs.close                                                                   '����һ��rs����
set rs=nothing                                                             '���rs
conn.close                                                                 '����һ��conn����
set conn=nothing                                                           '���conn
response.write "<script>alert('�ύ����ɹ�');location='../8/synr.asp'</script>"                           '������һҳ
%>