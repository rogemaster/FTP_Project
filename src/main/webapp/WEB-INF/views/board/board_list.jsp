<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html> 
<html>
<script
  src="https://code.jquery.com/jquery-3.4.0.min.js"
  integrity="sha256-BJeo0qm959uMBGb65z40ejJYGSgR7REI4+CW1fNKwOg="
  crossorigin="anonymous">
</script>
 <script type="text/javascript" src="resources/js/jquery-3.3.1.min.js" ></script>
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<head>
<link href="resources/css/main.css" rel="stylesheet" media="screen">
<title>Board List</title>
</head>
<body>
	<div style="margin-bottom: 2%; margin-top: 3%; margin-right: 5%;" align="right">
		<form id="board_search_list">
			<select name="search_target">
				<option value="board_writer_name">작성자</option>
				<option value="board_content_text">내용</option>
			</select>
			<input name="search_word">
		</form>
		<button type="button" onclick="board_search()">검색</button>
	</div>
	
	<div align="center">
		<table border="1" style="width: 90%; height: 100%; text-align: center;">
			<tr style="background: #a7a5a5; font-size: 17px; font: bold; color: white;" >
				<td><input type="checkbox" onclick="check_all()"></td>
				<td>NO</td>
				<td>제목</td>
				<td>작성자</td>
				<td>내용</td>
				<td>작성날짜</td>
				<td>공지여부</td>
			</tr>
	
			<c:forEach items="${list }" var="li">
			<tr>	
				<td><input type="checkbox" name="select_check" value="${li.board_seq }" id="check" ></td>
				<td>${li.board_seq }</td>
				<td>${li.board_title }</td>
				<td>${li.board_writer_name }</td>
				<td><a href="/ftp_project1_board/ftp_project1_Board_view.do?no=${li.board_seq }">${li.board_content_text }</a></td>
				<td>${li.board_reg_date }</td>
				<td>
				<c:if test="${li.board_notice == 'y' }">
					공지
				</c:if>
				</td>
			</c:forEach>
			
		</table>
	</div>
	
	<div align="center" style="margin-right: 5%; margin-top: 3%; margin-bottom: 5%;">
		<c:if test="${paging.curRange ne 1 }">
			<a href="javascript:void(0)" onclick="fn_paging(1)">[처음]</a>
		</c:if>
		<c:if test="${paging.curRange ne 1 }">
			<a href="javascript:void(0)" onclick="fn_paging('${paging.prevPage}')">[이전]</a>
		</c:if>
		
		<c:forEach var="pageNum" begin="${paging.startPage }" end="${paging.endPage }">
			<c:choose>
				<c:when test="${pageNum eq paging.curPage }">
					<span><a href="javascript:void(0)" onclick="fn_paging('${pageNum}')">${pageNum }</a></span>
				</c:when>
				<c:otherwise>
					<a href="javascript:void(0)" onclick="fn_paging('${pageNum}')">${pageNum }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.curPage ne paging.pageCnt && paging.pageCnt > 0}">
			<a href="javascript:void(0)" onClick="fn_paging('${paging.nextPage }')">[다음]</a> 
		</c:if>
		<c:if test="${paging.curRange ne paging.rangeCnt && paging.rangeCnt > 0}">
			<a href="javascript:void(0)" onClick="fn_paging('${paging.pageCnt }')">[끝]</a> 
		</c:if>
	</div>
	
	<div align="right" style="margin-right: 5%; margin-top: 3%; margin-bottom: 5%;">
		<button type="button" onclick="delBtn()">삭제</button>
		<a href="javascript:void(0)" onclick="insert()"><button type="button">글쓰기</button></a>
	</div>
	
	<div align="right" style="margin-right: 5%; margin-top: 3%; margin-bottom: 5%;">
		<button type="button" onclick="testBtn()">테스트</button>
	</div>


</body>

<script type="text/javascript">

	function fn_paging(target) {
		location.href = "/ftp_project1_board/ftp_project1_Board_list.do?curPage=" + target;
	}
	
	// 검색
	function board_search() {
		document.getElementById("board_search_list").action = "/ftp_project1_board/ftp_project1_Board_list.do";
		document.getElementById("board_search_list").submit();
	}

	// 글쓰기
	function insert() {
		location.href = "/ftp_project1_board/ftp_project1_Board_insert.do";
	}
	
	// 전체선택
	var chkBoxArr = new Array();
		
	function check_all() {
		var chkBox = $("input:checkbox[name=select_check]");
		console.log("chkBox = " + chkBox);
		
		for(var i = 0; i < chkBox.length; i++) {
			if(chkBox[i].checked == false) {
				chkBox[i].checked = true;
				console.log( chkBox[i].value );
				chkBoxArr[i] = chkBox[i].value;
			}else {
				chkBox[i].checked = false;
				chkBoxArr = [];
			}
		}
	}
	
	function delBtn() {
		
		$("input:checkbox[name=select_check]:checked").each(function() {
			console.log("체크 this 값 = " + $(this).val());
			chkBoxArr.push($(this).val());
		});
		
		if(chkBoxArr == 0) {
			alert("삭제할 게시글을 선택 하세요.");
		}else {
			confirm("정말로 삭제 하시겠습니까?");
			if(true) {
				var param = {"chkBoxArr" : chkBoxArr};
				$.get("/ftp_project1_board/ftp_project1_Board_delete.do", param, function(rst) {
					console.log("응답 = " + rst);
				})
			}
		}
		
		
	}
	
</script>




</html>
