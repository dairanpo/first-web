<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>注册</title>
<style type="text/css">
<!--
.STYLE1 {	font-size: 36px;
	color: #FFFFFF;
	font-weight: bold;
}
.STYLE7 {font-size: 16px; font-weight: bold; }
#Layer2 {
	position:absolute;
	width:445px;
	height:498px;
	z-index:1;
	left: 408px;
	top: 22px;
}
#Layer4 {	position:absolute;
	width:446px;
	height:107px;
	z-index:1;
	background-image: url(../image/0011.jpg);
}
#Layer6 {	position:absolute;
	width:444px;
	height:338px;
	z-index:2;
	left: -1px;
	top: 161px;
}
#Layer9 {	position:absolute;
	width:193px;
	height:48px;
	z-index:1;
	left: 2px;
	top: 33px;
}
-->
</style>
</head>

<body>
<div id="Layer2">
  <div id="Layer4">
    <div class="STYLE1" id="Layer9">注册</div>
  </div>
  <div id="Layer6">
    <form id="form1" name="form1" method="post" action="add.asp">
      <table width="449" height="339" border="0">
        <tr>
          <td ><span class="STYLE7">学院：</span></td>
          <td width="305"><label>
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
</html>
