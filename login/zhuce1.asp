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
    <div class="STYLE4" id="loc">��ǰλ�ã�ע��</div>
  </div>
  <div id="mulu">

<form id="form1" name="form1" method="post" action="add1.asp">
      <table width="365" height="339" border="0">
        <tr>
          <td width="82" ><span class="STYLE7">ѧԺ��</span></td>
          <td width="273"><label>
            <input type="text" name="college" id="college"/>
          </label></td>
        </tr>
        <tr>
          <td><span class="STYLE7">������</span></td>
          <td><label>
            <select name="identity" size="1" id="identity">
              <option>ѧ��</option>
              <option>��ʦ</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td><span class="STYLE7">ѧ�Ż򹤺ţ�</span></td>
          <td><label>
            <input name="number" id="number" type="text" maxlength="18" />
          </label></td>
        </tr>
        <tr>
          <td><span class="STYLE7">����:</span></td>
          <td><label>
            <input type="text" name="nam" id="nam"/>
          </label></td>
        </tr>
        <tr>
          <td height="31" class="STYLE7">�ǳ�:</td>
          <td><label>
            <input type="text" id="nam1" name="nam1" />
          </label></td>
        </tr>
        <tr>
          <td><span class="STYLE7">���룺</span></td>
          <td><label>
            <input name="pass" id="pass" type="password" maxlength="30" />
          </label></td>
        </tr>
        <tr>
          <td><span class="STYLE7">����ȷ�ϣ�</span></td>
          <td><label>
            <input name="pass1" id="pass1" type="password" maxlength="30" />
          </label></td>
        </tr>
        <tr>
          <td class="STYLE7">�ܱ�����1��</td>
          <td><label>
            <input type="text" name="m1" id="m1" />
          </label></td>
        </tr>
        <tr>
          <td class="STYLE7">�𰸣�</td>
          <td><label>
            <input type="text" name="daan1" id="daan1" />
          </label></td>
        </tr>
        <tr>
          <td class="STYLE7">�ܱ�����2��</td>
          <td><label>
            <input type="text" name="m2" id="m2" />
          </label></td>
        </tr>
        <tr>
          <td class="STYLE7">�𰸣�</td>
          <td><label>
            <input type="text" name="daan2" id="daan2" />
          </label></td>
        </tr>
        <tr>
          <td class="STYLE7">���䣺</td>
          <td><label>
            <input type="text" name="mail" id="mail" />
          </label></td>
        </tr>
        <tr>
          <td class="STYLE7">�ֻ���</td>
          <td><label>
            <input type="text" name="phone" id="phone" />
          </label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="Submit" value="����ע��" />
              <input type="reset" name="Submit2" value="����" /></td>
        </tr>
      </table>
</form>

  </div>
</div>
</body>