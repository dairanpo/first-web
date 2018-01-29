

<!--------------------------------- 刷新页面缓冲  --------------------------------->
<%    Response.Expires = -1   
      Response.ExpiresAbsolute   =   Now()-1   
      Response.cachecontrol   =   "no-cache"
%>


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
	height:539px;
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
#Layer15 {
	position:absolute;
	width:365px;
	height:66px;
	z-index:1;
	left: 0px;
	top: 17px;
}
#Layer16 {
	position:absolute;
	width:276px;
	height:18px;
	z-index:2;
	left: 16px;
	top: 93px;
}
#Layer17 {
	position:absolute;
	width:188px;
	height:18px;
	z-index:3;
	left: 16px;
	top: 113px;
}
#Layer18 {
	position:absolute;
	width:365px;
	height:401px;
	z-index:4;
	top: 141px;
	left: 1px;
}
-->
</style>
<body>
<div id="main" style="position:absolute; width:365px; height:716px; z-index:1; left: 0px; top: 0px;">
  <div id="title">
    <table width="365" height="125" border="0">
      <tr>
        <td height="121"><span class="STYLE3"><a href="../mobile/mobile.asp">回到首页</a></span></td>
        <td><span class="STYLE3"><a href="../1/mb.asp">教学动态</a></span></td>
        <td><span class="STYLE3"><a href="../2/mb.asp">前沿技术</a></span></td>
        <td><span class="STYLE3"><a href="mb.asp">教学资源</a></span></td>
        <td><span class="STYLE3"><a href="../4/mb.asp">开发资源</a></span></td>
        <td><span class="STYLE3"><a href="../5/mb.asp">研究动态</a></span></td>
        <td><span class="STYLE3"><a href="../6/mb.asp">在线交流</a></span></td>
        <td><span class="STYLE3"><a href="../login/mbperson.asp">个人信息</a></span></td>
      </tr>
    </table>
    <div class="STYLE4" id="loc">当前位置：教学资源</div>
  </div>
  <div id="mulu">

<!-- #include file="conn.asp" -->
<%
title=request("title")
set rs=server.createobject("adodb.recordset") 
sql="select * from content where title='"&title&"'"
rs.open sql,conn,1,1
if rs.eof then
response.write "no"
end if
%>
  <div class="STYLE3" id="Layer15" align="center">
  <%response.write rs("title")%></div>
  <div id="Layer16">发布日期：
  <%response.write rs("time1")%></div>
  <div id="Layer17">来源：
  <%response.write rs("source")%></div>
  <div id="Layer18">
    <p>
      <%response.write rs("content1")%>
    </p>

  </div>
</div>
<%
rs.close                                                          '结束一切rs操作
set rs=nothing  
%>

</div>
</div>
</body>