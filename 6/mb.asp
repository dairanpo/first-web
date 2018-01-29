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
.STYLE2 {color: #000000}
.STYLE5 {color: #FF0000}
.STYLE6 {color: #000000}
.STYLE17 {	font-size: 24px;
	font-weight: bold;
	color: #FFFFFF;
	
}

-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />



<body>
<div id="main" style="position:absolute; width:365px; height:636px; z-index:1; left: 0px; top: 0px;">
  <div id="title">
    <table width="365" height="125" border="0">
      <tr>
        <td height="121"><span class="STYLE3"><a href="../mobile/mobile.asp">回到首页</a></span></td>
        <td><span class="STYLE3"><a href="../1/mb.asp">教学动态</a></span></td>
        <td><span class="STYLE3"><a href="../2/mb.asp">前沿技术</a></span></td>
        <td><span class="STYLE3"><a href="../3/mb.asp">教学资源</a></span></td>
        <td><span class="STYLE3"><a href="../4/mb.asp">开发资源</a></span></td>
        <td><span class="STYLE3"><a href="../5/mb.asp">研究动态</a></span></td>
        <td><span class="STYLE3"><a href="mb.asp">在线交流</a></span></td>
        <td><span class="STYLE3"><a href="../login/mbperson.asp">个人信息</a></span></td>
      </tr>
    </table>
    <div class="STYLE4" id="loc">当前位置：在线交流</div>
  </div>
  <div id="mulu">


<div bgcolor="#fef4d9"  onmousemove="move()" onMouseUp="down=false">



<script>
var over=false,down=false,divleft,divtop,n;
function clase(x){document.all['plane'+x].style.visibility='hidden'}
function down1(m){
n=m;down=true;divleft=event.clientX-parseInt(m.style.left);divtop=event.clientY-parseInt(m.style.top)}
function move(){if(down){n.style.left=event.clientX-divleft;n.style.top=event.clientY-divtop;}}
</script>


  <table width="365" border="1" align="center" cellspacing="1"  bordercolor="#E6F1FB" bgcolor="#E6F1FB">
    <tr>
      <td height="20" colspan="5" background="bg.gif" bgcolor="#B9D8F3" ><span class="STYLE6"><strong>·我要提问</strong></span></td>
    </tr>
    <td width="50"><tr width=300px>
      <td width="55" ><span class="STYLE6">昵称:</span></td>
      <td  width="292" height="14" >
	          <p>
	  	 <!-- 问题提交表单 -->
		<form id="form1" name="form1" method="post" action="add1.asp">
      <%response.write session("nam1")%></td>
      <td width="166" >        <div align="right">
          <input name="submit" type="submit"  value="   发表问题   "/>
          </div></td>
    </tr>
    <tr  width=300px>
      <td valign="top" ><span class="STYLE6">填写问题:</span></td>
      <td width="460" height="15" colspan="2" bgcolor="#F4FAFF" ><textarea name="ly" cols="40" rows="5" class="inputinput" id="ly"></textarea></td>
    </tr>
</table>
</form>

<!---------------------------------  问题内容查询开始  --------------------------------->
<%
       set rs=server.CreateObject("adodb.recordset")
       sql="select * from data order by id DESC"
       rs.open sql,conn,1,1
	   
'----------------------------------------页码--------------------------------------------
  page=request.QueryString("page")
   if IsNumeric(page) then
            page=cint(page)
            if page<1 then page=1 
         else 
            page=1 
         end if
  everypage=5
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
	 	 <% ly=rs("ly")  %>
		 <% hf=rs("hf")  %>
		  <% id=rs("id")  
'-----------------------------------------------------------------------------------------------
%>

<!---------------------------------  问题内容表格开始  --------------------------------->
  <table border="0" cellpadding="3" cellspacing="1" width="365" align="center" style="background-color: #b9d8f3;">
    <tr>
      <td background="bg.gif" bgcolor="#B9D8F3" ><strong>『 <span class="STYLE2"><%=clearHTMLCode(rs("name"))%></span> 』的问题:</strong></td>
	  
      <td background="bg.gif" bgcolor="#B9D8F3" >
	  
<%if session("limit")="3"then %>
 <div align="right"><span class="STYLE12"><a href="del1.asp?id=<%=rs("id")%>">删除</a></span></div>
<% else %>
<% end if %>	  </td>
    </tr>
    <tr bgcolor='#F4FAFF'>
      <td width="447"onmouseover="Cbg(this, 'ffffff')" onMouseOut="Cbg(this, '#F4FAFF')" ><div align="left"><span class="STYLE2"><%=clearHTMLCode(rs("ly"))%></span></div>
          <br />
          <div align="right"><span class="STYLE6"><%=rs("time")%> 留言</span></div></td>
		  
 <!--------------------------------- 拉开回复提交输入框和提交按钮的JS代码  --------------------------------->
		  <SCRIPT type=text/javascript 
      src="jq.js"></SCRIPT>
	   <SCRIPT type=text/javascript>

					
					function Reply<%=rs("id")%>()
					{

						$("#Reply<%=rs("id")%>").slideToggle('slow', function() {
							window.scrollBy(0,0);
						});
					}
					</SCRIPT>
					
					
      <td width="80" height="30" valign="bottom" bgcolor="#F4FAFF"onmouseover="Cbg(this, 'ffffff')" onMouseOut="Cbg(this, '#F4FAFF')" >
	  
<!---------------------------------  验证老师是否登陆,如果登陆了显示"回复"  --------------------------------->
	  <%
if session("limit")>"1"then %>
	  <div align="right"><span class="STYLE12"><a href="javascript:Reply<%=rs("id")%>()">回复</a></span></div>
	  
	  <% else %>
	 
<% end if %>
	  
	  </td>
    </tr>

    <tr>
<!---------------------------------  回复提交表单  --------------------------------->
	<form name="form2" method="post" action="reply1.asp?id=<%=rs("id")%>">
      <td style="DISPLAY: none" id=Reply<%=rs("id")%> height="20" colspan="2"  bgcolor='#E6F1FB' >
        <textarea name="hf" cols="50" rows="3" class="STYLE5" id="hf"></textarea>
            <input type="submit" name="Submit2" value="提交">
     
      </td>
	   </form>
    <tr>
<!---------------------------------  验证"yd"是否有数据,如果有了显示"老师回复"  --------------------------------->
		<%
	if rs("yd")<>""then %>
      <td  bgcolor='#E6F1FB' ><span class="STYLE5">老师回复:<%=clearHTMLCode(rs("hf"))%></span></td>
      <td height="10"  bgcolor='#E6F1FB' >&nbsp;</td>
	 <% 
	 end if
	  %>
      </table>
  <div align="center"><br>
    <span class="STYLE9">
    <strong>

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
</div>
</body>