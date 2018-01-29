<style type="text/css">
<!--
#title1 {
	position:absolute;
	width:365px;
	height:59px;
	z-index:1;
	left: 0px;
	background-image: url(../image/b6.jpg);
}
.STYLE1 {
	font-size: 24px;
	font-weight: bold;
	color: #990033;
}
#title1-1 {
	position:absolute;
	width:277px;
	height:24px;
	z-index:1;
	left: 34px;
	top: 3px;
}
#title1-2 {
	position:absolute;
	width:197px;
	height:22px;
	z-index:2;
	left: 168px;
	top: 35px;
}
.STYLE2 {
	font-size: 18px;
	font-weight: bold;
	color: #0000CC;
}
#welcome {
	position:absolute;
	width:345px;
	height:189px;
	z-index:2;
	left: 0px;
	top: 59px;
}
#content {
	position:absolute;
	width:345px;
	height:187px;
	z-index:3;
	top: 250px;
}
#content1 {
	position:absolute;
	width:345px;
	height:187px;
	z-index:4;
	left: 0px;
	top: 440px;
}
-->
</style>
<title>南京师范大学移动教学网</title>
<body>
<div id="main" style="position:absolute; width:365px; height:636px; z-index:1; left: 0px; top: 0px;">
  <div id="title1">
    <div class="STYLE1" id="title1-1">南京师范大学移动教学网</div>
    <div class="STYLE2" id="title1-2">————高频电子线路</div>
  </div>
  <div id="welcome"><img src="../image/welcome.jpg" alt="o.o" width="365" height="189" /></div>
  <div id="content">
    <table width="365" height="187" border="0">
      <tr>
        <td><strong>资讯</strong></td>
<%if session("pass1")<>""then %>
	<td><a href="../login/mbperson.asp">个人信息</a></td>
	<td><a href="quit.asp">退出登录</a></td>

<% else %> 
        <td>&nbsp;</td>
        <td><strong><a href="../login/denglu1.asp">登录</a>/<a href="../login/zhuce1.asp">注册</a></strong></td>
<% end if %>
      </tr>
      <tr>
        <td><a href="../1/mb.asp">教学动态</a></td>
        <td><a href="../2/mb.asp">前沿技术</a></td>
        <td><a href="../3/mb.asp">教学资源</a></td>
      </tr>
      <tr>
        <td><a href="../4/mb.asp">开发资源</a></td>
        <td><a href="../5/mb.asp">研究动态</a></td>
        <td><a href="../6/mb.asp">在线答疑</a></td>
      </tr>
    </table>
  </div>
  <div id="content1"><img src="../image/school.jpg" alt="o.o" width="365" height="197"></div>
</div>
</body>