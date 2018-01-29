<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>登录</title>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:1076px;
	height:526px;
	z-index:1;
	left: 115px;
	top: 24px;
	background-image: url(../image/b7.jpg);
}
#Layer2 {
	position:absolute;
	width:445px;
	height:498px;
	z-index:1;
}
#Layer3 {
	position:absolute;
	width:871px;
	height:505px;
	z-index:2;
	left: 205px;
	top: 3px;
}
#Layer4 {
	position:absolute;
	width:446px;
	height:107px;
	z-index:1;
	background-image: url(../image/0011.jpg);
}
#Layer5 {
	position:absolute;
	width:1077px;
	height:108px;
	z-index:1;
	left: -205px;
	background-image: url(../image/270.jpg);
}
#Layer6 {
	position:absolute;
	width:444px;
	height:278px;
	z-index:2;
	left: -1px;
	top: 161px;
}
#Layer7 {
	position:absolute;
	width:458px;
	height:182px;
	z-index:2;
	left: 2px;
	top: 161px;
}
#Layer8 {
	position:absolute;
	width:591px;
	height:285px;
	z-index:2;
	top: 157px;
}
#Layer9 {
	position:absolute;
	width:193px;
	height:48px;
	z-index:1;
	left: 2px;
	top: 33px;
}
#Layer10 {
	position:absolute;
	width:211px;
	height:43px;
	z-index:1;
	left: 372px;
	top: 26px;
}
.STYLE1 {
	font-size: 36px;
	color: #FFFFFF;
	font-weight: bold;
}
.STYLE4 {
	color: #FFFFFF;
	font-size: 48px;
}

.STYLE3 {
	
	font-size: 30px;
}
.STYLE7 {font-size: 36px; font-weight: bold; }
#Layer11 {
	position:absolute;
	width:184px;
	height:45px;
	z-index:2;
	left: 359px;
	top: 220px;
}
-->
</style>
<script type="text/JavaScript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
</script>
</head>

<body>
<div id="Layer1">
  <div id="Layer3">
    <div id="Layer5">
      <div class="STYLE1" id="Layer10"><span class="STYLE4">登录</span></div>
    </div>
    <div id="layer"></div>
    <div id="Layer8">
      <div id="layer2">
        <form id="form1" name="form1" method="post" action="login.asp">
          <table width="589" height="253" border="0">
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
        <div id="Layer11">
          <input name="Submit22" type="submit" onclick="MM_openBrWindow('wangjimima.asp','','')" value="忘记密码" />
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
