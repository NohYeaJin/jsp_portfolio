<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey");
%>
<html>
<head>
<title>로그인</title>
<link href="./resources/css/loginStyle.css" rel="stylesheet" type="text/css">
<%
	String location = "index_login.html";
%>
<script type="text/javascript">
	function loginCheck(){
		if (document.loginFrm.id.value==""){
			alert("아이디를 입력해 주세요.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pwd.value==""){
			alert("비밀번호를 입력해 주세요.");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.submit();
	}
</script>
</head>

<body>

<form name = "loginFrm" method="post" action ="loginProc.jsp">
<div id="Wrapper" class="Wrap">
	<div class="main">
		<h2>로그인</h2>
	</div>
	<div class="login_input">
		<p>아이디</p>
		<input name="id">
	</div>
	<div class="pwd_input">
		<p>비밀번호</p>
		<input name="pwd" type="password">
	</div>
	<div class="buttons">
		<input type="button" value="로그인" onclick="loginCheck()" class="login_btn">&nbsp;
			<div class="go_member">아직 회원이 아니신가요?회원가입을 하시면 다양한 혜택을 누리실 수 있습니다!</div>
			<input type="button" value="회원가입" onCLick = "javascript:location.href='member.jsp'">
	</div>
</div>
</form>
</body>
</html>