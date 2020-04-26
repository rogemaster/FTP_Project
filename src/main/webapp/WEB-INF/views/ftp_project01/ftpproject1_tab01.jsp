<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html> 

<html>
<script type="text/javascript" src="../../resources/js/jquery-3.3.1.min.js" ></script>
<head>

	<title>Start2</title>
	
	<script type="text/javascript">
	$(document).ready(function () {

	      
	  });
	
	function tab01_button01(){
		alert("progectboard 패키지 안에 신설하세요 controller, service, serviceImpl, vo, DAO, xml 생성하여 만드세요");
		
	}
	</script>
</head>

<body>
<font size="5">
	게시판페이지 테이블 구조는 seq, title, 	writer_name, content_text 입니다 <br/>
	현재 페이지는 controller, service, serviceImpl, xml 까지 타고온 페이지 입니다. 해당 sql은 mariaDB입니다.<br/>
	응용하여 해당 다음 페이지를 만드세요.<br/><br/>
	
	1. 새로운 페이지를 생성하여 ftp_bard 테이블의 데이터를 화면에 뿌려주세요<br/><br/>
	2. 가져온 데이터를 이용하여 script에서 값을 받아와보세요.<br/>(새로 생성한 페이지에서 작업하세요) <font color="red">ex) select * from ftp_board </font><br/><br/>
	3. 입력한 값을 ftp_bard 테이블에 삽입되도록 해보세요.<br/>(새로 생성한 페이지에서 작업하세요)<font color="red">ex) insert into ftp_board </font><br/><br/>
	4. 리스트 목록중 하나의 글을 클릭하면 상세페이지가 보이도록 페이지를 만드세요.<br/>(새로 생성한 페이지에서 작업하세요)<font color="red">ex) select * from ftp_board</font><br/><br/>
	5. sql에서 받아온 값으로  ftp_bard 테이블의 값을 수정하는 버튼을 만드세요.<br/>(새로 생성한 페이지에서 작업하세요)  <font color="red">ex) update ftp_board</font><br/><br/>
	6. sql에서 받아온 값으로  ftp_bard 테이블의 값을 삭제하는 버튼을 만드세요.<br/>(새로 생성한 페이지에서 작업하세요)<font color ="red">ex) delete ftp_board</font><br/><br/>
</font>

<form id ="ftpfrm">
	
	<input type ="button"  onclick="javascript:tab01_button01()" value="게시판리스트를 페이지 생성하세요."  > <br/><br/>
</form>


</body>
</html>
