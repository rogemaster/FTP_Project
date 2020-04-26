<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<script type="text/javascript">

	function test(){
		alert("test");
	}
	
	function mission1(){
		alert("팝업창만들기");
	}
	
	function mission2(){
		alert("jsp로만 페이지이동만들기");
	}
	
	function mission3(){
		alert("MVC 패턴으로 페이지이동만들기");
		
	}
	
	
	
	function ftp_project1_tab01(){
		alert("MVC 패턴으로 페이지이동만들기");
		document.getElementById("ftpfrm").action = "/ftp_project1/ftp_project1_tab01.do";
	    document.getElementById("ftpfrm").submit();
	}
	
</script>
<head>
	<title>Start</title>
</head>

<body>
<h1>
	<font size ="8">F.T.P 교육팀장 강보람입니다.</br> 
	만나서 반가워요 기본적인 것부터 시작 할겁니다^^ 기대되죠?</br></font>
	<font size ="6" color="red">간단한 미션부터 진행해봅시다! 이래도 되나 싶을 정도로 겁나 쉬워요</br></font> 
	<font >문의는 010.6265.7003 f.t.p  교육팀장 강보람</font>
</h1>

<form id ="ftpfrm">
	
	<a href="javascript:test()">클릭시 보여지는 알림창 내용을 변경하세요</a> </br></br>
	<input type ="button"  onclick="javascript:mission1()" value="과제01  팝업창 띄우세요."  id="mission1" name ="mission1"> </br></br>	
	<input type ="button"  onclick="javascript:mission2()" value="과제02  jsp로만 페이지이동만드세요."  id="mission2" name ="mission2"> </br></br>
	<input type ="button"  onclick="javascript:mission3()" value="과제03  MVC 패턴을 이용해서 페이지 이동을 만드세요."  id="mission3" name ="mission3"> </br></br>
	<input type ="button"  onclick="javascript:ftp_project1_tab01()" value="게시판페이지로 이동합니다"  id="ftp_project1_tab01" name ="ftp_project1_tab01"> </br></br>
	

</form>


</body>
</html>
