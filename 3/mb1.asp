

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
        <td height="121"><span class="STYLE3"><a href="../mobile/mobile.asp">�ص���ҳ</a></span></td>
        <td><span class="STYLE3"><a href="../1/mb.asp">��ѧ��̬</a></span></td>
        <td><span class="STYLE3"><a href="../2/mb.asp">ǰ�ؼ���</a></span></td>
        <td><span class="STYLE3"><a href="mb.asp">��ѧ��Դ</a></span></td>
        <td><span class="STYLE3"><a href="../4/mb.asp">������Դ</a></span></td>
        <td><span class="STYLE3"><a href="../5/mb.asp">�о���̬</a></span></td>
        <td><span class="STYLE3"><a href="../6/mb.asp">���߽���</a></span></td>
        <td><span class="STYLE3"><a href="../login/mbperson.asp">������Ϣ</a></span></td>
      </tr>
    </table>
    <div class="STYLE4" id="loc">��ǰλ�ã���ѧ��Դ</div>
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
  <div id="Layer16">�������ڣ�
  <%response.write rs("time1")%></div>
  <div id="Layer17">��Դ��
  <%response.write rs("source")%></div>
  <div id="Layer18">
    <p>
      <%response.write rs("content1")%>
    </p>

  </div>
</div>
<%
rs.close                                                          '����һ��rs����
set rs=nothing  
%>

</div>
</div>
</body>