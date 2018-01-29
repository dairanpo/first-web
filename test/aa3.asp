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
