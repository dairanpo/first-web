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
.STYLE18 {font-size: 36px}

-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />



<body>
<div id="main" style="position:absolute; width:365px; height:636px; z-index:1; left: 0px; top: 0px;">
  <div id="title">
    <table width="365" height="125" border="0">
      <tr>
        <td width="41" height="121"><span class="STYLE3"><a href="../mobile/mobile.asp">回到首页</a></span></td>
        <td width="41"><span class="STYLE3"><a href="../1/mb.asp">教学动态</a></span></td>
        <td width="39"><span class="STYLE3"><a href="../2/mb.asp">前沿技术</a></span></td>
        <td width="43"><span class="STYLE3"><a href="../3/mb.asp">教学资源</a></span></td>
        <td width="41"><span class="STYLE3"><a href="../4/mb.asp">开发资源</a></span></td>
        <td width="41"><span class="STYLE3"><a href="../5/mb.asp">研究动态</a></span></td>
        <td width="41"><span class="STYLE3"><a href="mb.asp">在线交流</a></span></td>
        <td width="44"><span class="STYLE3"><a href="../login/mbperson.asp">个人信息</a></span></td>
      </tr>
    </table>
    <div class="STYLE3" id="loc">
      <div align="center">发表留言前，请先登录</div>
    </div>
  </div>
  <div id="mulu">
    <div align="center" class="STYLE18"><a href="../login/denglu1.asp">点我登录</a></div>
  </div>
</div>
</body>