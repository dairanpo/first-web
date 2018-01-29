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
    <div class="STYLE4" id="loc">当前位置：注册</div>
  </div>
  <div id="mulu">

<form id="form1" name="form1" method="post" action="add1.asp">
      <table width="365" height="339" border="0">
        <tr>
          <td width="82" ><span class="STYLE7">学院：</span></td>
          <td width="273"><label>
            <input type="text" name="college" id="college"/>
          </label></td>
        </tr>
        <tr>
          <td><span class="STYLE7">工作：</span></td>
          <td><label>
            <select name="identity" size="1" id="identity">
              <option>学生</option>
              <option>教师</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td><span class="STYLE7">学号或工号：</span></td>
          <td><label>
            <input name="number" id="number" type="text" maxlength="18" />
          </label></td>
        </tr>
        <tr>
          <td><span class="STYLE7">姓名:</span></td>
          <td><label>
            <input type="text" name="nam" id="nam"/>
          </label></td>
        </tr>
        <tr>
          <td height="31" class="STYLE7">昵称:</td>
          <td><label>
            <input type="text" id="nam1" name="nam1" />
          </label></td>
        </tr>
        <tr>
          <td><span class="STYLE7">密码：</span></td>
          <td><label>
            <input name="pass" id="pass" type="password" maxlength="30" />
          </label></td>
        </tr>
        <tr>
          <td><span class="STYLE7">密码确认：</span></td>
          <td><label>
            <input name="pass1" id="pass1" type="password" maxlength="30" />
          </label></td>
        </tr>
        <tr>
          <td class="STYLE7">密保问题1：</td>
          <td><label>
            <input type="text" name="m1" id="m1" />
          </label></td>
        </tr>
        <tr>
          <td class="STYLE7">答案：</td>
          <td><label>
            <input type="text" name="daan1" id="daan1" />
          </label></td>
        </tr>
        <tr>
          <td class="STYLE7">密保问题2：</td>
          <td><label>
            <input type="text" name="m2" id="m2" />
          </label></td>
        </tr>
        <tr>
          <td class="STYLE7">答案：</td>
          <td><label>
            <input type="text" name="daan2" id="daan2" />
          </label></td>
        </tr>
        <tr>
          <td class="STYLE7">邮箱：</td>
          <td><label>
            <input type="text" name="mail" id="mail" />
          </label></td>
        </tr>
        <tr>
          <td class="STYLE7">手机：</td>
          <td><label>
            <input type="text" name="phone" id="phone" />
          </label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="Submit" value="立即注册" />
              <input type="reset" name="Submit2" value="重置" /></td>
        </tr>
      </table>
</form>

  </div>
</div>
</body>