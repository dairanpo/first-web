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
        <td width="41" height="121"><span class="STYLE3"><a href="../mobile/mobile.asp">�ص���ҳ</a></span></td>
        <td width="41"><span class="STYLE3"><a href="../1/mb.asp">��ѧ��̬</a></span></td>
        <td width="39"><span class="STYLE3"><a href="../2/mb.asp">ǰ�ؼ���</a></span></td>
        <td width="43"><span class="STYLE3"><a href="../3/mb.asp">��ѧ��Դ</a></span></td>
        <td width="41"><span class="STYLE3"><a href="../4/mb.asp">������Դ</a></span></td>
        <td width="41"><span class="STYLE3"><a href="../5/mb.asp">�о���̬</a></span></td>
        <td width="41"><span class="STYLE3"><a href="mb.asp">���߽���</a></span></td>
        <td width="44"><span class="STYLE3"><a href="../login/mbperson.asp">������Ϣ</a></span></td>
      </tr>
    </table>
    <div class="STYLE3" id="loc">
      <div align="center">��������ǰ�����ȵ�¼</div>
    </div>
  </div>
  <div id="mulu">
    <div align="center" class="STYLE18"><a href="../login/denglu1.asp">���ҵ�¼</a></div>
  </div>
</div>
</body>