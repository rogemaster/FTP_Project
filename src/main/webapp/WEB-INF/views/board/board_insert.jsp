<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js" ></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<link href="resources/css/main.css" rel="stylesheet" media="screen">
<title>Board Insert</title>
</head>
<body>
<form id="ftpboardlist" method="post" enctype="multipart/form-data" >
	<div align="center" style="margin-top: 5%;">
		<table border="1" style="width: 90%; height: 90%; text-align: center;">
			<tr>
				<td>공지여부</td>
				<td><input type="checkbox" id="notice" name="board_notice" value="y"></td>
				<td>제목</td>
				<td><input type="text" id="title" name="board_title"></td>
				<td>작성자</td>
				<td><input type="text" id="writer" name="board_writer_name"></td>
			</tr>
			<tr>
				<td colspan="6"><textarea rows="20%" cols="90%" id="content" name="board_content_text" style="border: 0;" ></textarea></td>
			</tr>
			<tr>
				<td>사진첨부</td>
				<td colspan="5"><input type="file" name="board_img"></td>
			</tr>
		</table>
	</div>
</form>

	<div align="right" style="margin-right: 5%; margin-top: 3%;">
		<button type="button" id="saveChk" onclick="input()">작성</button>
	</div>


</body>

<script type="text/javascript">

	function input() {
		
		var filter = ["펑션투","프로그래밍","FTP"];
		
		var bool = document.getElementById("notice").checked;
		console.log(bool);
		
		var title = document.getElementById("title").value;
		var writer = document.getElementById("writer").value;
		var content = document.getElementById("content").value;
		
		console.log(title);
		console.log(writer);
		console.log(content);
		
		if(title != null && writer != null && content != null) {
			
			for(var i = 0; i < filter.length; i++) {
				
			}
			
			
			
			var con = confirm("작성 하시겠습니까?");
			console.log(con);
			
			if(con) {
				
				/* if(bool) {
					console.log(1);
					document.getElementById("notice").value = "y";
					
				}else {
					console.log(2);
					document.getElementById("notice").value = "n";
								
				} */
				console.log(3);
				document.getElementById("ftpboardlist").action = "/ftp_project1_board/ftp_project1_Board_save.do";
				document.getElementById("ftpboardlist").submit();
				
			}
			
			
		}else {
			alert("필수 사항이 미입력 되었습니다.");
		}
		
		
	}
	



</script>





</html>