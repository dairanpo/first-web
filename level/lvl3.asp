<head><title>3级权限</title></head>
<style type="text/css">
<!--
.STYLE2 {
	font-size: 24px;
	font-weight: bold;
	color: #0000FF;
}
.STYLE4 {font-size: 24px; font-weight: bold; color: #000000; }
-->
</style>
<%
if session("limit")<"3"then
response.write "<script>alert('权限不够');location='../index.html'</script>"
end if
%>
<div id="Layer1" style="position:absolute; width:467px; height:350px; z-index:1; left: 394px; top: 39px;">
  <table width="470" height="351" border="0" align="center">
    <tr>
      <td><div ><span class="STYLE4">添加内容</span></div></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><a href="../1/write.asp" target="main1" class="STYLE2">教学动态</a></td>
      <td><a href="../0/write.asp" target="main1" class="STYLE2">教学视频</a></td>
    </tr>
    <tr>
      <td><a href="../2/write.asp" target="main1" class="STYLE2">前沿技术</a></td>
      <td><a href="../exercise/write.asp" class="STYLE2">在线做题</a></td>
    </tr>
    <tr>
      <td><a href="../3/write.asp" target="main1" class="STYLE2">教学资源</a></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><a href="../4/write.asp" target="main1" class="STYLE2">开发资源</a></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><a href="../5/write.asp" target="main1" class="STYLE2">研究动态</a></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><a href="../9/write.asp" target="main1" class="STYLE2">最新公告</a></td>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
