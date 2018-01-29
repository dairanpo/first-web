

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="教学网,信息化教学网,南京师范大学,南京师范大学信息化教学网,信息化教学" />
    <meta name="description" content="南京师范大学教学网是为全面推动我校课程建设和完善教学信息化而开发的立体化教学网络平台。它针对教师、学生和管理者这三类与教学紧密相关的用户，坚持“以资源为核心，以应用为导向，以机制为保障”，提供了辅助教学、资源共享、互动交流、自主学习、教学管理等功能，为教育资源建设、教育教学辅助、文化素质教育提供帮助。" />
    <title>欢迎访问南京师范大学信息化教学网</title>
    <link href="CSS/index_css.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript" src="JavaScript/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/md5.js"></script>
    <script type="text/javascript" src="js/md5-legacy.js"></script>
    <script type="text/javascript" src="js/base64.js"></script>
      <style type="text/css">
#backToTop { display: none;background:url(images/top.gif) repeat; width: 21px; line-height: 1.2; padding: 5px 0;  color: #fff; height:59px; font-size: 12px; text-align: center; position: fixed; _position: absolute; bottom: 100px; _bottom: "auto"; cursor: pointer; opacity: .6; 
}</style>
    <script type="text/javascript">


        function addLoadEvent(func){
	        var oldonload = window.onload;
	        if (typeof window.onload != 'function') {
		        window.onload = func;
	        } else {
		        window.onload = function(){
			        oldonload();
			        func();
		        }
	        }
        }

        function moveElement(elementID,final_x,final_y,interval) {
          if (!document.getElementById) return false;
          if (!document.getElementById(elementID)) return false;
          var elem = document.getElementById(elementID);
          if (elem.movement) {
            clearTimeout(elem.movement);
          }
          if (!elem.style.left) {
            elem.style.left = "0px";
          }
          if (!elem.style.top) {
            elem.style.top = "0px";
          }
          var xpos = parseInt(elem.style.left);
          var ypos = parseInt(elem.style.top);
          if (xpos == final_x && ypos == final_y) {
		        return true;
          }
          if (xpos < final_x) {
            var dist = Math.ceil((final_x - xpos)/10);
            xpos = xpos + dist;
          }
          if (xpos > final_x) {
            var dist = Math.ceil((xpos - final_x)/10);
            xpos = xpos - dist;
          }
          if (ypos < final_y) {
            var dist = Math.ceil((final_y - ypos)/10);
            ypos = ypos + dist;
          }
          if (ypos > final_y) {
            var dist = Math.ceil((ypos - final_y)/10);
            ypos = ypos - dist;
          }
          elem.style.left = xpos + "px";
          elem.style.top = ypos + "px";
          var repeat = "moveElement('"+elementID+"',"+final_x+","+final_y+","+interval+")";
          elem.movement = setTimeout(repeat,interval);
        }

        function classNormal(iFocusBtnID,iFocusTxID){
	        var iFocusBtns= document.getElementById(iFocusBtnID).getElementsByTagName('li');
	        var iFocusTxs = document.getElementById(iFocusTxID).getElementsByTagName('li');
	        for(var i=0; i<iFocusBtns.length; i++) {
		        iFocusBtns[i].className='normal';
		        iFocusTxs[i].className='normal';
	        }
        }

        function classCurrent(iFocusBtnID,iFocusTxID,n){
	        var iFocusBtns= document.getElementById(iFocusBtnID).getElementsByTagName('li');
	        var iFocusTxs = document.getElementById(iFocusTxID).getElementsByTagName('li');
	        iFocusBtns[n].className='current';
	        iFocusTxs[n].className='current';
        }

        function iFocusChange() {
	        if(!document.getElementById('ifocus')) return false;
	        document.getElementById('ifocus').onmouseover = function(){atuokey = true};
	        document.getElementById('ifocus').onmouseout = function(){atuokey = false};
	        var iFocusBtns = document.getElementById('ifocus_btn').getElementsByTagName('li');
	        var listLength = iFocusBtns.length;
	        iFocusBtns[0].onmouseover = function() {
		        moveElement('ifocus_piclist',0,0,5);
		        classNormal('ifocus_btn','ifocus_tx');
		        classCurrent('ifocus_btn','ifocus_tx',0);
	        }
	        if (listLength>=2) {
		        iFocusBtns[1].onmouseover = function() {
			        //moveElement('ifocus_piclist',0,-300,5);
			        moveElement('ifocus_piclist',-950,0,5);
			        classNormal('ifocus_btn','ifocus_tx');
			        classCurrent('ifocus_btn','ifocus_tx',1);
		        }
	        }
	        if (listLength>=3) {
		        iFocusBtns[2].onmouseover = function() {
			        //moveElement('ifocus_piclist',0,-600,5);
			        moveElement('ifocus_piclist',-1900,0,5);
			        classNormal('ifocus_btn','ifocus_tx');
			        classCurrent('ifocus_btn','ifocus_tx',2);
		        }
	        }
	        if (listLength>=4) {
		        iFocusBtns[3].onmouseover = function() {
			        moveElement('ifocus_piclist',-2850,0,5);
			        classNormal('ifocus_btn','ifocus_tx');
			        classCurrent('ifocus_btn','ifocus_tx',3);
		        }
	        }
	        if (listLength>=5) {
		        iFocusBtns[4].onmouseover = function() {
			        moveElement('ifocus_piclist',-3800,0,5);
			        classNormal('ifocus_btn','ifocus_tx');
			        classCurrent('ifocus_btn','ifocus_tx',4);
		        }
	        }
        }

        setInterval('autoiFocus()',5000);
        var atuokey = false;
        function autoiFocus() {
	        if(!document.getElementById('ifocus')) return false;
	        if(atuokey) return false;
	        var focusBtnList = document.getElementById('ifocus_btn').getElementsByTagName('li');
	        var listLength = focusBtnList.length;
	        for(var i=0; i<listLength; i++) {
		        if (focusBtnList[i].className == 'current') var currentNum = i;
	        }
	        if (currentNum==0&&listLength!=1 ){
		        //moveElement('ifocus_piclist',0,-300,5);
		        moveElement('ifocus_piclist',-950,0,5);
		        classNormal('ifocus_btn','ifocus_tx');
		        classCurrent('ifocus_btn','ifocus_tx',1);
	        }
	        if (currentNum==1&&listLength!=2 ){
		        //moveElement('ifocus_piclist',0,-600,5);
		        moveElement('ifocus_piclist',-1900,0,5);
		        classNormal('ifocus_btn','ifocus_tx');
		        classCurrent('ifocus_btn','ifocus_tx',2);
	        }
	        if (currentNum==2&&listLength!=3 ){
		        //moveElement('ifocus_piclist',0,-900,5);
		        moveElement('ifocus_piclist',-2850,0,5);
		        classNormal('ifocus_btn','ifocus_tx');
		        classCurrent('ifocus_btn','ifocus_tx',3);
	        }
	        if (currentNum==3&&listLength!=4 ){
		        moveElement('ifocus_piclist',-3800,0,5);
		        classNormal('ifocus_btn','ifocus_tx');
		        classCurrent('ifocus_btn','ifocus_tx',4);
	        }
	        if (currentNum==4 ){
		        moveElement('ifocus_piclist',0,0,5);
		        classNormal('ifocus_btn','ifocus_tx');
		        classCurrent('ifocus_btn','ifocus_tx',0);
	        }
	        if (currentNum==1&&listLength==2 ){
		        moveElement('ifocus_piclist',0,0,5);
		        classNormal('ifocus_btn','ifocus_tx');
		        classCurrent('ifocus_btn','ifocus_tx',0);
	        }
	        if (currentNum==2&&listLength==3 ){
		        moveElement('ifocus_piclist',0,0,5);
		        classNormal('ifocus_btn','ifocus_tx');
		        classCurrent('ifocus_btn','ifocus_tx',0);
	        }
	        if (currentNum==3&&listLength==4 ){
		        moveElement('ifocus_piclist',0,0,5);
		        classNormal('ifocus_btn','ifocus_tx');
		        classCurrent('ifocus_btn','ifocus_tx',0);
	        }
        }
        addLoadEvent(iFocusChange);
    </script>
    
    <!-- bb登录样式-->
