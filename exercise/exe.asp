<!--#include file="conn.asp" -->
<%
if session("limit")=""then
response.write "<script>alert('δ��¼');location='../index.html'</script>"
end if
%>
<%
title=request("title")
number=session("number")
sql="select * from test1 where title='"&title&"' and number= '"&number&"'"                 '��ѯ���ݿ�
set rs=server.CreateObject("adodb.recordset")                     '����rs ����Ȩ��
rs.open sql,conn,1,1                                              '�������ݿ�
if rs.eof then                                                    '��������û�к�������ͬ����ת��
else                                                              '����
     response.write "<script>alert('��Ŀ֮ǰ���ύ�����ɲ�ѯ�ɼ�');onclick=history.go(-1)</script>"
    response.end                                                           '���ҽ�����������
end if                                                                 '����if ���
 rs.close                                                          '����һ��rs����
 set rs=nothing                                                     '���rs
%>


<%


t1=trim(request("t1"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t1=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ1δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t2=trim(request("t2"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t2=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ2δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if

t3=trim(request("t3"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t3=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ3δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if

t4=trim(request("t4"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t4=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ4δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t5=trim(request("t5"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t5=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ5δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if

t6=trim(request("t6"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t6=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ6δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t7=trim(request("t7"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t7=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ7δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if

t8=trim(request("t8"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t8=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ8δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t9=trim(request("t9"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t9=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ9δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t10=trim(request("t10"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t10=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ10δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if

t11=trim(request("t11"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t11=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ11δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t12=trim(request("t12"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t12=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ12δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if

t13=trim(request("t13"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t13=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ13δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t14=trim(request("t14"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t14=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ14δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t15=trim(request("t15"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t15=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ15δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t16=trim(request("t16"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t16=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ16δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t17=trim(request("t17"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t17=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ17δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t18=trim(request("t18"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t18=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ18δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t19=trim(request("t19"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t19=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ19δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if


t20=trim(request("t20"))                                                    '��ȡ,����ȥ������Ŀո�(trim ������ȥ�ո�)
if t20=""  then                                                            '�����ֵΪ��,�����һ������
response.write "<script>alert('��Ŀ20δ��');onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if



%>

<%
set rs=server.createobject("adodb.recordset")                              '��rs����Ȩ��
sql1="select * from test1"                                                   '�Ա�Ĳ���
rs.open sql1,conn,3,3                                                       '�������ݿ�
rs.addnew                                                                  '���������
rs("title")=request("title")                                               '��ֵ��,�����ݿ�
rs("nam")=session("nam")
rs("number")=session("number")
rs("ti1")=request.form("t1")
rs("ti2")=request.form("t2")
rs("ti3")=request.form("t3")
rs("ti4")=request.form("t4")
rs("ti5")=request.form("t5")
rs("ti6")=request.form("t6")
rs("ti7")=request.form("t7")
rs("ti8")=request.form("t8")
rs("ti9")=request.form("t9")
rs("ti10")=request.form("t10")
rs("ti11")=request.form("t11")
rs("ti12")=request.form("t12")
rs("ti13")=request.form("t13")
rs("ti14")=request.form("t14")
rs("ti15")=request.form("t15")
rs("ti16")=request.form("t16")
rs("ti17")=request.form("t17")
rs("ti18")=request.form("t18")
rs("ti19")=request.form("t19")
rs("ti20")=request.form("t20")


rs.update
rs.close                                                                   '����һ��rs����
set rs=nothing                                                             '���rs

%>
<%
title=request("title")
grade=0
set rs=server.createobject("adodb.recordset") 
sql="select * from content where title='"&title&"'"
rs.open sql,conn,1,1
if rs.eof then
response.write "��Ŀ�ѹ���"
end if

if t1=trim(rs("tt1")) then 
    t1g="5" 
    grade=grade+5
else 
    t1g="0"
end if

if t2=trim(rs("tt2")) then 
    t2g="5" 
    grade=grade+5
else 
    t2g="0"
end if

if t3=trim(rs("tt3")) then 
    t3g="5" 
    grade=grade+5
else 
    t3g="0"
end if

if t4=trim(rs("tt4")) then 
    t4g="5" 
    grade=grade+5
else 
    t4g="0"
end if

if t5=trim(rs("tt5")) then 
    t5g="5" 
    grade=grade+5
else 
    t5g="0"
end if

if t6=trim(rs("tt6")) then 
    t6g="5" 
    grade=grade+5
else 
    t6g="0"
end if

if t7=trim(rs("tt7")) then 
    t7g="5" 
    grade=grade+5
else 
    t7g="0"
end if

if t8=trim(rs("tt8")) then 
    t8g="5" 
    grade=grade+5
else 
    t8g="0"
end if

if t9=trim(rs("tt9")) then 
    t9g="5" 
    grade=grade+5
else 
    t9g="0"
end if

if t10=trim(rs("tt10")) then 
    t10g="5" 
    grade=grade+5
else 
    t10g="0"
end if

if t11=trim(rs("tt11")) then 
    t11g="5" 
    grade=grade+5
else 
    t11g="0"
end if

if t12=trim(rs("tt12")) then 
    t12g="5" 
    grade=grade+5
else 
    t12g="0"
end if

if t13=trim(rs("tt13")) then 
    t13g="5" 
    grade=grade+5
else 
    t13g="0"
end if

if t14=trim(rs("tt14")) then 
    t14g="5" 
    grade=grade+5
else 
    t14g="0"
end if

if t15=trim(rs("tt15")) then 
    t15g="5" 
    grade=grade+5
else 
    t15g="0"
end if

if t16=trim(rs("tt16")) then 
    t16g="5" 
    grade=grade+5
else 
    t16g="0"
end if

if t17=trim(rs("tt17")) then 
    t17g="5" 
    grade=grade+5
else 
    t17g="0"
end if

if t18=trim(rs("tt18")) then 
    t18g="5" 
    grade=grade+5
else 
    t18g="0"
end if

if t19=trim(rs("tt19")) then 
    t19g="5" 
    grade=grade+5
else 
    t19g="0"
end if

if t20=trim(rs("tt20")) then 
    t20g="5" 
    grade=grade+5
else 
    t20g="0"
end if


rs.close                                                                   '����һ��rs����
set rs=nothing
%>

<%
set rs=server.createobject("adodb.recordset")                              '��rs����Ȩ��
sql1="select * from test1grade"                                                   '�Ա�Ĳ���
rs.open sql1,conn,3,3                                                       '�������ݿ�
rs.addnew                             

rs("title")=request("title")                                               '��ֵ��,�����ݿ�
rs("nam")=session("nam")
rs("number")=session("number")
rs("ti1g")=t1g
rs("ti2g")=t2g
rs("ti3g")=t3g
rs("ti4g")=t4g
rs("ti5g")=t5g
rs("ti6g")=t6g
rs("ti7g")=t7g
rs("ti8g")=t8g
rs("ti9g")=t9g
rs("ti10g")=t10g
rs("ti11g")=t11g
rs("ti12g")=t12g
rs("ti13g")=t13g
rs("ti14g")=t14g
rs("ti15g")=t15g
rs("ti16g")=t16g
rs("ti17g")=t17g
rs("ti18g")=t18g
rs("ti19g")=t19g
rs("ti20g")=t20g
rs("grade")=grade

rs.update
rs.close                                                                   '����һ��rs����
set rs=nothing                                                             '���rs
conn.close                                                                 '����һ��conn����
set conn=nothing                                                           '���conn

response.write "<script>alert('�ύ�ɹ�');location='main.asp'</script>"
%>