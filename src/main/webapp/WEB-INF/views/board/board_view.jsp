<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js" ></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<link href="resources/css/main.css" rel="stylesheet" media="screen">
<title>Board View</title>
</head>
<body>

	<div align="center" style="margin-top: 5%;">
		<table border="1" style="width: 90%; height: 90%; text-align: center;">
			<tr>
				<td>공지여부</td>
				<td>
				<c:choose>
					<c:when test="${board_view.board_notice eq 'y' }">
						<input type="checkbox" name="select" checked="checked" disabled>
					</c:when>
					<c:otherwise>
						<input type="checkbox" name="select" >
					</c:otherwise>
				</c:choose>	
				</td>	
				<td>제목</td>
				<td>${board_view.board_title }</td>
				<td>작성자</td>
				<td>${board_view.board_writer_name }</td>
			</tr>
			<tr>
				<td colspan="6" width="30%;">${board_view.board_content_text }</td>
			</tr>
			<tr>
				<td colspan="6"><img alt="이미지가 없음" src="<spring:url value="${board_view.board_img_path }" />" style="max-width: 100%; height: auto;"></td>
			</tr>
		</table>
	</div>
	
<form id="board_view">
	<div align="right" style="margin-right: 5%; margin-top: 3%;">
		<button type="button" name="no" value="${board_view.board_seq }" onclick="board_view_modify()">수정</button>
		<button type="button" name="del_yn" value="${board_view.board_seq }" onclick="board_view_remove()">삭제</button>
	</div>
</form>

</body>

<script type="text/javascript">
	
	function board_view_modify() {
		document.getElementById("board_view").action = "/ftp_project1_board/ftp_project1_Board_update.do";
		document.getElementById("board_view").submit();
	}
	
	function board_view_remove() {
		
		var con = confirm("정말 삭제 하시겠습니까?");
		
		if(con) {
			document.getElementById("board_view").action = "/ftp_project1_board/ftp_project1_Board_update.do";
			document.getElementById("board_view").submit();
		}
	}


</script>


















</html>