<style type="text/css">
.submit-btn{background:url(images/login_submit.jpg) 0 0 no-repeat; border:none; background-color:transparent; width:48px; height:24px;cursor:hand;margin-left:10px;}
.error{color:#F00; display:none;}
.nameText{width:30px; margin-right:5px;}
.inputBox{height:20px;width:80px;background-color:#ffffff;border-width:1px;border:1px solid #a7a6aa;font-size:14px;font-family:Arial Narrow;font-weight:bolder;}
</style>
   
    

    <style type="text/css">
        #ifocus { width:950px; height:413px; overflow:hidden;}
        #ifocus_pic {float:left; width:950px; height:300px; position:relative; overflow:hidden;}/*display:inline;*/
        #ifocus_piclist {float:left;  position:absolute; }
        #ifocus_piclist li { float:left; width:950px; height:300px; overflow:hidden; }
        #ifocus_piclist img {float:left; width:950px; height:300px; }
        ul, li { list-style:none; }
        /*#ifocus_opdiv { z-index:1; position:absolute; width:950px; height:30px; margin-top:270px; background:#000; opacity:0.5; -moz-opacity:0.5; filter:alpha(opacity=50); }*/
        #ifocus_tx { width:950px; height:30px; z-index:2; position:absolute; margin-top:270px; color:#FFF; text-align:center; line-height:30px;}
        #ifocus_tx .normal { display:none;}
        #ifocus_btn { width:940px; height:113px; float:left; overflow:hidden;}
        #ifocus_btn li { width:172px; height:110px; float:left; background:url(images/Qh_05.jpg) no-repeat; margin:0 8px!important; margin:0 7px; cursor:pointer; opacity:0.5; -moz-opacity:0.5; filter:alpha(opacity=50); overflow:hidden;}/*display:inline;*/
        #ifocus_btn img { width:162px; height:77px; padding:18px 5px 8px;}
        #ifocus_btn .current { background: url(images/Qh_04.jpg) no-repeat; opacity:1; -moz-opacity:1; filter:alpha(opacity=100);}
    </style>
    
    
   <script type="text/javascript">
document.cookie = "cookies_enabled=yes;expires=Thu, 01-Jan-1970 00:00:01 GMT";

function validate_form(form){
      if ( form.user_id.value == "" || form.password.value == "" ){
        alert( "输入用户名和密码。" );
		form.user_id.focus();
        return false;
      }
	  var passwd_enc = hex_md5(form.password.value);
      var encoded_pw_unicode = calcMD5(form.password.value);
      var final_to_encode = passwd_enc + form.one_time_token.value;
      form.encoded_pw.value = hex_md5(final_to_encode);
      final_to_encode = encoded_pw_unicode + form.one_time_token.value;
      form.encoded_pw_unicode.value = calcMD5(final_to_encode);
      form.password.value = "";
      return true;
}

function getToken(url){
	var error=$('#bbError');
	var bbToken=$('#bbToken');
	var bbSubmit=$('#bbSubmit');
	var token='';
	
	$.getJSON(url+"?callback=?", function(data){
		if(data!=null){
			data=data[0];
			token=data.token;
			if(token!=''){
				bbToken.val(token);
				return;
			}
		}
		error.show();
		bbSubmit.hide();
	});
}
</script>
    

    <script type="text/javascript">
        function Search()
        {
            keyword=document.getElementById("txtInputSearch").value;
            if(keyword=="")
            {
                alert("请输入搜索内容！");
                return false;
            } 
                window.open("znSearch.aspx?txtZnSearch=" + keyword);
            
        } 
    </script>
    


</head>
<body><div class="top">
            <div class="top2">
                <div class="M fl">
                    <div style="vertical-align:middle; float:left;">欢迎访问南京师范大学信息化教学网</div><div style="vertical-align:middle; float:left; margin-top:7px; margin-left:10px;"><iframe width="136" height="24" frameborder="0" allowtransparency="true" marginwidth="0" marginheight="0" scrolling="no" border="0" src="http://widget.weibo.com/relationship/followbutton.php?language=zh_cn&width=136&height=24&uid=2434271512&style=2&btn=red&dpc=1"></iframe></div></div>
                <div class="M fr"><a href='LinkUs.aspx?NewsType=3885-20338855' target="_blank">使用帮助</a> | <a href="WebSiteMap.aspx" target="_blank">网站地图</a> | 
                    <a href='LinkUs.aspx?NewsType=3885-20238855' target="_blank">关于本站</a> | <a style="cursor: hand"
                        onclick="window.external.AddFavorite(location.href,document.title);">加入收藏</a>
                    </div>
            </div>
        </div>
        <div class="banner">
            <div class="banner2">
                <div class="dl" style="margin: 116px 0 0 0px;">                                  
                  <form id="loginForm" onsubmit='return validate_form(this)'  method="get"  action="http://jxw.njnu.edu.cn/webapps/login/"  name="login" target="_parent">
                    <span class="nameText" id="userNameText">&nbsp;&nbsp;&nbsp;&nbsp;用户名:</span>
                    <input id="user_id" name="user_id" class="inputBox" type="text" />
                    <span class="nameText" id="passwordText">密&nbsp;码:</span>
                    <input id="password" name="password" class="inputBox" type="password" />
                    <span class="error" id="bbError">请求服务器出错...</span>
                    <input type="submit" id="bbSubmit" value="" class="submit-btn" />
                    <input value="" name="new_loc" type="hidden">
                    <input value="" name="auth_type" type="hidden">
                    <input id="bbToken" value="" name="one_time_token" type="hidden" />
                    <input value="" name="remote-user" type="hidden">
                    <input value="login" name="action" type="hidden">
                    <input value="" name="encoded_pw" type="hidden">
                    <input value="" name="encoded_pw_unicode" type="hidden">
                    <script type="text/javascript">
                            getToken('http://jxw.njnu.edu.cn/webapps/login/zf_bb_token.jsp');
                    </script>
                   </form>
                  
                </div>
            </div>
        </div>
        <!--导航菜单 star-->
        <form name="form1" method="post" action="index.aspx" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTE4NTk0ODI1Ng9kFgJmD2QWKGYPFgIeC18hSXRlbUNvdW50AhIWJGYPZBYCZg8VASI8aW1nIHNyYz0nTmV3c0ltYWdlcy8yNDA4OTIuanBnJy8+ZAIBD2QWAmYPFQEiPGltZyBzcmM9J05ld3NJbWFnZXMvOTI2MzExLmpwZycvPmQCAg9kFgJmDxUBIjxpbWcgc3JjPSdOZXdzSW1hZ2VzLzcwNTY3OS5qcGcnLz5kAgMPZBYCZg8VASI8aW1nIHNyYz0nTmV3c0ltYWdlcy8zMjI2MzkuanBnJy8+ZAIED2QWAmYPFQFfPGEgaHJlZj0naHR0cDovL2pzdy5uam51LmVkdS5jbi9XRC5hc3B4JyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J05ld3NJbWFnZXMvMzM5ODg2LmpwZycvPjwvYT5kAgUPZBYCZg8VAVs8YSBocmVmPSdodHRwOi8vbWV0Yy5uam51LmVkdS5jbi9ieCcgdGFyZ2V0PSdfYmxhbmsnPjxpbWcgc3JjPSdOZXdzSW1hZ2VzLzUzODE2MS5qcGcnLz48L2E+ZAIGD2QWAmYPFQFZPGEgaHJlZj0naHR0cDovL3dlaWtlLmVuZXRlZHUuY29tJyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J05ld3NJbWFnZXMvMzI5MTE5LmpwZycvPjwvYT5kAgcPZBYCZg8VASI8aW1nIHNyYz0nTmV3c0ltYWdlcy80NDcyNDcuanBnJy8+ZAIID2QWAmYPFQFtPGEgaHJlZj0naHR0cDovL3d3dy5pY291cnNlcy5lZHUuY24vZGV0YWlscy8xMDMxOVYwMDInIHRhcmdldD0nX2JsYW5rJz48aW1nIHNyYz0nTmV3c0ltYWdlcy8xMTQ3NTAuanBnJy8+PC9hPmQCCQ9kFgJmDxUBbTxhIGhyZWY9J2h0dHA6Ly93d3cuaWNvdXJzZXMuZWR1LmNuL2RldGFpbHMvMTAzMTlWMDAxJyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J05ld3NJbWFnZXMvOTM0NTQ4LmpwZycvPjwvYT5kAgoPZBYCZg8VASI8aW1nIHNyYz0nTmV3c0ltYWdlcy80NzA5NTAuanBnJy8+ZAILD2QWAmYPFQGpATxhIGhyZWY9J2h0dHA6Ly9qc3cubmpudS5lZHUuY24vU2hvd1dELmFzcHg/TmV3c1R5cGU9NzA2NjI0NzA2NzMmTmV3c05vPTcwNjYxMzgxNzA2NzMmdGV4dDM9ODAzOOaVmeWtpuWKqOaAgTgwMzkxJyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J05ld3NJbWFnZXMvMzY2ODY0LmpwZycvPjwvYT5kAgwPZBYCZg8VAakBPGEgaHJlZj0naHR0cDovL2pzdy5uam51LmVkdS5jbi9TaG93V0QuYXNweD9OZXdzVHlwZT0yNTYxMjQyNTYxNyZOZXdzTm89MjU2MTEzNDkyNTYxNyZ0ZXh0Mz0yMDYw5pWZ5a2m5Yqo5oCBMjA2MDknIHRhcmdldD0nX2JsYW5rJz48aW1nIHNyYz0nTmV3c0ltYWdlcy84NDI2MjAuanBnJy8+PC9hPmQCDQ9kFgJmDxUBqQE8YSBocmVmPSdodHRwOi8vanN3Lm5qbnUuZWR1LmNuL1Nob3dXRC5hc3B4P05ld3NUeXBlPTI1NjEyNDI1NjE3Jk5ld3NObz0yNTYxMTAwOTI1NjE3JnRleHQzPTIwNjDmlZnlrabliqjmgIEyMDYwOScgdGFyZ2V0PSdfYmxhbmsnPjxpbWcgc3JjPSdOZXdzSW1hZ2VzLzkwNDQ4My5qcGcnLz48L2E+ZAIOD2QWAmYPFQGpATxhIGhyZWY9J2h0dHA6Ly9qc3cubmpudS5lZHUuY24vU2hvd1dELmFzcHg/TmV3c1R5cGU9MjU2MTI0MjU2MTcmTmV3c05vPTI1NjExMzYzMjU2MTcmdGV4dDM9MjA2MOaVmeWtpuWKqOaAgTIwNjA5JyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J05ld3NJbWFnZXMvMTIwNDM3LmpwZycvPjwvYT5kAg8PZBYCZg8VASI8aW1nIHNyYz0nTmV3c0ltYWdlcy8xMzgxNTguanBnJy8+ZAIQD2QWAmYPFQGmATxhIGhyZWY9J2h0dHA6Ly9qc3cubmpudS5lZHUuY24vU2hvd0pTWVpZZWouYXNweD9OZXdzVHlwZT0zODA2NDIzODA2MyZ0ZXh0SERZRz3ln7norq3kuJPpopgmVHlwZT0zODA2LTEwNzM4MDYzJyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J05ld3NJbWFnZXMvNDgwMTI3LmpwZycvPjwvYT5kAhEPZBYCZg8VASI8aW1nIHNyYz0nTmV3c0ltYWdlcy8yMzQxODAuanBnJy8+ZAIBDxYCHwACEWQCAg8WAh8AAhEWImYPZBYCZg8VAT48aW1nIHNyYz0nTmV3c0ltYWdlcy85MjYzMTEuanBnJyB3aWR0aD0nMTYycHgnIGhlaWdodD0nNzdweCcvPmQCAQ9kFgJmDxUBPjxpbWcgc3JjPSdOZXdzSW1hZ2VzLzcwNTY3OS5qcGcnIHdpZHRoPScxNjJweCcgaGVpZ2h0PSc3N3B4Jy8+ZAICD2QWAmYPFQE+PGltZyBzcmM9J05ld3NJbWFnZXMvMzIyNjM5LmpwZycgd2lkdGg9JzE2MnB4JyBoZWlnaHQ9Jzc3cHgnLz5kAgMPZBYCZg8VAXs8YSBocmVmPSdodHRwOi8vanN3Lm5qbnUuZWR1LmNuL1dELmFzcHgnIHRhcmdldD0nX2JsYW5rJz48aW1nIHNyYz0nTmV3c0ltYWdlcy8zMzk4ODYuanBnJyB3aWR0aD0nMTYycHgnIGhlaWdodD0nNzdweCcvPjwvYT5kAgQPZBYCZg8VAXc8YSBocmVmPSdodHRwOi8vbWV0Yy5uam51LmVkdS5jbi9ieCcgdGFyZ2V0PSdfYmxhbmsnPjxpbWcgc3JjPSdOZXdzSW1hZ2VzLzUzODE2MS5qcGcnIHdpZHRoPScxNjJweCcgaGVpZ2h0PSc3N3B4Jy8+PC9hPmQCBQ9kFgJmDxUBdTxhIGhyZWY9J2h0dHA6Ly93ZWlrZS5lbmV0ZWR1LmNvbScgdGFyZ2V0PSdfYmxhbmsnPjxpbWcgc3JjPSdOZXdzSW1hZ2VzLzMyOTExOS5qcGcnIHdpZHRoPScxNjJweCcgaGVpZ2h0PSc3N3B4Jy8+PC9hPmQCBg9kFgJmDxUBPjxpbWcgc3JjPSdOZXdzSW1hZ2VzLzQ0NzI0Ny5qcGcnIHdpZHRoPScxNjJweCcgaGVpZ2h0PSc3N3B4Jy8+ZAIHD2QWAmYPFQGJATxhIGhyZWY9J2h0dHA6Ly93d3cuaWNvdXJzZXMuZWR1LmNuL2RldGFpbHMvMTAzMTlWMDAyJyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J05ld3NJbWFnZXMvMTE0NzUwLmpwZycg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" />
</div>

<div>

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWAgLN1+qaAwLQutuTDKr4ue17DLIhxg8TIrK4OidSRPN5" />
</div>
        <div class="menu">
            <div class="T1">
                <table width="970" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="center">
                            <a href="#image1">
                                <img src="Images/menu_01.gif" height="41" /></a></td>
                        <td width="2">
                            <img src="Images/menu_xian.gif" width="2" height="41" /></td>
                        <td align="center">
                            <a href="#image2">
                                <img src="Images/menu_02.gif" width="97" height="41" /></a></td>
                        <td width="2">
                            <img src="Images/menu_xian.gif" width="2" height="41" /></td>
                        <td align="center">
                            <a href="#image3">
                                <img src="Images/menu_03.gif" width="97" height="41" /></a></td>
                        <td width="2">
                            <img src="Images/menu_xian.gif" width="2" height="41" /></td>
                        <td align="center">
                            <a href="#image4">
                                <img src="Images/menu_04.gif" width="96" height="41" /></a></td>
                    </tr>
                </table>
            </div>
        </div>
        <!--导航菜单 end-->
        <!--一键分享 star-->
        <div class="menu2">
            <div class="T2">
                <div class="M2 fl">
                    一键分享：</div>
                <div id="ckepop">
                    <div class="M2 fl tp">
                        <a class="jiathis_button_tqq">腾讯微博</a></div>
                    <div class="M2 fl tp">
                        <a class="jiathis_button_tsina">新浪微博</a></div>
                    <div class="M2 fl tp">
                        <a class="jiathis_button_renren">人人网</a></div>
                    <div class="M3 fl f5">
                        <a href="http://www.pengyou.com/" target="_blank">
                            <img src="Images/Fx_04.gif" /></a></div>
                    <div class="M2 fl f13">
                        <a href="http://www.pengyou.com/" target="_blank">朋友网</a></div>
                    <div class="M3 fl f5">
                        <a href="http://t.163.com/article/user/checkLogin.do" target="_blank">
                            <img src="Images/Fx_03.gif" /></a></div>
                    <div class="M2 fl f13">
                        <a href="http://t.163.com/article/user/checkLogin.do" target="_blank">网易微博</a></div>
                    <div class="M2 fl tp">
                        <a class="jiathis_button_kaixin001">开心网</a></div>
                    <div class="M2 fl tp">
                        <a class="jiathis_button_douban">豆瓣</a></div>
                    <div class="M2 fl tp">
                        <a class="jiathis_button_tsohu">搜狐微博</a></div>
                    <div class="M2 fl tp">
                        <a class="jiathis_button_qzone">QQ空间</a></div>
                </div>
            </div>

            <script type="text/javascript" src="http://v2.jiathis.com/code/jia.js" charset="utf-8"></script>

        </div>
        <!--一键分享 end-->
        <div class="maines1">
            <div class="maines">
                <div class="contant">
                    <div class="divline">
                    </div>
                    <div class="main">
                        <!--切换图片 star-->
                        <div class="contant">
                            <div id="ifocus">
                                <div id="ifocus_pic">
                                    <div id="ifocus_piclist">
                                        <ul style="width: 4750px;">
                                            
                                                    <li style="width: 950px;">
                                                        <img src='NewsImages/240892.jpg'/>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <img src='NewsImages/926311.jpg'/>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <img src='NewsImages/705679.jpg'/>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <img src='NewsImages/322639.jpg'/>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <a href='http://jsw.njnu.edu.cn/WD.aspx' target='_blank'><img src='NewsImages/339886.jpg'/></a>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <a href='http://metc.njnu.edu.cn/bx' target='_blank'><img src='NewsImages/538161.jpg'/></a>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <a href='http://weike.enetedu.com' target='_blank'><img src='NewsImages/329119.jpg'/></a>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <img src='NewsImages/447247.jpg'/>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <a href='http://www.icourses.edu.cn/details/10319V002' target='_blank'><img src='NewsImages/114750.jpg'/></a>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <a href='http://www.icourses.edu.cn/details/10319V001' target='_blank'><img src='NewsImages/934548.jpg'/></a>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <img src='NewsImages/470950.jpg'/>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <a href='http://jsw.njnu.edu.cn/ShowWD.aspx?NewsType=70662470673&NewsNo=7066138170673&text3=8038教学动态80391' target='_blank'><img src='NewsImages/366864.jpg'/></a>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <a href='http://jsw.njnu.edu.cn/ShowWD.aspx?NewsType=25612425617&NewsNo=2561134925617&text3=2060教学动态20609' target='_blank'><img src='NewsImages/842620.jpg'/></a>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <a href='http://jsw.njnu.edu.cn/ShowWD.aspx?NewsType=25612425617&NewsNo=2561100925617&text3=2060教学动态20609' target='_blank'><img src='NewsImages/904483.jpg'/></a>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <a href='http://jsw.njnu.edu.cn/ShowWD.aspx?NewsType=25612425617&NewsNo=2561136325617&text3=2060教学动态20609' target='_blank'><img src='NewsImages/120437.jpg'/></a>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <img src='NewsImages/138158.jpg'/>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <a href='http://jsw.njnu.edu.cn/ShowJSYZYej.aspx?NewsType=38064238063&textHDYG=培训专题&Type=3806-10738063' target='_blank'><img src='NewsImages/480127.jpg'/></a>
                                                        
                                                    </li>
                                                
                                                    <li style="width: 950px;">
                                                        <img src='NewsImages/234180.jpg'/>
                                                        
                                                    </li>
                                                
                                        </ul>
                                    </div>
                                    <div id="ifocus_opdiv">
                                    </div>
                                    <div id="ifocus_tx">
                                        <ul>
                                            <li class="current">
                                                
                                            </li>
                                            
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        
                                                    </li>
                                                
                                        </ul>
                                    </div>
                                </div>
                                <div class="Qh2">
                                    <div class="Z1 fl">
                                        <img src="images/Qh_01.gif" /></div>
                                    <div id="ifocus_btn">
                                        <ul>
                                            <li class="current"><a href="">
                                                <img src="NewsImages/240892.jpg" width="162" height="77" /></a></li>
                                            
                                                    <li class="normal">
                                                        <img src='NewsImages/926311.jpg' width='162px' height='77px'/>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <img src='NewsImages/705679.jpg' width='162px' height='77px'/>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <img src='NewsImages/322639.jpg' width='162px' height='77px'/>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <a href='http://jsw.njnu.edu.cn/WD.aspx' target='_blank'><img src='NewsImages/339886.jpg' width='162px' height='77px'/></a>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <a href='http://metc.njnu.edu.cn/bx' target='_blank'><img src='NewsImages/538161.jpg' width='162px' height='77px'/></a>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <a href='http://weike.enetedu.com' target='_blank'><img src='NewsImages/329119.jpg' width='162px' height='77px'/></a>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <img src='NewsImages/447247.jpg' width='162px' height='77px'/>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <a href='http://www.icourses.edu.cn/details/10319V002' target='_blank'><img src='NewsImages/114750.jpg' width='162px' height='77px'/></a>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <a href='http://www.icourses.edu.cn/details/10319V001' target='_blank'><img src='NewsImages/934548.jpg' width='162px' height='77px'/></a>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <img src='NewsImages/470950.jpg' width='162px' height='77px'/>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <a href='http://jsw.njnu.edu.cn/ShowWD.aspx?NewsType=70662470673&NewsNo=7066138170673&text3=8038教学动态80391' target='_blank'><img src='NewsImages/366864.jpg' width='162px' height='77px'/></a>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <a href='http://jsw.njnu.edu.cn/ShowWD.aspx?NewsType=25612425617&NewsNo=2561134925617&text3=2060教学动态20609' target='_blank'><img src='NewsImages/842620.jpg' width='162px' height='77px'/></a>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <a href='http://jsw.njnu.edu.cn/ShowWD.aspx?NewsType=25612425617&NewsNo=2561100925617&text3=2060教学动态20609' target='_blank'><img src='NewsImages/904483.jpg' width='162px' height='77px'/></a>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <a href='http://jsw.njnu.edu.cn/ShowWD.aspx?NewsType=25612425617&NewsNo=2561136325617&text3=2060教学动态20609' target='_blank'><img src='NewsImages/120437.jpg' width='162px' height='77px'/></a>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <img src='NewsImages/138158.jpg' width='162px' height='77px'/>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <a href='http://jsw.njnu.edu.cn/ShowJSYZYej.aspx?NewsType=38064238063&textHDYG=培训专题&Type=3806-10738063' target='_blank'><img src='NewsImages/480127.jpg' width='162px' height='77px'/></a>
                                                        
                                                    </li>
                                                
                                                    <li class="normal">
                                                        <img src='NewsImages/234180.jpg' width='162px' height='77px'/>
                                                        
                                                    </li>
                                                
                                        </ul>
                                    </div>
                                    <div class="Z1 fl">
                                        <img src="images/Qh_03.gif" /></div>
                                </div>
                            </div>
                            <!--切换图片 end-->
                        </div>
                        <div class="divline">
                        </div>
                        <!--信息与公告 star-->
                        <div class="Bt_00">
                            <a href="ShowNews.aspx?NewsType=38852438855&textHDYG=教学动态&Type=3885-10438855" target="_blank"><img id="image1" src="Images/Bt_01.jpg" /></a></div>
                        <div class="Bt_01">
                            <div class="zuo fl f20">
                                <!--教学动态 star-->
                                <div class="zuo">
                                    <div class="K1 fl f10">

                                        <script type='text/javascript'>
                                        var focus_width=290;var focus_height=212;var text_height=0;var swf_height = focus_height+text_height;var pics = '';var links = '';var texts = '';
                                        function ati(url, img, title){
                                            if(pics != ''){
                                                pics = '|' + pics;
                                                links = '|' +links;
                                                texts = '|' + texts;
                                            }
                                            pics = escape(img) + pics;
                                            links = escape(url) + links;
                                            texts = title + texts;
                                        }
                                        ati('ShowWD.aspx?NewsType=83992484003&text3=8399jxdt84003&NewsNo=%u0038%u0033%u0039%u0039%u0038%u0030%u0035%u0038%u0034%u0030%u0030%u0033', 'NewsImages/955641.jpg', '我校第十九期教学沙龙之“人才实践环节...');ati('ShowWD.aspx?NewsType=83992484003&text3=8399jxdt84003&NewsNo=%u0038%u0033%u0039%u0039%u0038%u0030%u0039%u0038%u0034%u0030%u0030%u0033', 'NewsImages/482192.jpg', '光明日报报道我校党委书记文晓明教授专...');ati('ShowWD.aspx?NewsType=83992484003&text3=8399jxdt84003&NewsNo=%u0038%u0033%u0039%u0039%u0037%u0035%u0031%u0038%u0034%u0030%u0030%u0033', 'NewsImages/896180.jpg', '南师大第32期教师现代教育技术考核顺利...');ati('ShowWD.aspx?NewsType=83992484003&text3=8399jxdt84003&NewsNo=%u0038%u0033%u0039%u0039%u0037%u0035%u0032%u0038%u0034%u0030%u0030%u0033', 'NewsImages/988969.jpg', '我校大学生数字媒体作品在全省竞赛中获...');ati('ShowWD.aspx?NewsType=83992484003&text3=8399jxdt84003&NewsNo=%u0038%u0033%u0039%u0039%u0038%u0031%u0033%u0038%u0034%u0030%u0030%u0033', 'NewsImages/837558.jpg', '国家级教学名师汤国安教授主持名师工作...');
                                        document.write('<embed src="Images/Slideviewer1.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#F7FBFE" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash"/>');
                                        </script>

                                    </div>
                                    <div class="K2 fl">
                                        <div class="D1">
                                            <div class="D1_1 fl">
                                                <img src="Images/Xx_01.gif" /></div>
                                            <div class="D1_1 fr">
                                                <a href="ShowNews.aspx?NewsType=38852438855&textHDYG=教学动态&Type=3885-10438855"
                                                    target="_blank">
                                                    <img src="Images/more.gif" /></a></div>
                                        </div>
                                        <div class="D2 xian2">
                                            <table id="dljxdt" cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse;">
	<tr>
		<td>
                                                    <div class="Nr1 m5">
                                                        <div class="Nr1z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=26292426296&NewsNo=2629181626296&text3=3885教学动态38855'
                                                                target="_blank">
                                                                商学院教学沙龙成功举办
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            12-24
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr1 m5">
                                                        <div class="Nr1z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=26292426296&NewsNo=2629181726296&text3=3885教学动态38855'
                                                                target="_blank">
                                                                博雅大讲堂之教苑讲坛——感悟美国教育专题讲...
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            12-19
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr1 m5">
                                                        <div class="Nr1z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=26292426296&NewsNo=2629181226296&text3=3885教学动态38855'
                                                                target="_blank">
                                                                我校精品资源共享课《中国现代当代文学史》成...
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            12-18
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr1 m5">
                                                        <div class="Nr1z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=26292426296&NewsNo=2629181026296&text3=3885教学动态38855'
                                                                target="_blank">
                                                                中科院院士、南京大学祝世宁教授来我校作报告
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            12-16
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr1 m5">
                                                        <div class="Nr1z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=26292426296&NewsNo=2629181126296&text3=3885教学动态38855'
                                                                target="_blank">
                                                                计算机科学学院教学沙龙成功举办
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            12-12
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr1 m5">
                                                        <div class="Nr1z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=26292426296&NewsNo=2629180526296&text3=3885教学动态38855'
                                                                target="_blank">
                                                                兰州大学杨文炯教授来我校开展学术讲座
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            12-10
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr1 m5">
                                                        <div class="Nr1z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=26292426296&NewsNo=2629180626296&text3=3885教学动态38855'
                                                                target="_blank">
                                                                新教师研习营之“解析本科教学规范”顺利举办
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            12-06
                                                        </div>
                                                    </div>
                                                </td>
	</tr>
</table>
                                        </div>
                                        <div class="D3">
                                            <img src="Images/Xx_04.gif" /></div>
                                    </div>
                                </div>
                                <!--教学动态 end-->
                                <div class="divline">
                                </div>
                                <div class="divline">
                                </div>
                                <!--政策文件 star-->
                                <div class="zuo">
                                    <div class="K3 fl f10">
                                        <div class="D1">
                                            <div class="D1_1 fl">
                                                <img src="Images/Xx_02.gif" /></div>
                                            <div class="D1_1 fr">
                                                <a href='ShowNews.aspx?NewsType=38852738855&textHDYG=政策文件&Type=3885-10438855'
                                                    target="_blank">
                                                    <img src="Images/more.gif" /></a></div>
                                        </div>
                                        <div class="R2 xian2">
                                            <table id="DataList14" cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse;">
	<tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422761429&NewsNo=6142151861429&text3=3885政策文件38855'
                                                                target="_blank">
                                                                数字校园示范校建设指南（试行）
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            12-31
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422761429&NewsNo=6142151961429&text3=3885政策文件38855'
                                                                target="_blank">
                                                                数字校园示范校建设参考指标
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            12-31
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422761429&NewsNo=6142146161429&text3=3885政策文件38855'
                                                                target="_blank">
                                                                胡锦涛十八大报告提出：努力办好人民...
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            11-10
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422761429&NewsNo=6142143261429&text3=3885政策文件38855'
                                                                target="_blank">
                                                                2012年本科高职高专精品资源共享课申...
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            10-22
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422761429&NewsNo=6142143361429&text3=3885政策文件38855'
                                                                target="_blank">
                                                                省教育厅关于申报2012年国家级精品资...
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            10-22
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422761429&NewsNo=6142142261429&text3=3885政策文件38855'
                                                                target="_blank">
                                                                教育部办公厅关于开展优秀网络课程及...
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            10-15
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422761429&NewsNo=6142133061429&text3=3885政策文件38855'
                                                                target="_blank">
                                                                教育部 财政部关于印发高等学校创新能...
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            05-10
                                                        </div>
                                                    </div>
                                                </td>
	</tr>
</table>
                                        </div>
                                        <div class="R3">
                                            <img src="Images/Xx_05.gif" /></div>
                                    </div>
                                    <div class="K3 fl">
                                        <div class="D1">
                                            <div class="D1_1 fl">
                                                <img src="Images/Xx_03.gif" /></div>
                                            <div class="D1_1 fr">
                                                <a href='ShowNews.aspx?NewsType=38852838855&textHDYG=教育信息化&Type=3885-10438855'
                                                    target="_blank">
                                                    <img src="Images/more.gif" /></a></div>
                                        </div>
                                        <div class="R2 xian2">
                                            <table id="DataList15" cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse;">
	<tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422861429&NewsNo=6142170061429&text3=3885教育信息化38855'
                                                                target="_blank">
                                                                在线教育推开大学之门
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            06-03
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422861429&NewsNo=6142167661429&text3=3885教育信息化38855'
                                                                target="_blank">
                                                                北京电子科技职业学院来现代教育技术中...
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            05-10
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422861429&NewsNo=6142161061429&text3=3885教育信息化38855'
                                                                target="_blank">
                                                                中央电教馆王珠珠馆长一行来江苏视察指...
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            04-02
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422861429&NewsNo=6142160561429&text3=3885教育信息化38855'
                                                                target="_blank">
                                                                我国正在试点开展高层次科普专门人才培...
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            04-01
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422861429&NewsNo=6142157061429&text3=3885教育信息化38855'
                                                                target="_blank">
                                                                光明日报：百个校园网已实现IPv6全覆盖
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            03-13
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422861429&NewsNo=6142157161429&text3=3885教育信息化38855'
                                                                target="_blank">
                                                                网络公开课导航
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            03-13
                                                        </div>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr2 m5">
                                                        <div class="Nr2z fl">
                                                            &middot;<a href='ShowWD.aspx?NewsType=61422861429&NewsNo=6142157361429&text3=3885教育信息化38855'
                                                                target="_blank">
                                                                【代表委员访谈录】加快教育领域自主信...
                                                            </a>
                                                        </div>
                                                        <div class="Nry fl">
                                                            03-13
                                                        </div>
                                                    </div>
                                                </td>
	</tr>
</table>
                                        </div>
                                        <div class="R3">
                                            <img src="Images/Xx_05.gif" /></div>
                                    </div>
                                </div>
                                <!--政策文件 end-->
                                <div class="divline">
                                </div>
                                <div class="divline">
                                </div>
                                <!--广告展示 star-->
                                <div class="zuo">
                                    <img src="Images/pic_04.jpg" width="648" height="60" /></div>
                                <!--广告展示 end-->
                            </div>
                            <div class="you fl">
                                <!--活动预告 star-->
                                <div class="P1">
                                    <div class="P1_1 fl">
                                        <img src="Images/Xx_06.gif" /></div>
                                    <div class="P1_1 fr">
                                        <a href="ShowNews.aspx?NewsType=38852538855&textHDYG=活动预告&Type=3885-10438855"
                                            target="_blank">
                                            <img src="Images/more2.gif" /></a></div>
                                </div>
                                <div class="divline">
                                </div>
                                <div class="P2">  
                                     
                                            <div class="Nr3 m5">
                                                <span class="Corl1">[01-08]</span> <a
                                                    href='ShowWD.aspx?NewsType=26292526296&NewsNo=2629181526296&text3=3885活动预告38855'
                                                    target="_blank">网络教学平台咨询与答疑91<!--网络教学平台咨询与答疑91--></a></div>
                                        
                                            <div class="Nr3 m5">
                                                <span class="Corl1">[12-25]</span> <a
                                                    href='ShowWD.aspx?NewsType=26292526296&NewsNo=2629179426296&text3=3885活动预告38855'
                                                    target="_blank">网络教学平台咨询与答疑90<!--网络教学平台咨询与答疑90--></a></div>
                                        
                                            <div class="Nr3 m5">
                                                <span class="Corl1">[12-19]</span> <a
                                                    href='ShowWD.aspx?NewsType=26292526296&NewsNo=2629181426296&text3=3885活动预告38855'
                                                    target="_blank">讲座预告信息化环境下的教师发展...<!--讲座预告信息化环境下的教师发展...--></a></div>
                                        
                                            <div class="Nr3 m5">
                                                <span class="Corl1">[12-18]</span> <a
                                                    href='ShowWD.aspx?NewsType=26292526296&NewsNo=2629179326296&text3=3885活动预告38855'
                                                    target="_blank">网络教学平台咨询与答疑89<!--网络教学平台咨询与答疑89--></a></div>
                                        
                                            <div class="Nr3 m5">
                                                <span class="Corl1">[12-18]</span> <a
                                                    href='ShowWD.aspx?NewsType=26292526296&NewsNo=2629179626296&text3=3885活动预告38855'
                                                    target="_blank">博雅大讲堂预告——感悟美国教育<!--博雅大讲堂预告——感悟美国教育--></a></div>
                                        
                                            <div class="Nr3 m5">
                                                <span class="Corl1">[12-18]</span> <a
                                                    href='ShowWD.aspx?NewsType=26292526296&NewsNo=2629181311571&text3=3885活动预告38855'
                                                    target="_blank">第四十期教学沙龙预告：教学设计...<!--第四十期教学沙龙预告：教学设计...--></a></div>
                                        
                                            <div class="Nr3 m5">
                                                <span class="Corl1">[12-13]</span> <a
                                                    href='ShowWD.aspx?NewsType=11572511571&NewsNo=1157179511571&text3=3885活动预告38855'
                                                    target="_blank">“我与名师面对面”活动预告——...<!--“我与名师面对面”活动预告——...--></a></div>
                                        
                                 
                                </div>
                                <!--活动预告 end-->
                                <div class="divline">
                                </div>
                                <div class="divline">
                                </div>
                                <!--咨询答疑 star-->
                                <div class="P1">
                                    <div class="P1_1 fl">
                                        <img src="Images/Xx_07.gif" /></div>
                                    <div class="P1_1 fr">
                                        <a href="WD.aspx" target="_blank">
                                            <img src="Images/more3.gif" /></a></div>
                                </div>
                                <div class="P3">
                                    <div class="divline">
                                    </div>
                                    <div class="P5" id="marqueebo0">
                                        
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535781153581&IsShow=0"
                                                        target="_blank">
                                                        为啥有的精品课程不能看啊
                                                    </a>[01-06]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535781153581&IsShow=0"
                                                        target="_blank">
                                                        请登录到平台内再看
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535780853581&IsShow=0"
                                                        target="_blank">
                                                        毕博平台无法登录，输入学号和密码之后点击登录还...
                                                    </a>[12-30]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535780853581&IsShow=0"
                                                        target="_blank">
                                                        参见前面的回答
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535780753581&IsShow=0"
                                                        target="_blank">
                                                        提交不上去，显示出现错误，与管理员联系
                                                    </a>[12-27]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535780753581&IsShow=0"
                                                        target="_blank">
                                                        请联系管理员 83598126
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535780653581&IsShow=0"
                                                        target="_blank">
                                                        忘记密码怎么办
                                                    </a>[12-24]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535780653581&IsShow=0"
                                                        target="_blank">
                                                        参见前面的回答
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535780553581&IsShow=0"
                                                        target="_blank">
                                                        老师，题目全部做好，保存的时候竟然出问题了，现...
                                                    </a>[12-23]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535780553581&IsShow=0"
                                                        target="_blank">
                                                        请再试试或联系管理员

                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535780453581&IsShow=0"
                                                        target="_blank">
                                                        密码和账号都是正确的，但是登陆了好几次，都睡闪...
                                                    </a>[12-23]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535780453581&IsShow=0"
                                                        target="_blank">
                                                        参见前面的回答
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535780353581&IsShow=0"
                                                        target="_blank">
                                                        老师登录密码好像出问题了，在哪儿找回，谢谢
                                                    </a>[12-23]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535780353581&IsShow=0"
                                                        target="_blank">
                                                        参见前面的回答
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535780253581&IsShow=0"
                                                        target="_blank">
                                                        老师，登录密码忘记了，在哪儿找回
                                                    </a>[12-23]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535780253581&IsShow=0"
                                                        target="_blank">
                                                        参见前面的回答
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535780153581&IsShow=0"
                                                        target="_blank">
                                                        老师，我毕博做好后提交它自己闪退了，只来得及保...
                                                    </a>[12-23]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535780153581&IsShow=0"
                                                        target="_blank">
                                                        请联系管理员，83598126
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535779953581&IsShow=0"
                                                        target="_blank">
                                                        老师，我的毕博在保存答案时系统出错，让我联系管...
                                                    </a>[12-23]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535779953581&IsShow=0"
                                                        target="_blank">
                                                        参见前面的回答
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535779853581&IsShow=0"
                                                        target="_blank">
                                                        老师，毕博老打不开，我发誓我的密码是对的，我刚...
                                                    </a>[12-23]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535779853581&IsShow=0"
                                                        target="_blank">
                                                        请联系管理员
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535779753581&IsShow=0"
                                                        target="_blank">
                                                        老师，我毕博写完作业后点了保存，提示出错，之后...
                                                    </a>[12-23]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535779753581&IsShow=0"
                                                        target="_blank">
                                                        参见前面的回答
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535779653581&IsShow=0"
                                                        target="_blank">
                                                        老师，保存作业的时候系统说错误，然后怎么也登陆...
                                                    </a>[12-23]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535779653581&IsShow=0"
                                                        target="_blank">
                                                        请联系管理员，83598126
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535779453581&IsShow=0"
                                                        target="_blank">
                                                        登陆毕博时，输入学号和密码之后按“登陆”键，仍...
                                                    </a>[12-22]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535779453581&IsShow=0"
                                                        target="_blank">
                                                        参见前面的回答
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535779353581&IsShow=0"
                                                        target="_blank">
                                                        思修讨论版如何参加讨论
                                                    </a>[12-22]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535779353581&IsShow=0"
                                                        target="_blank">
                                                        请咨询任课老师，一般是登录后进入课程的讨论版
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535779253581&IsShow=0"
                                                        target="_blank">
                                                        老师您好，前两天我登毕博的时候还能登上去，只是...
                                                    </a>[12-21]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=535779253581&IsShow=0"
                                                        target="_blank">
                                                        可能密码错了，参见前面的回答
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=535778938855&IsShow=0"
                                                        target="_blank">
                                                        老师,登录密码忘记了怎么办
                                                    </a>[12-19]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=388578938855&IsShow=0"
                                                        target="_blank">
                                                        参见前面的处理
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=388578838855&IsShow=0"
                                                        target="_blank">
                                                        我校教师现代教育技术培训及考核的相关资料 在本网...
                                                    </a>[12-12]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=388578838855&IsShow=0"
                                                        target="_blank">
                                                        登录后见培训课程，请先联系现代教育技术中心
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=388578338855&IsShow=0"
                                                        target="_blank">
                                                        无法登陆 登陆以后回到初始页面
                                                    </a>[12-04]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=388578338855&IsShow=0"
                                                        target="_blank">
                                                        可能是密码错了，请参见前面的回答
                                                    </a>
                                                </div>
                                            
                                                <div class="Nr4 m5">
                                                    <a href="HD.aspx?QuestionNo=388577738855&IsShow=0"
                                                        target="_blank">
                                                        老师，请问毕博平台密码忘记了怎么办，后台可以修...
                                                    </a>[11-29]</div>
                                                <div class="Nr5 m5 xian">
                                                    <a href="HD.aspx?QuestionNo=388577738855&IsShow=0"
                                                        target="_blank">
                                                        参见前面的处理
                                                    </a>
                                                </div>
                                            
                                    </div>
                                    <div class="P4" style="padding-top: 5px;">
                                        <div class="P4_1 fl f10">
                                            <a href="TW.aspx" target="_blank" title="我要咨询">
                                                <img src="Images/Z_03.gif" /></a></div>
                                        <div class="P4_1 fl">
                                            <a href="WD.aspx" target="_blank" title="查看咨询">
                                                <img src="Images/Z_04.gif" /></a></div>
                                    </div>
                                    <div class="divline">
                                    </div>
                                </div>
                                <div class="you">
                                    <img src="Images/R_bg.gif" /></div>
                            </div>
                        </div>
                        <div class="Bt_02">
                        </div>
                        <!--信息与公告 end-->
                        <div class="divline">
                        </div>
                        <!--课程与教师 star-->
                        <div class="Bt_00">
                            <a href="SelKCYJS.aspx?NewsType=38852938855&textHDYG=教学名师&Type=3885-10538855" target="_blank" ><img id="image2" src="Images/Bt_02.jpg" /></a></div>
                        <div class="Bt_01">
                            <div class="zuo fl f20">
                                <!--6张课程图片 star-->
                                <div class="zuo">
                                    <div class="L1 fl f9">
                                        <a href="http://kc.njnu.edu.cn/gj.html" target="_blank" title="国家级精品课程">
                                            <img src="Images/Kc_01.gif" /></a></div>
                                    <div class="L1 fl f9">
                                        <a href="http://kc.njnu.edu.cn/sj.html" target="_blank" title="省级精品课程">
                                            <img src="Images/Kc_02.gif" /></a></div>
                                    <div class="L1 fl">
                                        <a href="http://kc.njnu.edu.cn/xj.html" target="_blank" title="校级精品课程">
                                            <img src="Images/Kc_03.gif" /></a></div>
                                </div>
                                <div class="divline">
                                </div>
                                <div class="zuo">
                                    <div class="L1 fl f9">
                                        <a href="http://kc.njnu.edu.cn/sy.html" target="_blank" title="双语示范课程">
                                            <img src="Images/Kc_04.gif" /></a></div>
                                    <div class="L1 fl f9">
                                        <a href="http://kc.njnu.edu.cn/yj.html" target="_blank" title="研究性教学示范课程">
                                            <img src="Images/Kc_05.gif" /></a></div>
                                    <div class="L1 fl">
                                        <a href="http://kc.njnu.edu.cn/by.html" target="_blank" title="博雅教育课程">
                                            <img src="Images/Kc_06.gif" /></a></div>
                                </div>
                                <!--6张课程图片 end-->
                                <div class="divline">
                                </div>
                                <!--30天访问统计图 star-->
                                <div class="zuo">
                                    <div class="D1">
                                        <div class="D1_1 fl">
                                            <img src="Images/Kc_07.gif" /></div>
                                        <div class="D1_1 fr">
                                            <img src="Images/Kc_09.gif" /></div>
                                    </div>
                                </div>
                                <div class="L2 xian2">
                                    <div class="divline">
                                    </div>
                                    <div class="Z2">
                                        <img src="NewsImages/125021.jpg" width="618px" height="195px" />
                                    </div>
                                    <div class="divline">
                                    </div>
                                    <div class="divline">
                                    </div>
                                    <div class="Y2">
                                        <div class="Y2_1 fl">
                                            <img src="Images/Tj_01.gif" /></div>
                                        <div class="Y2_1 fl">
                                            <a href="http://jxw.njnu.edu.cn/webapps/silkII/indexpage/zf_disciplinemain.jsp" target="_blank"
                                                title="院系课程">
                                                <img src="Images/Tj_02.gif" /></a></div>
                                        <div class="Y2_1 fl">
                                            <img src="Images/Tj_03.gif" /></div>
                                        <div class="Y2_1 fl">
                                            <a href="http://jxw.njnu.edu.cn/webapps/silkII/indexstatistic/zf_statisticmain.jsp"
                                                target="_blank" title="课程统计">
                                                <img src="Images/Tj_04.gif" /></a></div>
                                    </div>
                                </div>
                                <div class="zuo">
                                    <img src="Images/Kc_08.gif" /></div>
                                <!--30天访问统计图 end-->
                            </div>
                            <div class="you fl">
                                <!--教师论教 star-->
                                <div class="P1">
                                    <div class="P1_1 fl">
                                        <img src="Images/Kc_10.gif" /></div>
                                    <div class="P1_1 fr">
                                        <a href='SelKCYJS.aspx?NewsType=38852938855&textHDYG=教学名师&Type=3885-10538855'
                                            target="_blank">
                                            <img src="Images/more2.gif" /></a></div>
                                </div>
                                <div class="divline">
                                </div>
                                <div class="L3" id="marqueebox0">
                                    
                                    
                                            <div class="L31">
                                                <div class="Z3 fl f5">
                                                    <a href='SelKCYJS.aspx?NewsType=38852938855&textHDYG=教学名师&Type=3885-10538855'
                                                        target="_blank">
                                                        <img src="NewsImages/519146.jpg" width="95" height="85" />
                                                    </a>
                                                </div>
                                                <div class="Y3 fl">
                                                    <span class="Corl1 Zti"><a href='SelKCYJS.aspx?NewsType=38852938855&textHDYG=教学名师&Type=3885-10538855'
                                                        target="_blank">
                                                        朱晓进 国家教学名师
                                                    </a></span>
                                                    <br />
                                                    南京师范大学文学院院长，博士生导师
                                                </div>
                                            </div>
                                            <div class="divline">
                                            </div>
                                        
                                            <div class="L31">
                                                <div class="Z3 fl f5">
                                                    <a href='SelKCYJS.aspx?NewsType=38852938855&textHDYG=教学名师&Type=3885-10538855'
                                                        target="_blank">
                                                        <img src="NewsImages/577763.jpg" width="95" height="85" />
                                                    </a>
                                                </div>
                                                <div class="Y3 fl">
                                                    <span class="Corl1 Zti"><a href='SelKCYJS.aspx?NewsType=38852938855&textHDYG=教学名师&Type=7114-10571147'
                                                        target="_blank">
                                                        汤国安  国家教学名师
                                                    </a></span>
                                                    <br />
                                                    南京师范大学地科院教授，博士生导师
                                                </div>
                                            </div>
                                            <div class="divline">
                                            </div>
                                        
                                            <div class="L31">
                                                <div class="Z3 fl f5">
                                                    <a href='SelKCYJS.aspx?NewsType=71142971147&textHDYG=教学名师&Type=7114-10571147'
                                                        target="_blank">
                                                        <img src="NewsImages/856244.jpg" width="95" height="85" />
                                                    </a>
                                                </div>
                                                <div class="Y3 fl">
                                                    <span class="Corl1 Zti"><a href='SelKCYJS.aspx?NewsType=71142971147&textHDYG=教学名师&Type=7114-10571147'
                                                        target="_blank">
                                                        董志翘 国家教学名师
                                                    </a></span>
                                                    <br />
                                                    南京师范大学文学院教授，博士生导师
                                                </div>
                                            </div>
                                            <div class="divline">
                                            </div>
                                        
                                </div>

                                <script type="text/javascript">
                                                function startmarquee(lh,speed,delay,index){
                                                var t; 
                                                var p=false; 
                                                var o=document.getElementById("marqueebox"+index); 
                                                o.innerHTML+=o.innerHTML; 
                                                o.onmouseover=function(){p=true} 
                                                o.onmouseout=function(){p=false} 
                                                o.scrollTop = 0; 
                                                function start(){ 
                                                t=setInterval(scrolling,speed); 
                                                if(!p) o.scrollTop += 2; 
                                                } 
                                                function scrolling(){ 
                                                if(o.scrollTop%lh!=0){ 
                                                o.scrollTop += 2; 
                                                if(o.scrollTop>=o.scrollHeight/2) o.scrollTop = 0; 
                                                }else{ 
                                                clearInterval(t); 
                                                setTimeout(start,delay); 
                                                } 
                                                } 
                                                setTimeout(start,delay); 
                                                } 
                                                startmarquee(190,50,7000,0); 
                                                /**startmarquee(一次滚动高度,速度,停留时间,图层标记);**/ 
                                </script>

                            </div>
                            <div class="you fl">
                                <iframe src="http://jxw.njnu.edu.cn/webapps/silkII/indexstatistic/zf_homestatistic.jsp"
                                    width="268px" height="290px" style="padding: 0; margin: 0" frameborder="0" scrolling="no"
                                    marginwidth="0" marginheight="0"></iframe>
                            </div>
                        </div>
                        <div class="Bt_02">
                        </div>
                        <!--课程与教师 end-->
                        <div class="divline">
                        </div>
                        <!--视频公开课 star-->
                        <div class="Bt_00">
                            <a href="ShowKCYSPej.aspx?NewsType=71143771147&textHDYG=国外课程&Type=7114-10971147" target="_blank" ><img id="image3" src="images/Bt_03.jpg" /></a></div>
                        <div class="Bt_01">
                            <div class="zuo fl f20">
                                <div class="divline">
                                </div>
                                <!--国外课程 star-->
                                <div class="G2">
                                    <div class="G2_1 fl">
                                        <a href="ShowKCYSPej.aspx?NewsType=71143771147&textHDYG=国外课程&Type=7114-10971147"
                                            target="_blank">
                                            <img src="images/Sp_01.gif" /></a></div>
                                    <div class="G2_2 fl">
                                        
                                                <div class="G2_3 fl">
                                                    <div class="Z4">
                                                        <a href='kctj.aspx?NewsType=76143776155&NewsNo=7614120976155&text3=7114国外课程71147'
                                                            target="_blank">
                                                            <img src="NewsImages/649800.jpg" width="120" height="90" /></a></div>
                                                    <div class="Y4 Corl2 m5">
                                                        <a href='kctj.aspx?NewsType=76143776155&NewsNo=7614120976155&text3=7114国外课程71147'
                                                            target="_blank">
                                                            巴黎高等商学院 2.0时代营销沟通
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                                <div class="G2_3 fl">
                                                    <div class="Z4">
                                                        <a href='kctj.aspx?NewsType=76143776155&NewsNo=761497276155&text3=7114国外课程71147'
                                                            target="_blank">
                                                            <img src="NewsImages/749483.jpg" width="120" height="90" /></a></div>
                                                    <div class="Y4 Corl2 m5">
                                                        <a href='kctj.aspx?NewsType=76143776155&NewsNo=761497276155&text3=7114国外课程71147'
                                                            target="_blank">
                                                            加州大学伯克利分校 公共健康——数据统...
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                                <div class="G2_3 fl">
                                                    <div class="Z4">
                                                        <a href='kctj.aspx?NewsType=76143776155&NewsNo=7614121076155&text3=7114国外课程71147'
                                                            target="_blank">
                                                            <img src="NewsImages/967662.bmp" width="120" height="90" /></a></div>
                                                    <div class="Y4 Corl2 m5">
                                                        <a href='kctj.aspx?NewsType=76143776155&NewsNo=7614121076155&text3=7114国外课程71147'
                                                            target="_blank">
                                                            卡内基伦理与国际事务委员会 金融危机
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                                <div class="G2_3 fl">
                                                    <div class="Z4">
                                                        <a href='kctj.aspx?NewsType=76143776155&NewsNo=7614121376155&text3=7114国外课程71147'
                                                            target="_blank">
                                                            <img src="NewsImages/538248.jpg" width="120" height="90" /></a></div>
                                                    <div class="Y4 Corl2 m5">
                                                        <a href='kctj.aspx?NewsType=76143776155&NewsNo=7614121376155&text3=7114国外课程71147'
                                                            target="_blank">
                                                            哈佛大学 头脑战争
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                    </div>
                                    <div class="G2_1 fl">
                                        <a href="ShowKCYSPej.aspx?NewsType=71143771147&textHDYG=国外课程&Type=7114-10971147"
                                            target="_blank">
                                            <img src="images/Sp_05.gif" /></a></div>
                                </div>
                                <!--国外课程 end-->
                                <div class="divline">
                                </div>
                                <div class="divline">
                                </div>
                                <!--国内课程 star-->
                                <div class="G2">
                                    <div class="G2_1 fl">
                                        <a href="ShowKCYSPej.aspx?NewsType=71143871147&textHDYG=国内课程&Type=7114-10971147"
                                            target="_blank">
                                            <img src="images/Sp_02.gif" /></a></div>
                                    <div class="G2_2 fl">
                                        
                                                <div class="G2_3 fl">
                                                    <div class="Z4">
                                                        <a href='kctj.aspx?NewsType=61423861429&NewsNo=6142126261429&text3=7114国内课程71147'
                                                            target="_blank">
                                                            <img src="NewsImages/324179.jpg" width="120" height="90" /></a></div>
                                                    <div class="Y4 Corl2 m5">
                                                        <a href='kctj.aspx?NewsType=61423893721&NewsNo=9371126293721&text3=7114国内课程71147'
                                                            target="_blank">
                                                            南开大学 数学文化
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                                <div class="G2_3 fl">
                                                    <div class="Z4">
                                                        <a href='kctj.aspx?NewsType=93713893721&NewsNo=9371129093721&text3=7114国内课程71147'
                                                            target="_blank">
                                                            <img src="NewsImages/604453.jpg" width="120" height="90" /></a></div>
                                                    <div class="Y4 Corl2 m5">
                                                        <a href='kctj.aspx?NewsType=93713893721&NewsNo=9371129093721&text3=7114国内课程71147'
                                                            target="_blank">
                                                            中南大学 人体解剖学
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                                <div class="G2_3 fl">
                                                    <div class="Z4">
                                                        <a href='kctj.aspx?NewsType=93713893721&NewsNo=9371129293721&text3=7114国内课程71147'
                                                            target="_blank">
                                                            <img src="NewsImages/475088.jpg" width="120" height="90" /></a></div>
                                                    <div class="Y4 Corl2 m5">
                                                        <a href='kctj.aspx?NewsType=93713893721&NewsNo=9371129293721&text3=7114国内课程71147'
                                                            target="_blank">
                                                            武汉大学 中国古代思想智慧
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                                <div class="G2_3 fl">
                                                    <div class="Z4">
                                                        <a href='kctj.aspx?NewsType=93713893721&NewsNo=9371129193721&text3=7114国内课程71147'
                                                            target="_blank">
                                                            <img src="NewsImages/647565.jpg" width="120" height="90" /></a></div>
                                                    <div class="Y4 Corl2 m5">
                                                        <a href='kctj.aspx?NewsType=93713893721&NewsNo=9371129193721&text3=7114国内课程71147'
                                                            target="_blank">
                                                            吉林大学 改变世界的机器——世界科技发展
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                    </div>
                                    <div class="G2_1 fl">
                                        <a href="ShowKCYSPej.aspx?NewsType=71143871147&textHDYG=国内课程&Type=7114-10971147"
                                            target="_blank">
                                            <img src="images/Sp_05.gif" /></a></div>
                                </div>
                                <!--国内课程 end-->
                                <div class="divline">
                                </div>
                                <div class="divline">
                                </div>
                                <!--校内课程 star-->
                                <div class="G2">
                                    <div class="G2_1 fl">
                                        <a href="ShowKCYSPej.aspx?NewsType=71143971147&textHDYG=校内课程&Type=7114-10971147"
                                            target="_blank">
                                            <img src="images/Sp_03.gif" /></a></div>
                                    <div class="G2_2 fl">
                                        
                                                <div class="G2_3 fl">
                                                    <div class="Z4">
                                                        <a href='ShowKCYSPsj.aspx?NewsType=93713993721&TypeNo=93716093721&text3=7114校内课程71147'
                                                            target="_blank">
                                                            <img src="NewsImages/454825.JPG" width="120" height="90" /></a></div>
                                                    <div class="Y4 Corl2 m5">
                                                        <a href='ShowKCYSPsj.aspx?NewsType=93713993721&TypeNo=93716093721&text3=7114校内课程71147'
                                                            target="_blank">
                                                            自然地理与人类环境
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                                <div class="G2_3 fl">
                                                    <div class="Z4">
                                                        <a href='ShowKCYSPsj.aspx?NewsType=93713993721&TypeNo=93715993721&text3=7114校内课程71147'
                                                            target="_blank">
                                                            <img src="NewsImages/156495.jpg" width="120" height="90" /></a></div>
                                                    <div class="Y4 Corl2 m5">
                                                        <a href='ShowKCYSPsj.aspx?NewsType=93713993721&TypeNo=93715993721&text3=7114校内课程71147'
                                                            target="_blank">
                                                            形势与政策
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                                <div class="G2_3 fl">
                                                    <div class="Z4">
                                                        <a href='ShowKCYSPsj.aspx?NewsType=93713993721&TypeNo=93715093721&text3=7114校内课程71147'
                                                            target="_blank">
                                                            <img src="NewsImages/447245.jpg" width="120" height="90" /></a></div>
                                                    <div class="Y4 Corl2 m5">
                                                        <a href='ShowKCYSPsj.aspx?NewsType=93713993721&TypeNo=93715093721&text3=7114校内课程71147'
                                                            target="_blank">
                                                            现代自然地理学
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                                <div class="G2_3 fl">
                                                    <div class="Z4">
                                                        <a href='ShowKCYSPsj.aspx?NewsType=93713993721&TypeNo=93714993721&text3=7114校内课程71147'
                                                            target="_blank">
                                                            <img src="NewsImages/405589.jpg" width="120" height="90" /></a></div>
                                                    <div class="Y4 Corl2 m5">
                                                        <a href='ShowKCYSPsj.aspx?NewsType=93713993721&TypeNo=93714993721&text3=7114校内课程71147'
                                                            target="_blank">
                                                            先秦诸子散文
                                                        </a>
                                                    </div>
                                                </div>
                                            
                                    </div>
                                    <div class="G2_1 fl">
                                        <a href="ShowKCYSPej.aspx?NewsType=71143971147&textHDYG=校内课程&Type=7114-10971147"
                                            target="_blank">
                                            <img src="images/Sp_05.gif" /></a></div>
                                </div>
                                <!--校内课程 end-->
                            </div>
                            <div class="you fl">
                                <!--课程推荐 star-->
                                <div class="P1">
                                    <div class="P1_1 fl">
                                        <img src="images/Sp_06.gif" /></div>
                                    <div class="P1_1 fr">
                                        <a href="ShowKCYSPej.aspx?NewsType=71144071147&textHDYG=课程推介&Type=7114-10971147"
                                            target="_blank">
                                            <img src="images/more2.gif" /></a></div>
                                </div>
                                <div class="G1">
                                    <div class="G1_1">
                                        <table id="DataList20" cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse;">
	<tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='KCTJ.aspx?NewsType=21284021289&NewsNo=2128129521289&text3=7114课程推介71147'
                                                        target="_blank">
                                                        山东大学 生态学与人类未来
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='KCTJ.aspx?NewsType=21284021289&NewsNo=2128130321289&text3=7114课程推介71147'
                                                        target="_blank">
                                                        华南师范大学 思想道德修养与法律基础
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='KCTJ.aspx?NewsType=21284021289&NewsNo=2128130721289&text3=7114课程推介71147'
                                                        target="_blank">
                                                        浙江大学 当代科技哲学
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='KCTJ.aspx?NewsType=21284021289&NewsNo=2128131021289&text3=7114课程推介71147'
                                                        target="_blank">
                                                        黑龙江大学 西方哲学
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='KCTJ.aspx?NewsType=21284021289&NewsNo=2128131321289&text3=7114课程推介71147'
                                                        target="_blank">
                                                        北京师范大学 世界古代史
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='KCTJ.aspx?NewsType=21284021289&NewsNo=2128131421289&text3=7114课程推介71147'
                                                        target="_blank">
                                                        西南政法大学 民法学
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='KCTJ.aspx?NewsType=21284021289&NewsNo=2128131521289&text3=7114课程推介71147'
                                                        target="_blank">
                                                        南京师范大学 民事诉讼法学
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='KCTJ.aspx?NewsType=21284021289&NewsNo=2128131621289&text3=7114课程推介71147'
                                                        target="_blank">
                                                        华东政法大学 司法鉴定概论
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='KCTJ.aspx?NewsType=21284021289&NewsNo=2128131721289&text3=7114课程推介71147'
                                                        target="_blank">
                                                        南京师范大学 儿童心理咨询与治疗
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='KCTJ.aspx?NewsType=21284021289&NewsNo=2128131821289&text3=7114课程推介71147'
                                                        target="_blank">
                                                        苏州大学 中文信息处理
                                                    </a>
                                                </div>
                                            </td>
	</tr>
</table>
                                    </div>
                                    <div class="divline">
                                    </div>
                                    <div class="G1_2">
                                        <img src="NewsImages/566901.jpg" width="230" height="156" /></div>
                                    <div class="divline">
                                    </div>
                                </div>
                                <div class="you">
                                    <img src="images/R_bg.gif" /></div>
                                <!--课程推荐 end-->
                            </div>
                        </div>
                        <div class="Bt_02">
                        </div>
                        <!--视频公开课 end-->
                        <div class="divline">
                        </div>
                        <!--技术与资源 star-->
                        <div class="Bt_00">
                            <a href="ShowJSYZYej.aspx?NewsType=71144271147&textHDYG=培训专题&Type=7114-10771147" target="_blank" ><img id="image4" src="Images/Bt_04.jpg" /></a></div>
                        <div class="Bt_01">
                            <div class="zuo fl f20">
                                <div class="zuo">
                                    <div class="U1 fl f10">
                                        <!--培训专题 star-->
                                        <div class="U1">
                                            <div class="D1">
                                                <div class="D1_1 fl">
                                                    <img src="Images/Js_01.gif" /></div>
                                                <div class="D1_1 fr">
                                                    <a href="ShowJSYZYej.aspx?NewsType=71144271147&textHDYG=培训专题&Type=7114-10771147"
                                                        target="_blank">
                                                        <img src="Images/more.gif" /></a></div>
                                            </div>
                                            <div class="z6 xian2">
                                                
                                                        <div class="U3 fl">
                                                            <div class="Z4">
                                                                <a href='JSYZYpxmt.aspx?NewsType=21284221289&NewsNo=2128171021289&text3=7114培训专题71147'
                                                                    target="_blank">
                                                                    <img src="NewsImages/521178.jpg" width="120" height="90" /></a></div>
                                                            <div class="Y4 Corl2 m5">
                                                                <a href='JSYZYpxmt.aspx?NewsType=21284221289&NewsNo=2128171021289&text3=7114培训专题71147'
                                                                    target="_blank">
                                                                    魔课（MOOC）
                                                                </a>
                                                            </div>
                                                        </div>
                                                    
                                                        <div class="U3 fl">
                                                            <div class="Z4">
                                                                <a href='JSYZYpxmt.aspx?NewsType=21284221289&NewsNo=2128170921289&text3=7114培训专题71147'
                                                                    target="_blank">
                                                                    <img src="NewsImages/126148.jpg" width="120" height="90" /></a></div>
                                                            <div class="Y4 Corl2 m5">
                                                                <a href='JSYZYpxmt.aspx?NewsType=21284221289&NewsNo=2128170921289&text3=7114培训专题71147'
                                                                    target="_blank">
                                                                    微信
                                                                </a>
                                                            </div>
                                                        </div>
                                                    
                                            </div>
                                            <div class="U1">
                                                <img src="Images/Js_05.gif" /></div>
                                        </div>
                                        <!--培训专题 end-->
                                        <div class="divline">
                                        </div>
                                        <!--媒体工具 star-->
                                        <div class="U1">
                                            <div class="D1">
                                                <div class="D1_1 fl">
                                                    <img src="Images/Js_02.gif" /></div>
                                                <div class="D1_1 fr">
                                                    <a href="ShowJSYZYej.aspx?NewsType=71144371147&textHDYG=媒体工具&Type=7114-10771147"
                                                        target="_blank">
                                                        <img src="Images/more.gif" /></a></div>
                                            </div>
                                            <div class="z6 xian2">
                                                
                                                        <div class="U3 fl">
                                                            <div class="Z4">
                                                                <a href='JSYZYpxmt.aspx?NewsType=53574353581&NewsNo=5357166453581&text3=7114媒体工具71147'
                                                                    target="_blank">
                                                                    <img src="NewsImages/267371.jpg" width="120" height="90" /></a></div>
                                                            <div class="Y4 Corl2 m5">
                                                                <a href='JSYZYpxmt.aspx?NewsType=53574353581&NewsNo=5357166453581&text3=7114媒体工具71147'
                                                                    target="_blank">
                                                                    有了 Pixel Press，非码农也能做游戏
                                                                </a>
                                                            </div>
                                                        </div>
                                                    
                                                        <div class="U3 fl">
                                                            <div class="Z4">
                                                                <a href='JSYZYpxmt.aspx?NewsType=53574353581&NewsNo=5357166553581&text3=7114媒体工具71147'
                                                                    target="_blank">
                                                                    <img src="NewsImages/614311.jpg" width="120" height="90" /></a></div>
                                                            <div class="Y4 Corl2 m5">
                                                                <a href='JSYZYpxmt.aspx?NewsType=53574353581&NewsNo=5357166553581&text3=7114媒体工具71147'
                                                                    target="_blank">
                                                                    Android开发者必知的开发资源
                                                                </a>
                                                            </div>
                                                        </div>
                                                    
                                            </div>
                                            <div class="U1">
                                                <img src="Images/Js_05.gif" /></div>
                                        </div>
                                        <!--媒体工具 end-->
                                    </div>
                                    <!--教学资源 star-->
                                    <div class="U2 fl">
                                        <div class="D1">
                                            <div class="D1_1 fl">
                                                <img src="Images/Js_03.gif" /></div>
                                            <div class="D1_1 fr">
                                                <a href="ShowJSYZYej.aspx?NewsType=71143271147&textHDYG=教学资源&Type=7114-10771147"
                                                    target="_blank">
                                                    <img src="Images/more.gif" /></a></div>
                                        </div>
                                        <div class="z5 xian2">
                                            <table id="DataList3" cellspacing="0" border="0" style="border-collapse:collapse;">
	<tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157172911571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            中国教育技术协会微信公共帐号开通
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157173011571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            [转载]与时俱进的教育技术培训
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157170711571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            远程教育平台 BigBlueButton
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157170811571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            教育性质的编程环境 RoboMind
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157169511571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            让毫无艺术细胞的你也学会涂鸦 麦思涂鸦...
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157168111571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            谷歌翻译每日提供翻译服务10亿次 用户达...
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157168311571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            手把手教你分辨谁在刷榜
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157167411571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            Firefox OS如何在移动市场站稳脚步
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157163411571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            “教育部运行成本最高”解读有误
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157161711571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            2013年3月至2013年6月北京毕博远程培训...
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157159711571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            魔方英语：在电影视频基础上提供含单词...
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157159811571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            Y Combinat demo day上的32家公司一览
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157156511571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            手机上使用FLASH文件的方式
                                                        </a>
                                                    </div>
                                                </td>
	</tr><tr>
		<td>
                                                    <div class="Nr7 m5">
                                                        <a href='ShowJSYZYDW.aspx?NewsType=11573211571&NewsNo=1157156611571&text3=7114教学资源71147'
                                                            target="_blank">
                                                            10 个最佳 HTML5 音频播放器推荐
                                                        </a>
                                                    </div>
                                                </td>
	</tr>
</table>
                                        </div>
                                        <div class="U2">
                                            <img src="Images/Js_06.gif" /></div>
                                        <!--教学资源 end-->
                                    </div>
                                </div>
                                <div class="divline">
                                </div>
                                <!--图片广告 star-->
                                <div class="zuo">
                                    <img src="Images/pic_10.jpg" /></div>
                                <!--图片广告 end-->
                            </div>
                            <div class="you fl">
                                <!--前沿技术 star-->
                                <div class="P1">
                                    <div class="P1_1 fl">
                                        <img src="Images/Js_04.gif" /></div>
                                    <div class="P1_1 fr">
                                        <a href="ShowJSYZYej.aspx?NewsType=71143371147&textHDYG=前沿技术&Type=7114-10771147"
                                            target="_blank">
                                            <img src="Images/more2.gif" /></a></div>
                                </div>
                                <div class="G1">
                                    <div class="G1_1">
                                        <table id="DataList5" cellspacing="0" border="0" style="border-collapse:collapse;">
	<tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='ShowJSYZYDW.aspx?NewsType=43853343863&NewsNo=4385173143863&text3=7114前沿技术71147'
                                                        target="_blank">
                                                        谷歌Chrome成第二大浏览器 仅次于微软
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='ShowJSYZYDW.aspx?NewsType=43853343863&NewsNo=4385173243863&text3=7114前沿技术71147'
                                                        target="_blank">
                                                        如日中天的 Android
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='ShowJSYZYDW.aspx?NewsType=43853343863&NewsNo=4385173343863&text3=7114前沿技术71147'
                                                        target="_blank">
                                                        投资哪些在线教育项目更靠谱？
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='ShowJSYZYDW.aspx?NewsType=43853343863&NewsNo=4385173443863&text3=7114前沿技术71147'
                                                        target="_blank">
                                                        “华为们”与“阿里们”，这两股力量将...
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='ShowJSYZYDW.aspx?NewsType=43853343863&NewsNo=4385172043863&text3=7114前沿技术71147'
                                                        target="_blank">
                                                        美研究显示记忆力衰退或可逆
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='ShowJSYZYDW.aspx?NewsType=43853343863&NewsNo=4385172143863&text3=7114前沿技术71147'
                                                        target="_blank">
                                                        比尔&#12539;盖茨：聪明人应该解决更重...
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='ShowJSYZYDW.aspx?NewsType=43853343863&NewsNo=4385171943863&text3=7114前沿技术71147'
                                                        target="_blank">
                                                        Windows 10：微软首款真正的云操作系统
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='ShowJSYZYDW.aspx?NewsType=43853343863&NewsNo=4385171143863&text3=7114前沿技术71147'
                                                        target="_blank">
                                                        美国棱镜计划每年耗资两千万美元 微软等...
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='ShowJSYZYDW.aspx?NewsType=43853343863&NewsNo=4385171243863&text3=7114前沿技术71147'
                                                        target="_blank">
                                                        英国餐馆用无人机上菜 汉堡飞到面前
                                                    </a>
                                                </div>
                                            </td>
	</tr><tr>
		<td>
                                                <div class="Nr6 m5 xian">
                                                    &middot;<a href='ShowJSYZYDW.aspx?NewsType=43853343863&NewsNo=4385171643863&text3=7114前沿技术71147'
                                                        target="_blank">
                                                        谷歌再推疯狂项目：用热气球提供无线网络
                                                    </a>
                                                </div>
                                            </td>
	</tr>
</table>
                                    </div>
                                    <div class="divline">
                                    </div>
                                    <div class="G1_2">
                                        <img src="NewsImages/516008.jpg" width="230" height="156" /></div>
                                    <div class="divline">
                                    </div>
                                </div>
                                <div class="you">
                                    <img src="Images/R_bg.gif" /></div>
                                <!--前沿技术 end-->
                            </div>
                        </div>
                        <div class="Bt_02">
                        </div>
                        <!--技术与资源 end-->
                        <div class="divline">
                        </div>
                        <div class="divline">
                        </div>
                        <div class="Ku_1">
                            <img src="Images/K-01.gif" /></div>
                        <div class="Ku_2">
                            <div class="divline">
                            </div>
                            <!--支持与服务 star-->
                            <div class="Pk">
                                <div class="T3">
                                    <div class="T3_1 fl">
                                        <img src="Images/K-04.gif" /></div>
                                    <div class="T3_2 fl">
                                    </div>
                                </div>
                                <div class="T4">
                                    
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn/TeachCenter/Index.aspx">
                                                        <img src="NewsImages/817730.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn/TeachCenter/Index.aspx">
                                                        教师教学发展中心
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn/bx">
                                                        <img src="NewsImages/489749.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn/bx">
                                                        多媒体教室报修
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://kc.njnu.edu.cn">
                                                        <img src="NewsImages/740808.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://kc.njnu.edu.cn">
                                                        精品课程中心
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn/Apply.aspx?code=yy">
                                                        <img src="NewsImages/662481.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn/Apply.aspx?code=yy">
                                                        教学服务申请
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://lab.njnu.edu.cn:8000">
                                                        <img src="NewsImages/952719.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://lab.njnu.edu.cn:8000">
                                                        教材建设网站
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://sjjx.njnu.edu.cn/nslunwen_new/">
                                                        <img src="NewsImages/115360.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://sjjx.njnu.edu.cn/nslunwen_new/">
                                                        毕业论文管理系统
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://cx.njnu.edu.cn/chuangxin/">
                                                        <img src="NewsImages/333145.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://cx.njnu.edu.cn/chuangxin/">
                                                        创新训练管理系统
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://lab.njnu.edu.cn">
                                                        <img src="NewsImages/186147.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://lab.njnu.edu.cn">
                                                        实验教学管理系统
                                                    </a>
                                                </div>
                                            </div>
                                        
                                </div>
                            </div>
                            <!--支持与服务 end-->
                            <div class="divline">
                            </div>
                            <!--现代教育技术中心 star-->
                            <div class="Pk">
                                <div class="T3">
                                    <div class="T3_1 fl">
                                        <img src="Images/K-05.gif" /></div>
                                    <div class="T3_2 fl">
                                    </div>
                                </div>
                                
                                <div class="T4">
                                    
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn/metc/index.aspx">
                                                        <img src="NewsImages/763285.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn/metc/index.aspx">
                                                        现代教育技术中心
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn">
                                                        <img src="NewsImages/784862.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn">
                                                        信息技术与<br>教学优化
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn/YJH/Index.aspx">
                                                        <img src="NewsImages/644475.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn/YJH/Index.aspx">
                                                        江苏省高校<br>教育技术研究会
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn/TrainCenter/Index.aspx">
                                                        <img src="NewsImages/167674.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://metc.njnu.edu.cn/TrainCenter/Index.aspx">
                                                        江苏省高校现代<br>教育技术培训中心
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://cc.njnu.edu.cn">
                                                        <img src="NewsImages/412669.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://cc.njnu.edu.cn">
                                                        江苏省高校多媒体教学资源网
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://cc.njnu.edu.cn:8080">
                                                        <img src="NewsImages/469348.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://cc.njnu.edu.cn:8080">
                                                        江苏省高校大学生数字媒体作品网
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://tt.njnu.edu.cn">
                                                        <img src="NewsImages/163853.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://tt.njnu.edu.cn">
                                                        江苏省教师<br>专业发展平台
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://jsw.njnu.edu.cn/Linkus.aspx?NewsType=6262-20462633">
                                                        <img src="NewsImages/472669.jpg" width="93" height="48" /></a></div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://jsw.njnu.edu.cn/Linkus.aspx?NewsType=6262-20462633">
                                                        信息化教学服务商
                                                    </a>
                                                </div>
                                            </div>
                                        
                                </div>
                            </div>
                            <!--现代教育技术中心 end-->
                            <div class="divline">
                            </div>
                            <!--友情链接 star-->
                            <div class="Pk">
                                <div class="T3">
                                    <div class="T3_1 fl">
                                        <img src="Images/K-06.gif" /></div>
                                    <div class="T3_2 fl">
                                    </div>
                                </div>
                                
                                <div class="T4">
                                    
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://www.ec.js.edu.cn">
                                                        <img src="NewsImages/403932.jpg" width="93" height="48" />
                                                    </a>
                                                </div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://www.ec.js.edu.cn">
                                                        江苏省教育厅
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://www.njnu.edu.cn">
                                                        <img src="NewsImages/888065.jpg" width="93" height="48" />
                                                    </a>
                                                </div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://www.njnu.edu.cn">
                                                        南京师范大学
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://www.jse.edu.cn">
                                                        <img src="NewsImages/458086.jpg" width="93" height="48" />
                                                    </a>
                                                </div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://www.jse.edu.cn">
                                                        江苏省高等教育<br>公共服务平台
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://www.nerc.edu.cn/FrontEnd/default.html">
                                                        <img src="NewsImages/990212.jpg" width="93" height="48" />
                                                    </a>
                                                </div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://www.nerc.edu.cn/FrontEnd/default.html">
                                                        国家数字化<br>学习资源中心
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://www.icourses.edu.cn">
                                                        <img src="NewsImages/203249.jpg" width="93" height="48" />
                                                    </a>
                                                </div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://www.icourses.edu.cn">
                                                        中国大学<br>视频公开课
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://www.jpkcnet.com">
                                                        <img src="NewsImages/880232.jpg" width="93" height="48" />
                                                    </a>
                                                </div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://www.jpkcnet.com">
                                                        全国高等学校<br>精品课程网
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://open.sina.com.cn">
                                                        <img src="NewsImages/523860.jpg" width="93" height="48" />
                                                    </a>
                                                </div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://open.sina.com.cn">
                                                        新浪公开课
                                                    </a>
                                                </div>
                                            </div>
                                        
                                            <div class="T4_1 fl">
                                                <div class="z7">
                                                    <a target="_blank" href="http://open.163.com">
                                                        <img src="NewsImages/239647.jpg" width="93" height="48" />
                                                    </a>
                                                </div>
                                                <div class="Y7 m5">
                                                    <a target="_blank" href="http://open.163.com">
                                                        网易公开课
                                                    </a>
                                                </div>
                                            </div>
                                        
                                </div>
                            </div>
                            <!--友情链接 end-->
                            <div class="divline">
                            </div>
                        </div>
                        <div class="Ku_1">
                            <img src="Images/K-03.gif" /></div>
                        <!--底部 star-->
                        <div class="divline">
                        </div>
                        <div class="divline">
                        </div>
                        <div class="bottom">
                            <div class="bottom_1 fl">
                                <img src="Images/bottom_01.gif" /></div>
                            <div class="bottom_2 fl">
                                <div class="divline">
                                </div>
                                <div class="T5">
                                    <div class="T5_1 fl f5">
                                        版权所有：南京师范大学&nbsp;&nbsp;&nbsp;&nbsp;技术支持：南师大现代教育技术中心&nbsp;&nbsp;&nbsp;Copyright&nbsp;<span style="font-family: Arial, Helvetica, sans-serif;">&copy;</span>&nbsp;2011-2012&nbsp;&nbsp;&nbsp;站内搜索：</div>
                                    <div class="T5_1 fl f5">
                                        <input name="txtInputSearch" type="text" id="txtInputSearch" /></div>
                                    <div class="T5_1 fl">
                                        <img src="Images/bottom_ss.gif" onclick="javascript:Search();" />&nbsp;<script src="http://s4.cnzz.com/stat.php?id=3858348&web_id=3858348&show=pic1"
                                            language="JavaScript"></script>
                                        
                                    </div>
                                </div>
                                <div class="T5">
                                    <div class="T5_1 fl f5">
                                        地址：南京市宁海路122号南京师范大学田家炳教育书院北楼&nbsp;&nbsp;&nbsp;&nbsp;电话：025-83598126&nbsp;&nbsp;&nbsp;&nbsp;邮编：210097&nbsp;&nbsp;&nbsp;&nbsp;总访问量：</div>
                                    <div class="T5_1 fl">
                                        [ 15400051 ]&nbsp;&nbsp;当日访问量：[ 7327 ]
                                        

                                    </div>
                                </div>
                            </div>
                            <div class="bottom_1 fl">
                                <img src="Images/bottom_02.gif" /></div>
                        </div>
                        <!--底部 star-->
                    </div>
                </div>
                
              

                <script type="text/javascript">
                    (function() {
                        var divWidth = window.screen.width/2-540; 
                        var $backToTopTxt = "", $backToTopEle = $('<div style="right:'+divWidth+'px" id="backToTop"><img src="Images/top.gif" alt="" /></div>').appendTo($("body"))

                            .text($backToTopTxt).attr("title", $backToTopTxt).click(function() { 
                                $("html, body").animate({ scrollTop: 0 }, 120); 
                        }), $backToTopFun = function() {

                            var st = $(document).scrollTop(), winh = $(window).height(); 
                            (st > 0)? $backToTopEle.show(): $backToTopEle.hide(); 
                            //IE6下的定位 
                            if (!window.XMLHttpRequest) { 
                                $backToTopEle.css("top", st + winh - 166); 
                            } 
                        }; 
                        $(window).bind("scroll", $backToTopFun); 
                        $(function() { $backToTopFun(); }); 
                    })();

                </script>

            </div>
        </div>
        

    </form>

<div id="ipv6_enabled_www_test_logo"></div>

<script language="JavaScript" type="text/javascript">

             var Ipv6_Js_Server = (("https:" == document.location.protocol) ? "https://" : "http://");

         document.write(unescape("%3Cscript src='" + Ipv6_Js_Server + "www.ipv6forum.com/ipv6_enabled/sa/SA.php?id=3831' type='text/javascript'%3E%3C/script%3E"));

</script>
</body>
</html>
