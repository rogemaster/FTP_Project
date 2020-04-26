<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="ftplogin">
		<p>
			ID : <input type="text" name="id">
			PW : <input type="text" name="pw">
		</p>
		<button type="button" onclick="login()">로그인</button>
	</form>
		<a href="/ftp_project1_user/ftp_project1_user_join.do"><button type="button">회원가입</button></a>
</body>

<script type="text/javascript">
	function login() {
		document.getElementById("ftplogin").action = "/ftp_project1_user/ftp_project1_user_list.do";
		document.getElementById("ftplogin").submit()
	}
</script>
</html>