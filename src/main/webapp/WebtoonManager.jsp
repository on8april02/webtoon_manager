<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Bean.information" import="Bean.information2"%>
<jsp:useBean id="infor" class="Bean.information" scope="application"/>
<jsp:setProperty name="infor" property="*"/>
<%
request.setCharacterEncoding("utf-8");

String stitle = request.getParameter("title");
String sstory = request.getParameter("story");
String sname = request.getParameter("name");
String[] sgenre = request.getParameterValues("genre");

String sstitle = request.getParameter("title2");
String stime = request.getParameter("time");

infor = new information();
infor.setTitle(stitle);
infor.setStory(sstory);
infor.setName(sname);
infor.setGenre(sgenre);

information2 infor2 = new information2();
infor2.setTitle2(sstitle);
infor2.setTime(stime);

%>
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
	width:864px;
	height:700px;
	border: 1px solid;
	position:relative;
	top: -51px; 
}

div.all{
	width: 1000px;
	height: 900px;
	margin: 0 auto;
}

img.summer{ 
	position:absolute;
	left: 20px;
	width: 200px;
	height: 200px;
}
#title{
	position:absolute;
	left: 240px;
	top: 50px;
}
#story{
	position:absolute;
	left: 240px;
	top: 120px;
	font-size:9pt;
	font-family:"나눔고딕";
}
#writter{
	position:absolute;
	left: 240px;
	top: 180px;
	font-family:"한컴산뜻돋움";
	color:#808080;
}
#genre{
	position:absolute;
	left: 300px;
	top: 184px;
	font-family:"한컴산뜻돋움";
	font-size:9pt;
}
#button1{
	position:absolute;
	left: 240px;
	top: 225px;
}
#button2{
	position:absolute;
	left: 320px;
	top: 225px;
}
#button3{
	position:absolute;
	left: 405px;
	top: 225px;
}
#line1{
	border:1;
	width:95%;
	position:absolute;
	top:265px;
	left:20px;
	color:#D9D9D9;
}
#line2{
	border:0.7;
	width:93%;
	position:absolute;
	top:355px;
	left:26px;
	color:#D9D9D9;
}
#line3{
	border:0.7;
	width:93%;
	position:absolute;
	top:445px;
	left:26px;
	color:#D9D9D9;
}
#line4{
	border:0.7;
	width:93%;
	position:absolute;
	top:535px;
	left:26px;
	color:#D9D9D9;
}
#line5{
	border:0.7;
	width:93%;
	position:absolute;
	top:625px;
	left:26px;
	color:#D9D9D9;
}
#pic1{
	position:absolute;
	top:283px;
	left:25px;
	width:100px;
	height:70px;
}
#pic2{
	position:absolute;
	top:373px;
	left:25px;
	width:100px;
	height:70px;
}
#pic3{
	position:absolute;
	top:463px;
	left:25px;
	width:100px;
	height:70px;
}
#pic4{
	position:absolute;
	top:553px;
	left:25px;
	width:100px;
	height:70px;
}
#hwa1{
	position:absolute;
	top:305px;
	left:150px;
}
#hwa2{
	position:absolute;
	top:395px;
	left:150px;
}
#hwa3{
	position:absolute;
	top:485px;
	left:150px;
}
#hwa4{
	position:absolute;
	top:575px;
	left:150px;
}
#title1{
	position:absolute;
	top:305px;
	left:200px;
}
#title2{
	position:absolute;
	top:395px;
	left:200px;
}
#title3{
	position:absolute;
	top:485px;
	left:200px;
}
#title4{
	position:absolute;
	top:575px;
	left:200px;
}
#date1{
	position:absolute;
	top:307px;
	left:420px;
	font-size:11pt;
}
#date2{
	position:absolute;
	top:397px;
	left:420px;
	font-size:11pt;
}
#date3{
	position:absolute;
	top:487px;
	left:420px;
	font-size:11pt;
}
#date4{
	position:absolute;
	top:577px;
	left:420px;
	font-size:11pt;
}
#menu1{
	position:absolute;
	top:305px;
	left:650px;
}
#menu2{
	position:absolute;
	top:395px;
	left:650px;
}
#menu3{
	position:absolute;
	top:485px;
	left:650px;
}
#menu4{
	position:absolute;
	top:575px;
	left:650px;
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
	<h3>&nbsp;&nbsp;&nbsp;&#9664;&nbsp;웹툰 정보</h3>
	<img class="summer" src="./빈레이어.PNG" alt="빈레이어">
	<h2 id="title"><jsp:getProperty name="infor" property="title"/></h2>
	<div>
		<font id="story"><jsp:getProperty name="infor" property="story"/></font>
	</div>
	<font id="writter"><jsp:getProperty name="infor" property="name"/></font>
	<font id="genre">
	<%
	String[] genre = infor.getGenre();
	String str="";
	if (genre!=null){
		for (String i:genre) {
			str += i + ", ";
			out.print(i + ", ");
		}
	}
	else{
		out.print(str);
	}
	%>
	</font>
	<button id="button1"><a href="newWebtoon.jsp">등록하기</button> <button id="button2">정보 수정</button> <button id="button3">삭제하기</button>
	<hr id="line1">
		<img id="pic1" src="./빈레이어.PNG" alt="빈사진"> <font id="hwa1"><b>1화</b></font> <font id="title1"><%=infor2.getTitle2() %></font>
		<font id="date1"><%=infor2.getTime() %></font>
		<font id="menu1"><a href="#">미리보기 수정 삭제</a></font>
	<hr id="line2"> 
		<img id="pic2" src="./빈레이어.PNG" alt="빈사진"> <font id="hwa2"><b>2화</b></font> <font id="title2">2화 제목입니다</font>
		<font id="date2">0000-00-00</font>
		<font id="menu2"><a href="#">미리보기 수정 삭제</a></font>
	<hr id="line3">
		<img id="pic3" src="./빈레이어.PNG" alt="빈사진"> <font id="hwa3"><b>3화</b></font> <font id="title3">3화 제목입니다</font>
		<font id="date3">0000-00-00</font>
		<font id="menu3"><a href="#">미리보기 수정 삭제</a></font>
	<hr id="line4">
		<img id="pic4" src="./빈레이어.PNG" alt="빈사진"> <font id="hwa4"><b>4화</b></font> <font id="title4">4화 제목입니다</font>
		<font id="date4">0000-00-00</font>
		<font id="menu4"><a href="#">미리보기 수정 삭제</a></font>
	<hr id="line5">
	</div>
</div>
</body>
</html>