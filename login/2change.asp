<!--#include file="conn.asp" -->


<!--#include file="wangjimima.asp" -->
<%
if trim(session("number"))="" then  
       response.Redirect"denglu.asp"

end if
%>

<%
 if request.Form("daan1")="" then                                    '�����ȡ��Ϊ��,�������������.     
    response.Write"<script language=javascript>alert('δ�����1');history.back(-1);</script>"
 response.End()                                                    '���ҽ�����������
 end if                                                            '����if���
 
if request.Form("daan2")="" then                                    '�����ȡ��Ϊ��,�������������.     
    response.Write"<script language=javascript>alert('δ�����2');history.back(-1);</script>"
 response.End()                                                    '���ҽ�����������
 end if                                                            '����if���

 if request.Form("mail")="" then                                    '�����ȡ��Ϊ��,�������������.     
    response.Write"<script language=javascript>alert('δ�����������');history.back(-1);</script>"
 response.End()                                                    '���ҽ�����������
 end if       

 if request.Form("phone")="" then                                    '�����ȡ��Ϊ��,�������������.     
    response.Write"<script language=javascript>alert('δ�����ֻ�����');history.back(-1);</script>"
 response.End()                                                    '���ҽ�����������
 end if   

 if request.Form("phone")="" then                                    '�����ȡ��Ϊ��,�������������.     
    response.Write"<script language=javascript>alert('δ����������');history.back(-1);</script>"
 response.End()                                                    '���ҽ�����������
 end if

 if request.Form("phone")="" then                                    '�����ȡ��Ϊ��,�������������.     
    response.Write"<script language=javascript>alert('δ����ȷ�Ϻ���');history.back(-1);</script>"
 response.End()                                                      '���ҽ�����������
 end if 

 pass=trim(request("pass"))
 pass1=trim(request("pass1"))
 if pass=pass1 then
 else 
    response.write "<script>alert('�ظ����벻һ��');location='index.asp';onclick=history.go(-1)</script>"
    response.end                                                           '���ҽ�����������
 end if                                                                 '����if ���

 number=trim(session("number"))
 daan1=trim(request.form("daan1"))
 daan2=trim(request.form("daan2"))
 mail=trim(request.form("mail"))
 phone=trim(request.form("phone"))

 set rs=server.createobject("adodb.recordset") 
 sql="select * from users where number='"&number&"'"
 rs.open sql,conn,1,1
 if rs.eof then
 else
    if trim(rs("daan1"))<>trim(daan1) then
      response.write "<script>alert('��1����');history.back();</script>"
      response.end     
    else
          if trim(rs("daan2"))<>trim(daan2) then
             response.write "<script>alert('��2����');history.back();</script>"
             response.end   
          else 
              if trim(rs("mail"))<>trim(mail) then
                response.write "<script>alert('����������');history.back();</script>"
                response.end 
              else    
                  if trim(rs("phone"))<>trim(phone) then
                     response.write "<script>alert('�ֻ��������');history.back();</script>"
                     response.end  
                  end if
              end if
           end if
     end if
 end if
rs.close
set rs=nothing
%>


<%
number=trim(session("number"))
set rs=server.createobject("adodb.recordset") 
sql="select * from users where number='"&number&"'"
rs.open sql,conn,1,3
rs("pass")=request.form("pass")                                            '��ֵ��,�����ݿ�
rs("pass1")=request.form("pass1")
rs.update                                                                  'rsΪupdate
rs.close                                                                   '����һ��rs����
set rs=nothing                                                             '���rs
conn.close                                                                 '����һ��conn����
set conn=nothing                                                           '���conn
session("m1")=""                                                           '���
session("m2")=""                                                           '���
response.Redirect"success1.html"                                           '������һҳ

%>                      
     