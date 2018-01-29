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
        <td><span class="STYLE3"><a href="../2/mb.asp">教学动态</a></span></td>
        <td><span class="STYLE3"><a href="../2/mb.asp">前沿技术</a></span></td>
        <td><span class="STYLE3"><a href="../3/mb.asp">教学资源</a></span></td>
        <td><span class="STYLE3"><a href="../4/mb.asp">开发资源</a></span></td>
        <td><span class="STYLE3"><a href="../5/mb.asp">研究动态</a></span></td>
        <td><span class="STYLE3"><a href="../6/mb.asp">在线交流</a></span></td>
        <td><span class="STYLE3"><a href="mbperson.asp">个人信息</a></span></td>
      </tr>
    </table>
    <div class="STYLE4" id="loc">当前位置：登录</div>
  </div>
  <div id="mulu">

<form id="form1" name="form1" method="post" action="login1.asp">
          <table width="365" height="253" border="0">
            <tr>
              <td width="235"><span class="STYLE7">学号或工号：</span></td>
              <td width="344"><label>
                <input name="number" id="number" type="text" maxlength="18" class="STYLE3" />
              </label></td>
            </tr>
            <tr>
              <td class="STYLE7">密码：</td>
              <td><label>
                <input name="pass1" id="pass1" type="password" maxlength="30" class="STYLE3" />
              </label></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="Submit1" value="登录" />
               <input type="reset" name="Submit2" value="重置" /></td>
            </tr>
      </table>
</form>

  </div>
</div>
</body>