<%
'-------------------------����clearHTMLCode��������������ݿ�������html��¼-------------
function clearHTMLCode(art_content) 
dim reg 
set reg = new RegExp 
reg.Pattern = "<[^>]*>" 
reg.Global = true 
clearHTMLCode = reg.Replace(art_content, "") 
end Function 
%> 

<!--------------------------------- ˢ��ҳ�滺��  --------------------------------->
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
        <td height="121"><span class="STYLE3"><a href="../mobile/mobile.asp">�ص���ҳ</a></span></td>
        <td><span class="STYLE3"><a href="../2/mb.asp">��ѧ��̬</a></span></td>
        <td><span class="STYLE3"><a href="../2/mb.asp">ǰ�ؼ���</a></span></td>
        <td><span class="STYLE3"><a href="../3/mb.asp">��ѧ��Դ</a></span></td>
        <td><span class="STYLE3"><a href="../4/mb.asp">������Դ</a></span></td>
        <td><span class="STYLE3"><a href="../5/mb.asp">�о���̬</a></span></td>
        <td><span class="STYLE3"><a href="../6/mb.asp">���߽���</a></span></td>
        <td><span class="STYLE3"><a href="mbperson.asp">������Ϣ</a></span></td>
      </tr>
    </table>
    <div class="STYLE4" id="loc">��ǰλ�ã�������Ϣ</div>
  </div>
  <div id="mulu">

      <table width="365" height="306" border="0" class="STYLE1">
<%
if trim(session("number"))="" then 
           response.redirect"denglu1.asp"
else
%>
        <tr>
          <td width="133">ѧ���ţ�</td>
          <td width="487"><span class="STYLE1"><%response.write session("number")%></span></td>
        </tr>
        <tr>
          <td>������</td>
          <td><span class="STYLE1"><%response.write session("nam")%></span></td>
        </tr>
        <tr>
          <td>�ǳƣ�</td>
          <td><span class="STYLE1"><%response.write session("nam1")%></span></td>
        </tr>
        <tr>
          <td>���:</td>
          <td><span class="STYLE1"><%response.write session("identity")%></span></td>
        </tr>
        <tr>
          <td>�ֻ����룺</td>
          <td><span class="STYLE1"><%response.write session("phone")%></span></td>
        </tr>
        <tr>
          <td>���䣺</td>
          <td><span class="STYLE1"><%response.write session("mail")%></span></td>
        </tr>
        <tr>
          <td>Ȩ�ޣ�</td>
          <td><span class="STYLE1"><%response.write session("limit")%>��Ȩ</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td></td>
        </tr>
<%end if%>
    </table>

  </div>
</div>
</body>