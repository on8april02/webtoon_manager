<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" name="sgenre" value="액션,코미디," id="sgenre"><br>
<input type="checkbox" name="genre" value="일상"><font>일상</font>
<input type="checkbox" name="genre" value="로맨스"><font>로맨스</font>
<input type="checkbox" name="genre" value="액션"><font>액션</font>
<input type="checkbox" name="genre" value="코미디"><font>코미디</font>
<input type="checkbox" name="genre" value="판타지"><font>판타지</font>
<input type="checkbox" name="genre" value="범죄"><font>범죄</font>
<input type="checkbox" name="genre" value="공포"><font>공포</font>
		
		<script>
			var str = document.getElementById("sgenre").value;
			console.log(str);
			var genres = str.split(",");
			var checkboxnum = document.getElementsByName("genre").length;
			for (var i = 0; i < genres.length; i++){
				for (var j = 0; j < checkboxnum; j++){
					if (document.getElementsByName("genre")[j].value == genres[i])
						document.getElementsByName("genre")[j].checked=true;
				}
			}
			console.log(str);
			</script>
</body>
</html>