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
.STYLE4 {font-size: 16px}
.STYLE2 {color: #000000}
.STYLE5 {color: #FF0000}
.STYLE6 {color: #000000}
.STYLE17 {	font-size: 24px;
	font-weight: bold;
	color: #FFFFFF;
	
}

-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />



<body>
<div id="main" style="position:absolute; width:365px; height:636px; z-index:1; left: 0px; top: 0px;">
  <div id="title">
    <table width="365" height="125" border="0">
      <tr>
        <td height="121"><span class="STYLE3"><a href="../mobile/mobile.asp">�ص���ҳ</a></span></td>
        <td><span class="STYLE3"><a href="../1/mb.asp">��ѧ��̬</a></span></td>
        <td><span class="STYLE3"><a href="../2/mb.asp">ǰ�ؼ���</a></span></td>
        <td><span class="STYLE3"><a href="../3/mb.asp">��ѧ��Դ</a></span></td>
        <td><span class="STYLE3"><a href="../4/mb.asp">������Դ</a></span></td>
        <td><span class="STYLE3"><a href="../5/mb.asp">�о���̬</a></span></td>
        <td><span class="STYLE3"><a href="mb.asp">���߽���</a></span></td>
        <td><span class="STYLE3"><a href="../login/mbperson.asp">������Ϣ</a></span></td>
      </tr>
    </table>
    <div class="STYLE4" id="loc">��ǰλ�ã����߽���</div>
  </div>
  <div id="mulu">


<div bgcolor="#fef4d9"  onmousemove="move()" onMouseUp="down=false">



<script>
var over=false,down=false,divleft,divtop,n;
function clase(x){document.all['plane'+x].style.visibility='hidden'}
function down1(m){
n=m;down=true;divleft=event.clientX-parseInt(m.style.left);divtop=event.clientY-parseInt(m.style.top)}
function move(){if(down){n.style.left=event.clientX-divleft;n.style.top=event.clientY-divtop;}}
</script>


  <table width="365" border="1" align="center" cellspacing="1"  bordercolor="#E6F1FB" bgcolor="#E6F1FB">
    <tr>
      <td height="20" colspan="5" background="bg.gif" bgcolor="#B9D8F3" ><span class="STYLE6"><strong>����Ҫ����</strong></span></td>
    </tr>
    <td width="50"><tr width=300px>
      <td width="55" ><span class="STYLE6">�ǳ�:</span></td>
      <td  width="292" height="14" >
	          <p>
	  	 <!-- �����ύ�� -->
		<form id="form1" name="form1" method="post" action="add1.asp">
      <%response.write session("nam1")%></td>
      <td width="166" >        <div align="right">
          <input name="submit" type="submit"  value="   ��������   "/>
          </div></td>
    </tr>
    <tr  width=300px>
      <td valign="top" ><span class="STYLE6">��д����:</span></td>
      <td width="460" height="15" colspan="2" bgcolor="#F4FAFF" ><textarea name="ly" cols="40" rows="5" class="inputinput" id="ly"></textarea></td>
    </tr>
</table>
</form>

<!---------------------------------  �������ݲ�ѯ��ʼ  --------------------------------->
<%
       set rs=server.CreateObject("adodb.recordset")
       sql="select * from data order by id DESC"
       rs.open sql,conn,1,1
	   
'----------------------------------------ҳ��--------------------------------------------
  page=request.QueryString("page")
   if IsNumeric(page) then
            page=cint(page)
            if page<1 then page=1 
         else 
            page=1 
         end if
  everypage=5
  rs.pagesize=everypage
  if rs.bof and rs.eof then
  
response.write "<BR> <p align='center' class='STYLE3'>���ݿ����޼�¼..." & allrows & "</p>"
response.end
  else
  page_count=rs.pagecount
  rs.AbsolutePage=page
  do while not rs.eof and j<rs.pagesize
  
'-----------------------------------------------------------------------------------------------
%>
	 	 <% ly=rs("ly")  %>
		 <% hf=rs("hf")  %>
		  <% id=rs("id")  
'-----------------------------------------------------------------------------------------------
%>

<!---------------------------------  �������ݱ��ʼ  --------------------------------->
  <table border="0" cellpadding="3" cellspacing="1" width="365" align="center" style="background-color: #b9d8f3;">
    <tr>
      <td background="bg.gif" bgcolor="#B9D8F3" ><strong>�� <span class="STYLE2"><%=clearHTMLCode(rs("name"))%></span> ��������:</strong></td>
	  
      <td background="bg.gif" bgcolor="#B9D8F3" >
	  
<%if session("limit")="3"then %>
 <div align="right"><span class="STYLE12"><a href="del1.asp?id=<%=rs("id")%>">ɾ��</a></span></div>
<% else %>
<% end if %>	  </td>
    </tr>
    <tr bgcolor='#F4FAFF'>
      <td width="447"onmouseover="Cbg(this, 'ffffff')" onMouseOut="Cbg(this, '#F4FAFF')" ><div align="left"><span class="STYLE2"><%=clearHTMLCode(rs("ly"))%></span></div>
          <br />
          <div align="right"><span class="STYLE6"><%=rs("time")%> ����</span></div></td>
		  
 <!--------------------------------- �����ظ��ύ�������ύ��ť��JS����  --------------------------------->
		  <SCRIPT type=text/javascript 
      src="jq.js"></SCRIPT>
	   <SCRIPT type=text/javascript>

					
					function Reply<%=rs("id")%>()
					{

						$("#Reply<%=rs("id")%>").slideToggle('slow', function() {
							window.scrollBy(0,0);
						});
					}
					</SCRIPT>
					
					
      <td width="80" height="30" valign="bottom" bgcolor="#F4FAFF"onmouseover="Cbg(this, 'ffffff')" onMouseOut="Cbg(this, '#F4FAFF')" >
	  
<!---------------------------------  ��֤��ʦ�Ƿ��½,�����½����ʾ"�ظ�"  --------------------------------->
	  <%
if session("limit")>"1"then %>
	  <div align="right"><span class="STYLE12"><a href="javascript:Reply<%=rs("id")%>()">�ظ�</a></span></div>
	  
	  <% else %>
	 
<% end if %>
	  
	  </td>
    </tr>

    <tr>
<!---------------------------------  �ظ��ύ��  --------------------------------->
	<form name="form2" method="post" action="reply1.asp?id=<%=rs("id")%>">
      <td style="DISPLAY: none" id=Reply<%=rs("id")%> height="20" colspan="2"  bgcolor='#E6F1FB' >
        <textarea name="hf" cols="50" rows="3" class="STYLE5" id="hf"></textarea>
            <input type="submit" name="Submit2" value="�ύ">
     
      </td>
	   </form>
    <tr>
<!---------------------------------  ��֤"yd"�Ƿ�������,���������ʾ"��ʦ�ظ�"  --------------------------------->
		<%
	if rs("yd")<>""then %>
      <td  bgcolor='#E6F1FB' ><span class="STYLE5">��ʦ�ظ�:<%=clearHTMLCode(rs("hf"))%></span></td>
      <td height="10"  bgcolor='#E6F1FB' >&nbsp;</td>
	 <% 
	 end if
	  %>
      </table>
  <div align="center"><br>
    <span class="STYLE9">
    <strong>

    <%
  j=j+1
  rs.movenext
  loop
  end if
%>
<!--  ������ѯ  -->
	

<!--------------------------------  ��ҳ��ʼ -------------------------------->
    <%
if page=>8 then
 Response.Write"<a href=mb.asp?page=1>��һҳ</a>"

   else
 Response.Write" "
 end if
 %>
 
    <%for j=page-4 to page-1%>
    <%if j>0 then%>
    <a href="mb.asp?page=<%=j%>"><%=j%></a>
    <%end if%>
    <%next%>
 
    <%
 for j=page to page+4
%>
    <% if j<=page_count then%>
    <%if j=page then%>
    <%=j%>
    <%else%>
    <a href="mb.asp?page=<%=j%>"><%=j%></a>
    <%end if%> 
    <%end if%>
    <% next 
    %>
    <%if page<page_count then%>
    </strong><a href="mb.asp?page=<%=page+1%>">��һҳ</a>
    <%else%>
    <span class="STYLE6">��һҳ</span>
<%end if%>
    </span></div>
	</div>

  </div>
</div>
</body>