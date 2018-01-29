<!--#include file="conn.asp" -->


<!--#include file="wangjimima.asp" -->
<%
if trim(session("number"))="" then  
       response.Redirect"denglu.asp"

end if
%>

<%
 if request.Form("daan1")="" then                                    '如果获取的为空,则输出以下内容.     
    response.Write"<script language=javascript>alert('未输入答案1');history.back(-1);</script>"
 response.End()                                                    '并且结束整个过程
 end if                                                            '结束if语句
 
if request.Form("daan2")="" then                                    '如果获取的为空,则输出以下内容.     
    response.Write"<script language=javascript>alert('未输入答案2');history.back(-1);</script>"
 response.End()                                                    '并且结束整个过程
 end if                                                            '结束if语句

 if request.Form("mail")="" then                                    '如果获取的为空,则输出以下内容.     
    response.Write"<script language=javascript>alert('未输入邮箱号码');history.back(-1);</script>"
 response.End()                                                    '并且结束整个过程
 end if       

 if request.Form("phone")="" then                                    '如果获取的为空,则输出以下内容.     
    response.Write"<script language=javascript>alert('未输入手机号码');history.back(-1);</script>"
 response.End()                                                    '并且结束整个过程
 end if   

 if request.Form("phone")="" then                                    '如果获取的为空,则输出以下内容.     
    response.Write"<script language=javascript>alert('未输入新密码');history.back(-1);</script>"
 response.End()                                                    '并且结束整个过程
 end if

 if request.Form("phone")="" then                                    '如果获取的为空,则输出以下内容.     
    response.Write"<script language=javascript>alert('未输入确认号码');history.back(-1);</script>"
 response.End()                                                      '并且结束整个过程
 end if 

 pass=trim(request("pass"))
 pass1=trim(request("pass1"))
 if pass=pass1 then
 else 
    response.write "<script>alert('重复密码不一致');location='index.asp';onclick=history.go(-1)</script>"
    response.end                                                           '并且结束整个过程
 end if                                                                 '结束if 语句

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
      response.write "<script>alert('答案1错误');history.back();</script>"
      response.end     
    else
          if trim(rs("daan2"))<>trim(daan2) then
             response.write "<script>alert('答案2错误');history.back();</script>"
             response.end   
          else 
              if trim(rs("mail"))<>trim(mail) then
                response.write "<script>alert('邮箱号码错误');history.back();</script>"
                response.end 
              else    
                  if trim(rs("phone"))<>trim(phone) then
                     response.write "<script>alert('手机号码错误');history.back();</script>"
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
rs("pass")=request.form("pass")                                            '赋值给,给数据库
rs("pass1")=request.form("pass1")
rs.update                                                                  'rs为update
rs.close                                                                   '结束一切rs操作
set rs=nothing                                                             '清空rs
conn.close                                                                 '结束一切conn操作
set conn=nothing                                                           '清空conn
session("m1")=""                                                           '清除
session("m2")=""                                                           '清除
response.Redirect"success1.html"                                           '返回上一页

%>                      
     