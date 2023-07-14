<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>웹툰 등록하기</title>
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
	line-height: 2em;
}
b{
	white-space: pre;
	font-size: 11pt;
}
#back:hover{
	color: grey;	
}
#back{
	color: black;	
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

#up{
	position:absolute;
}
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
		<p class="Webtoon"><a style="color:#595959;"href="Home.jsp">WEBTOON</a></p>
		<p class="manager">&nbsp;m&nbsp;&nbsp;a&nbsp;&nbsp;n&nbsp;&nbsp;a&nbsp;&nbsp;g&nbsp;&nbsp;e&nbsp;&nbsp;r</p>
		<div class="head">
			<input class="head2" type="text" placeholder="타이틀과 작가명으로 웹툰을 검색할 수 있습니다.">
			<button class="head3">검색</button>
		</div>
	
	</header>
	<div id="window">
		<h3><a id="back" href="Home.jsp">&#9664;&nbsp;새 웹툰 등록</a></h3><hr color=#d9d9d9>
		<form action="WebtoonManager.jsp" method="post">
		<b>                   제목&nbsp;</b> <input id="title" type="text" name="title" size="78"><br>
		<b>                   장르</b>
		<input type="checkbox" name="genre" value="일상"><font class="list">일상&nbsp;</font>&nbsp;&nbsp;
		<input type="checkbox" name="genre" value="개그"><font class="list">개그&nbsp;&nbsp;&nbsp;</font>
		<input type="checkbox" name="genre" value="순정"><font class="list">순정&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
		<input type="checkbox" name="genre" value="감성"><font class="list">감성&nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="genre" value="판타지"><font class="list">판타지</font>&nbsp;&nbsp;
		<input type="checkbox" name="genre" value="공포"><font class="list">공포&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>&nbsp;&nbsp;
		<input type="checkbox" name="genre" value="범죄"><font class="list">범죄</font><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="genre" value="액션"><font class="list">액션</font>&nbsp;&nbsp;
		<input type="checkbox" name="genre" value="사극"><font class="list">사극</font>&nbsp;&nbsp;
		<input type="checkbox" name="genre" value="스릴러"><font class="list">스릴러</font>&nbsp;&nbsp;
		<input type="checkbox" name="genre" value="스포츠"><font class="list">스포츠</font>&nbsp;&nbsp;
		<input type="checkbox" name="genre" value="드라마"><font class="list">드라마</font>&nbsp;&nbsp;
		<input type="checkbox" name="genre" value="미스터리"><font class="list">미스터리</font>&nbsp;&nbsp;
		<input type="checkbox" name="genre" value="정치"><font class="list">정치</font><br>
		<b id="up">                줄거리&nbsp;</b> <textarea id = "story" cols="80" rows="10" name="story" style="resize: none;"></textarea><br>
		<b>                작가명 </b> <input id="writer" type="text" name="name" size="78"><br>
			<b id="up">    작가의 말(소개)&nbsp;</b> <textarea id="says" cols="80" rows="5" name="intro" style="resize: none;"></textarea><br>
		<b>썸네일 이미지 등록</b> <input id="image" type="file" accept="image/jpeg, image/png" name=image><br>
		<script>	
			function display(){
				var title = document.getElementById('title').value;
				var story = document.getElementById('story').value;
				var writer = document.getElementById('writer').value;
				var says = document.getElementById('says').value;
				var image = document.getElementById('image').value;
				var genres = document.getElementsByName("genre");
				var str="";
				
				for (var i in genres){
					if (genres[i].checked)
						str += genres[i].value + ", ";
				}
						
				alert("제목: " + title + "\n장르: " + str + "\n줄거리: " + story +
						"\n작가명: " + writer + "\n작가의 말: " + says + "\n썸네일 이미지: " + image);
			}
		</script>
		<button id="but" type="button" value="임시저장" onclick="alert('임시저장되었습니다.')">임시저장</button>
		<button id="but" type="submit" onclick="display()">등록하기</button>
		</form>
	</div>
</div>
</body>
</html>