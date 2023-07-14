<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Webtoon manager home</title>
<style>
span{
	display: inline;
	background-color: lightgrey;
	border: 1px solid #d9d9d9;
	color: white;
	padding: 0em;
	font-size: 6.5px;
	color: #000000;
	position: relative;
	left: 730px;
	font-family:"한컴산뜻돋움";
}
span:hover{
	background-color: grey;
	color:white;
}
p.Webtoon{ 
	font-family : "impact";
	font-size: 30px;
	line-height: 1%;
	color: #595959;
}
p.manager{
	font-family: "leelawadee";
	font-size: 15px;
	line-height: 1%;
	color: #7f7f7f; 
}
div.head{
	height: 55px;
	width: 690px;
	border: 3px solid #d9d9d9;
	background: #ffffff;
	position: relative;
	top: -65px;
	left: -30px;
	margin: 0 auto;
}
input.head2{
	font-size: 16px;
	width:563px;
	padding: 5px;
	border: 0px;
	outline: none;
	float: left;
	position: absolute;
	top: 13px;
	font-family: "한컴산뜻돋움";
	margin: 0 auto;
}
button.head3{
	width: 55px;
	height: 62px;
	border: 0px;
	background: #d9d9d9;
	outline: none;
	float: right;
	color: #ffffff;
	position: absolute;
	top: -3px;
	right: -50px;
	margin: 0 auto;
}
button.head3:hover{
	color: grey;
}
a{text-decoration:none;}
a:visited{color:black;} 

