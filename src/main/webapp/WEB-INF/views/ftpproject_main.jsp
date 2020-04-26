<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html> 
<html>
 <script type="text/javascript" src="../resources/js/jquery-3.3.1.min.js" ></script>
<head>
<link href="../resources/css/main.css" rel="stylesheet" media="screen">
	<title>Start</title>
	<script type="text/javascript">
	 $(document).ready(function () {
	      
	  });


	function test(){
		alert("알림창 변경 입니다.");
	}
	
	function mission1(){
		alert("팝업창만들기 naver.com이랑 연결하세요");
		window.open("http://naver.com", "", "width=500, heigth=500");
	}
	
	function mission2(){
		
		alert("index 아래 존재하는 pop.jsp 파일을 불러오세요")
		window.open("/pop.jsp", "", "width=500, heigth=500");
			
		
		
	}
	
	function mission3(){
		alert("pop/pop.jsp 폴더를 controller로 연결하세요");
	//	window.open("", "/ftp_project_pop/ftp_project_pop.do", "width=500, heigth=500");
		document.getElementById("ftpfrm").action = "/ftp_project_pop/ftp_project_pop.do";
	    document.getElementById("ftpfrm").submit();
		
	}
	
	
	
	function ftp_project1_board_list(){
		
		document.getElementById("ftpfrm").action = "/ftp_project1_board/ftp_project1_Board_list.do";
	    document.getElementById("ftpfrm").submit();
	}
	
function ftp_project1_user_list(){
		
		document.getElementById("ftpfrm").action = "/ftp_project1_user/ftp_project1_user_list.do";
	    document.getElementById("ftpfrm").submit();
	}
	

	
</script>
</head>

<body>
<h1>
	 <font size ="8">F.T.P 교육팀장 강보람입니다.<br/> 
	만나서 반가워요 기본적인 것부터 시작 할겁니다<br/></font>
	<font size ="6" color="red">간단히 것부터 차례대로 진행해봅시다. 이래도 되나 싶을 정도로 쉬우니 걱정하지마세요.<br/></font> 
	<font size ="6" color="red">기본틀 잡는 연습입니다<br/></font>
	<font >문의는 010.6265.7003 f.t.p  교육팀장 강보람</font>
	

	
</h1>

<form id ="ftpfrm">
	
	<a href="javascript:test()">클릭시 보여지는 알림창 내용을 변경하세요</a> <br/><br/>
	<input type ="button"  onclick="javascript:mission1()" value="과제01  팝업창만들기 naver.com이랑 연결하세요" > <br/><br/>	
	<input type ="button"  onclick="javascript:mission2()" value="과제02  index 아래 존재하는 pop.jsp 파일을 불러오세요" > <br/><br/>
	<input type ="button"  onclick="javascript:mission3()" value="과제03  MVC 패턴을 이용해서 페이지 이동을 만드세요."  > <br/><br/>
	<input type ="button"  onclick="javascript:ftp_project1_board_list()" value="게시판페이지"  > <br/><br/>
	
	<input type ="button"  onclick="javascript:ftp_project1_user_list()" value="회원리스트페이지"  > <br/><br/>
	

</form>


</body>

</html>
