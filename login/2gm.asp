

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>忘记密码</title>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:908px;
	height:633px;
	z-index:1;
	left: 146px;
	top: 32px;
	background-image: url(../image/b7.jpg);
}
#Layer2 {
	position:absolute;
	width:908px;
	height:669px;
	z-index:1;
}
#Layer3 {
	position:absolute;
	width:429px;
	height:667px;
	z-index:1;
	left: 479px;
	top: 2px;
}
#Layer4 {
	position:absolute;
	width:907px;
	height:116px;
	z-index:2;
	background-image: url(../image/0011.jpg);
}
#Layer5 {
	position:absolute;
	width:427px;
	height:115px;
	z-index:1;
	background-image: url(../image/270.jpg);
}
.STYLE2 {font-size: 48px; font-weight: bold; color: #FFFFFF; }
#Layer6 {
	position:absolute;
	width:647px;
	height:494px;
	z-index:3;
	left: 135px;
	top: 146px;
}
#Layer7 {
	position:absolute;
	width:530px;
	height:432px;
	z-index:1;
	left: 59px;
	top: 2px;
}
.STYLE4 {
	font-size: 24px;
	font-weight: bold;
}
.STYLE6 {font-size: 24px; font-weight: bold; color: #0000FF; }
-->
</style>
</head>

<body>
<div id="Layer1">
  <div id="Layer2">
    <div id="Layer4">
      <table width="908" height="115" border="0">
        <tr>
          <td><div align="center" class="STYLE2">修改密码</div></td>
        </tr>
      </table>
    </div>
    <div id="Layer6">
      <div id="Layer7">
        <form id="form1" name="form1" method="post" action="2change.asp">
          <table width="528" height="434" border="0">
            <tr>
              <td width="148" class="STYLE4">学工号：</td>
              <td width="370" class="STYLE6"><%response.write session("number")%>&nbsp;</td>
            </tr>
            <tr>
              <td class="STYLE4">密保问题1：</td>
              <td class="STYLE6"><%response.write session("m1")%>&nbsp;</td>
            </tr>
            <tr>
              <td class="STYLE4">答案:</td>
              <td><label>
                <input type="text" name="daan1" id="daan1" />
              </label></td>
            </tr>
            <tr>
              <td class="STYLE4">密保问题2：</td>
              <td class="STYLE6"><%response.write session("m2")%>&nbsp;</td>
            </tr>
            <tr>
              <td class="STYLE4">答案：</td>
              <td><label>
                <input type="text" name="daan2" id="daan2" />
              </label></td>
            </tr>
            <tr>
              <td class="STYLE4">手机号码：</td>
              <td><label>
                <input type="text" name="phone" id="phone" />
              </label></td>
            </tr>
            <tr>
              <td class="STYLE4">邮箱号码：</td>
              <td><label>
                <input type="text" name="mail" id="mail" />
              </label></td>
            </tr>
            <tr>
              <td class="STYLE4">新密码：</td>
              <td><label>
                <input type="password" name="pass" id="pass" />
              </label></td>
            </tr>
            <tr>
              <td><span class="STYLE4">确认密码：</span></td>
              <td><label>
                <input type="password" name="pass1" id="pass1" />
              </label></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="Submit" value="提交" />
              <input type="reset" name="Submit2" value="重置" /></td>
            </tr>
          </table>
        </form>
      </div>
    </div>
  </div>
</div>
</body>

</html>