#main{
	float:left; 
	width:600px;
	height:700px;
	border: 1px solid;
	position:relative;
	top: -51px; 
}
#infor{
	float:left;
	width:246px;
	height:700px;
	border: 1px solid;
	position: relative; 
	left: 10px; 
	top: -51px;
	margin: 0 auto;
}
div.v-line{
 	border-left: 1px solid #000;
 	height:700px; width:100px;       
 	left: 430px;
 	top:2px;
 	position: absolute; 
 	border-color: #cccccc;  
 	margin: 0 auto;
}
#Best1{
	position: relative;
	top: -45px;
	left: 450px;
	color:#ffc000;
}
#Best2{
	position: relative;
	top: -66px;
	left: 450px;
}
#profile{
	background-color:#f2f2f2;
	width:210px; height:300px; 
	position: relative;
	left: 17px;
	top: 20px;
}
#graph{
	border: 1px solid #000;
	width:210px; height:150px;
	position: relative;
	top:60px;
	left:17px;
}
#newWeb{
	background-color:#b3b3b3;
	border: none;
	width:210px; height:65px;
	position: relative;
	top:90px;
	left:17px;
	border-radius:25px;
	opacity: 0.6;
	transition: 0.3s;
}
#newWeb:hover{
	opacity: 1;
}
#modifyWeb{
	background-color:#b3b3b3;
	border: none;
	width:210px; height:65px;
	position: relative;
	top:100px;
	left:17px; 
	border-radius:25px;
	opacity: 0.6;
	transition: 0.3s;
}
#modifyWeb:hover{
	opacity: 1;
}
b{
	font-size:15pt;
	color:white;  
	font-family:"나눔고딕"; 
}
img.hell{
	width:150px; height:150px;
	position: absolute;
	top:100px; left:443px;
}
#bestTitle{
	font-family:"한컴산뜻돋움";
	font-size:26px; 
	font-weight: bold;  
	position: absolute;
	left: 470px;
	top: 250px;
}
#bestwriter{
	font-family:"한컴산뜻돋움";
	font-size:15px;
	position: absolute;
	left: 525px;
	top: 260px;
}
#comma{
	font-size:60px;
	font-family:"hy견고딕";
	position: absolute;
	top:158px;
}
#bestMent{
	position:absolute;
	width:150px;
	font-size:11pt;
	left:441px; 
	top: 320px;
	font-family:"나눔고딕";
}
button.gogo{
	position:relative;
	left:466px;
	top:410px;
	font-family:"나눔고딕";
	background-color:#b3b3b3;
	color:white;
	border: 1px solid white;
	width: 100px; height:50px;
	border-radius:25px;
	opacity: 0.6;
	transition: 0.3s;
	
}
button.gogo:hover{
 	opacity: 1
}
img.summer{
	position:absolute;
	width:160px; height:160px;
	top:55px;
	left:30px;
}
font.summertitle{
	position:absolute;
	top:220px; left:25px;
	font-family:"한컴산뜻돋움";
	font-size:13pt;
	font-weight:bold;
}
font.summerwriter{
	position:absolute;
	top:235px; left:135px;
	font-family:"한컴산뜻돋움";
	font-size:10pt;
}
font.summergenre{
	position:absolute;
	top:220px; left:120px;
	font-family:"한컴산뜻돋움";
	font-size:9pt;
	color: grey;
}
img.love{
	position:absolute;
	width:160px; height:160px;
	top:55px;
	left:240px;
}
font.lovetitle{
	position:absolute;
	top:220px; left:245px;
	font-family:"한컴산뜻돋움";
	font-size:13pt;
	font-weight:bold;
}
font.lovewriter{
	position:absolute;
	top:235px; left:345px;
	font-family:"한컴산뜻돋움";
	font-size:10pt;
}
font.lovegenre{
	position:absolute;
	top:220px; left:320px;
	font-family:"한컴산뜻돋움";
	font-size:9pt;
	color: grey;
}
img.school{
	position:absolute;
	width:160px; height:160px;
	top:255px;
	left:30px;
}
font.schooltitle{
	position:absolute;
	top:420px; left:15px;
	font-family:"한컴산뜻돋움";
	font-size:13pt;
	font-weight:bold;
}
font.schoolwriter{
	position:absolute;
	top:435px; left:150px;
	font-family:"한컴산뜻돋움";
	font-size:10pt;
}
font.schoolgenre{
	position:absolute;
	top:420px; left:138px;
	font-family:"한컴산뜻돋움";
	font-size:9pt;
	color: grey;
}
img.DP{
	position:absolute;
	width:160px; height:160px;
	left:240px;
	top:255px;
}
font.DPtitle{
	position:absolute;
	top:420px; left:255px;
	font-family:"한컴산뜻돋움";
	font-size:13pt;
	font-weight:bold;
}
font.DPwriter{
	position:absolute;
	top:435px; left:345px;
	font-family:"한컴산뜻돋움";
	font-size:10pt;
}
font.DPgenre{
	position:absolute;
	top:420px; left:347px;
	font-family:"한컴산뜻돋움";
	font-size:9pt;
	color: grey;
}
img.hellbound{
	position:absolute;
	width:160px; height:160px;
	left:30px;
	top: 455px;
}
font.hellboundtitle{
	position:absolute;
	top:620px; left:60px;
	font-family:"한컴산뜻돋움";
	font-size:13pt;
	font-weight:bold;
}
font.hellboundwriter{
	position:absolute;
	top:635px; left:120px;
	font-family:"한컴산뜻돋움";
	font-size:10pt;
}
font.hellboundgenre{
	position:absolute;
	top:620px; left:100px;
	font-family:"한컴산뜻돋움";
	font-size:9pt;
	color: grey;
}
img.sweethome{
	position:absolute;
	width:160px; height:160px;
	left:240px;
	top: 455px;
}
font.sweethometitle{
	position:absolute;
	top:620px; left:255px;
	font-family:"한컴산뜻돋움";
	font-size:13pt;
	font-weight:bold;
}
font.sweethomewriter{
	position:absolute;
	top:635px; left:345px;
	font-family:"한컴산뜻돋움";
	font-size:10pt;
}
font.sweethomegenre{
	position:absolute;
	top:620px; left:325px;
	font-family:"한컴산뜻돋움";
	font-size:9pt;
	color: grey;
}
font.page{
	position:absolute;
	top:670px; left:150px;
}
font.nextleft{
	position:absolute;
	font-size:25pt;
	top:630px;
	left:477px;
}
font.nextleft:hover{
	color:#ffc000;
}
font.nextright{
	position:absolute;
	font-size:25pt;
	top:630px;
	left:525px;
}
font.nextright:hover{
	color:#ffc000;
}
div.circle{
	position:absolute;
	top:30px; left:30px;  
    margin: 0 auto;
    width: 125px;
    height: 125px;
    border: 15px solid white;
    background-color:white;
    border-radius: 50%;
}
img.user{
	position:absolute;
	top:55px; left:57px;  
	width:100px;
	height:100px;
	opacity:0.6;
}
font.toon{
	font-family:"magneto";
	font-size:27pt;
	position:absolute;
	top:78px; left:33px;
	opacity:0.2;
}
span.profilebut{
	background-color: lightgrey;
	border: 1px solid #d9d9d9;
	color: white;
	font-size: 10pt;
	color: #000000;
	position: relative;
	left:20px;
	top:270px;
	font-family:"한컴산뜻돋움";
}
span.profilebut:hover{
	background-color: grey;
	color:white;
}
span.profilebut2{
	background-color: lightgrey;
	border: 1px solid #d9d9d9;
	color: white;
	font-size: 10pt;
	color: #000000;
	position: absolute;
	left:140px;
	top:273px;
	font-family:"한컴산뜻돋움";
}
span.profilebut2:hover{
	background-color: grey;
	color:white;
}
font.name{
	font-size:15pt;
	font-family:"나눔고딕";
	font-weight:bold;
	background-color: lightgrey; 
	position:absolute;
	top:220px;
	left:75px;
}
font.peo{
	font-size:9pt;
	font-family:"나눔고딕";
}
img.graph{
	width:180px;
	height:100px;
	position:absolute;
	top:25px;
	left:10px; 
}
#wrapper{
	max-width:1020px;
	margin:0 auto;
}
img.submit{
	width:40px;
	height:40px;
	position:absolute;
	top:555px;
	left:30px;
}
img.edit{
	width:30px;
	height:30px;
	position:absolute;
	top:635px;
	left:35px;
}
div.all{
	width: 1000px;
	height: 900px;
	margin: 0 auto;
}
</style>
</head>
<body>
<div class="all">
	<header>
		<span><a href="#">나의 웹툰</a></span>
		<span><a href="#">회원정보</a></span>
		<span><a href="#">로그아웃</a></span>
		<p class="Webtoon">WEBTOON</p>
		<p class="manager">&nbsp;m&nbsp;&nbsp;a&nbsp;&nbsp;n&nbsp;&nbsp;a&nbsp;&nbsp;g&nbsp;&nbsp;e&nbsp;&nbsp;r</p>
		<div class="head">
			<input class="head2" type="text" placeholder="     타이틀과 작가명으로 웹툰을 검색할 수 있습니다.">
			<button class="head3">검색</button>
		</div>
	</header>
	<div id="main">
		<h3>&nbsp;&nbsp;&nbsp;전체 웹툰</h3>
		<h3 id="Best1">BEST</h3><h3 id="Best2">웹툰</h3>
		<img class="hell" src="./지옥.png" alt="지옥">
		<font id="bestTitle">지옥</font> <font id="bestwriter">연상호</font>
		<div id="bestMent">
			<p style="background-color:#eff1f2">어느날 갑자기 인간들이 직면한 기적인지 저주인지 알 수 없는 초자연적 현상. 감당할 수 없는 현실을 감당하기 위해 사람들이 만들어 가는 지옥. 부산행 '연상호' 감독과 '송곳'의 최규석 작가가 만났다!</p>
		</div>
		<pre id="comma" style="color:#cccccc">	
	               “	

	
	                 ”</pre>
		<div class="v-line"></div>
		<button class="gogo">GO!</button>
		<font class="nextleft">&#9665;</font>
		<font class="nextright">&#9655;</font>
		<img class="summer" src="./그해우리는.png" alt="그해우리는">
			<font class="summertitle">그 해 우리는</font>
			<font class="summerwriter">한경찰</font>
			<font class="summergenre">스토리, 로맨스</font>
		<img class="love" src="./연애혁명.png" alt="연애혁명">
			<font class="lovetitle">연애혁명</font>
			<font class="lovewriter">232</font>
			<font class="lovegenre">스토리, 드라마</font>
		<img class="school" src="./지금우리학교는.png" alt="지금우리학교는">
			<font class="schooltitle">지금 우리 학교는</font>
			<font class="schoolwriter">주동근</font>
			<font class="schoolgenre">스토리, 스릴러</font>
		<img class="DP" src="./DP.png" alt="DP">
			<font class="DPtitle">D.P 개의날</font>
			<font class="DPwriter">김보통</font>
			<font class="DPgenre">드라마</font>
		<img class="hellbound" src="./지옥.png" alt="지옥">
			<font class="hellboundtitle">지옥</font>
			<font class="hellboundwriter">연상호</font>
			<font class="hellboundgenre">에피소드, 스릴러</font>
		<img class="sweethome" src="./스위트홈.png" alt="스위트홈">
			<font class="sweethometitle">스위트홈</font>
			<font class="sweethomewriter">김칸비</font>
			<font class="sweethomegenre">스토리, 스릴러</font>
		
		<font class="page">&#60;&nbsp;&nbsp;1&nbsp;&nbsp;2&nbsp;&nbsp;3&nbsp;&nbsp;4&nbsp;&nbsp;5&nbsp;&nbsp;&#62;</font>
	</div>



	<div id="infor">
		<div id="profile">
			<div class="circle"></div>
			<font class="toon">webtoon</font>
			<img class="user" src="./user.png" alt="user">
			<font class="name">나영 님</font>
			<span class="profilebut"><a href="#">나의 웹툰</a></span>
			<span class="profilebut"><a href="#">회원정보</a></span>
			<span class="profilebut2"><a href="#">로그아웃</a></span>
		</div>
		<div id="graph">
			<font class="peo"style="font-weight:bold;">&nbsp;&nbsp;나영</font>
			<font class="peo"> 님의 웹툰 방문자 수</font>
			<img class="graph" src="./graph.PNG" alt="graph">
		</div>
		<button id="newWeb"><a href="registerWebtoon.jsp"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;새 웹툰 등록</b></a></button>
		<img class="submit" src="./submit.png" alt="submit">
		<button id="modifyWeb"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;웹툰 수정하기</b></button> 
		<img class="edit" src="./edit.png" alt="edit">
	</div>
</div>
</body>
</html>