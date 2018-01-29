<%
'-------------------------定义clearHTMLCode函数，清除从数据库里来的html纪录-------------
function clearHTMLCode(art_content) 
dim reg 
set reg = new RegExp 
reg.Pattern = "<[^>]*>" 
reg.Global = true 
clearHTMLCode = reg.Replace(art_content, "") 
end Function 
%> 

<!--------------------------------- 刷新页面缓冲  --------------------------------->
<%    Response.Expires = -1   
      Response.ExpiresAbsolute   =   Now()-1   
      Response.cachecontrol   =   "no-cache"
%>
<!-- #include file="conn.asp" -->

<style type="text/css">
<!--
#title {
	position:absolute;
	width:365px;
	height:125px;
	z-index:1;
	background-image: url(../image/mbtitle.png);
}
.STYLE3 {font-size: 24px}
#mulu {
	position:absolute;
	width:365px;
	height:460px;
	z-index:2;
	top: 179px;
}
#loc {
	position:absolute;
	width:365px;
	height:49px;
	z-index:3;
	left: 0px;
	top: 128px;
}
.STYLE4 {font-size: 16px}
-->
</style>
<body>
<div id="main" style="position:absolute; width:365px; height:636px; z-index:1; left: 0px; top: 0px;">
  <div id="title">
    <table width="365" height="125" border="0">
      <tr>
        <td height="121"><span class="STYLE3"><a href="../mobile/mobile.asp">回到首页</a></span></td>
        <td><span class="STYLE3"><a href="../1/mb.asp">教学动态</a></span></td>
        <td><span class="STYLE3"><a href="../2/mb.asp">前沿技术</a></span></td>
        <td><span class="STYLE3"><a href="../3/mb.asp">教学资源</a></span></td>
        <td><span class="STYLE3"><a href="mb.asp">开发资源</a></span></td>
        <td><span class="STYLE3"><a href="../5/mb.asp">研究动态</a></span></td>
        <td><span class="STYLE3"><a href="../6/mb.asp">在线交流</a></span></td>
        <td><span class="STYLE3"><a href="../login/mbperson.asp">个人信息</a></span></td>
      </tr>
    </table>
    <div class="STYLE4" id="loc">当前位置：开发资源</div>
  </div>
  <div id="mulu">

  <%
       set rs=server.CreateObject("adodb.recordset")
       sql="select * from content order by id DESC"
       rs.open sql,conn,1,1
	   
'----------------------------------------页码--------------------------------------------
  page=request.QueryString("page")
   if IsNumeric(page) then
            page=cint(page)
            if page<1 then page=1 
         else 
            page=1 
         end if
  everypage=10
  rs.pagesize=everypage
  if rs.bof and rs.eof then
  
response.write "<BR> <p align='center' class='STYLE3'>数据库中无纪录..." & allrows & "</p>"
response.end
  else
  page_count=rs.pagecount
  rs.AbsolutePage=page
  do while not rs.eof and j<rs.pagesize

'-----------------------------------------------------------------------------------------------
%>
  <% title=rs("title")  %>
  <% time1=rs("time1")  %>
  <% id=rs("id")  
'-----------------------------------------------------------------------------------------------
%>

  <!---------------------------------  内容表格开始  --------------------------------->

  <table border="0" cellpadding="3" cellspacing="1" width="365" align="center" style="background-color: #b9d8f3;">
    <tr> 
      <td width="481" background="bg.gif" bgcolor="#B9D8F3" >

         <span class="STYLE6">
           <a class="STYLE6" href="mb1.asp?title=<%=rs("title")%>" target="main1">
             <img src="../image/d1.gif" width="10" height="10" border="0"><%=clearHTMLCode(rs("title"))%>
           </a>           
         </span>
        
      </td>
    </tr>
  </table>
 
  <div align="center"><br>
      <span class="STYLE9"> <strong>
      <%
  j=j+1
  rs.movenext
  loop
  end if
%>
      <!--  结束查询  -->
      <!--------------------------------  分页开始 -------------------------------->
      <%
if page=>8 then
 Response.Write"<a href=mb.asp?page=1>第一页</a>"

   else
 Response.Write" "
 end if
 %>
      <%for j=page-4 to page-1%>
      <%if j>0 then%>
      <a href="mb.asp?page=<%=j%>"><%=j%></a>
      <%end if%>
      <%next%>
      <%
 for j=page to page+4
%>
      <% if j<=page_count then%>
      <%if j=page then%>
      <%=j%>
      <%else%>
      <a href="mb.asp?page=<%=j%>"><%=j%></a>
      <%end if%>
      <%end if%>
      <% next 
    %>
      <%if page<page_count then%>
      </strong><a href="mb.asp?page=<%=page+1%>">下一页</a>
      <%else%>
      <span class="STYLE6">下一页</span>
      <%end if%>
    </span></div>

  </div>
</div>
</body>