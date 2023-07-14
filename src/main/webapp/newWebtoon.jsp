<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회차 등록하기</title>
<style>
div{
	border-style:solid;
	border-width:1px; 
	padding: 10px 20px 40px 20px;
	line-height: 1.5em;
}
#but{
	float: right;
	border: 1px solid grey;
	background-color: rgba(0,0,0,0);
	color: grey;
	padding: 5px;
}
#but:hover{
	color:white;
	background-color: grey;
}
form{
	line-height: 2.5em;
}
b{
	white-space: pre;
	font-size: 11pt;
}
#back:hover{
	color: grey;	
}
#back{
	color: grey;	
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
font.list{ 
	font-size: 13px;
	font-family: "나눔고딕";
	line-height: 1em;
}
div.head{
	margin: 0 auto;
	height: 5px;
	width: 650px;
	border: 3px solid #d9d9d9;
	background: #ffffff;
	position: relative;
	top: -65px;
	left: -30px;
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
}
button.head3:hover{
	color: grey;
}
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
a{text-decoration:none;}
a:visited{color:black;} 

textarea{
	position:relative;
	left: 137px;
}
#window{
	position:relative;;
	width:822px;
	top:-65px;
	left:-18px;
}
div.all{
	width:1000px;
	height:900px;
	margin: 0 auto;
	border: none;
}
header{
	position:relative;
	top: -15px;
	left: -20px;
}
</style>
</head>
<body>
<div class="all">
	<header>
		<span><a href="#">나의 웹툰</a></span>
		<span><a href="#">회원정보</a></span>
		<span><a href="#">로그아웃</a></span>
		<p class="Webtoon"><a style="color:#595959;"href="home.jsp">WEBTOON</a></p>
		<p class="manager">&nbsp;m&nbsp;&nbsp;a&nbsp;&nbsp;n&nbsp;&nbsp;a&nbsp;&nbsp;g&nbsp;&nbsp;e&nbsp;&nbsp;r</p>
		<div class="head">
			<input class="head2" type="text" placeholder="타이틀과 작가명으로 웹툰을 검색할 수 있습니다.">
			<button class="head3">검색</button>
		</div>
	
	</header>
	<div id="window">
		<h3><a id="back" href="WebtoonManager.jsp">&#9664;&nbsp;회차 등록하기</a></h3><hr color=#d9d9d9>
		<form action="WebtoonManager.jsp" method="post">
		<b>                   회차&nbsp;</b> 01 화<br>
		<b>            회차 제목&nbsp;</b> <input id = "title" type="text" name="title2" size="78"><br>
		<b>썸네일 이미지 등록</b> <input id="image" type="file" accept="image/jpeg, image/png" name=image><br>
		<b>웹툰 그림파일 등록</b> <input id="image2" type="file" accept="image2/jpeg, image2/png" name=image2><br>
		<b>            BGM 등록</b> <input id="BGM" type="file" accept="BGM/mp4" name=BGM><br>
		<b>            작가의 말 </b> <input id="writer" type="text" name="says" size="78"><br>
		<hr color=#d9d9d9>
		<b>                발행일 </b> <input id="time" type="datetime-local" name="time">&nbsp;&nbsp;현재&nbsp;&nbsp;|&nbsp;&nbsp;예약&nbsp;&nbsp;<br>
		<b>             공개여부</b> <input id="radio" type="radio" name="open" value="공개">공개&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="open" value="비공개">비공개 <br>
		<script>	
			function display(){
				var title = document.getElementById('title').value;
				var image = document.getElementById('image').value;
				var image2 = document.getElementById('image2').value;
				var BGM = document.getElementById('BGM').value;
				var writer = document.getElementById('writer').value;
				var time = document.getElementById('time').value;
				var radio = document.getElementById('radio').value;
						
				alert("회차: " + "01 화" + "\n회차 제목: " + title + "\n썸네일 이미지: " + image +
						"\n웹툰 그림파일: " + image2 + "\nBGM: " + BGM + "\n작가의 말: " + writer + "\n발행일: " + time + "\n공개여부: " + radio);
			}
		</script>
		<button id="but" type="button" value="임시저장" onclick="alert('임시저장되었습니다.')">임시저장</button>
		<button id="but" type="submit" onclick="display()">등록하기</button>
		</form>
	</div>
</div>
</body>
</html>