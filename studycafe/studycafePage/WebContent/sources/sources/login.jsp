<%@ page contentType="text/html; charset=EUC-KR"%>
<% 
	request.setCharacterEncoding("EUC-KR");
	String id = (String)session.getAttribute("idKey");
%>
<html>
<head>
<title>�α���</title>
<link href="loginStyle.ss" rel="stylesheet" type="text/css">
<%
	String location = "index_login.html";
%>
<script type="text/javascript" charset="EUC-KR">
	function loginCheck(){
		if (document.loginFrm.id.value=""){
			alert("���̵� �Է��� �ּ���.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pwd.value=""){
			alert("��й�ȣ�� �Է��� �ּ���.");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.submit();
	}
</script>
</head>

<body>
	<form name = "loginFrm" method="post" action ="loginProc.jsp">
	<div id="Wrapper">
		<div class="main">
			<h2>�α���</h2>
		</div>
		<div class="login_input">
			<p>���̵�</p>
			<input name="id">
		</div>
		<div class="pwd_input">
			<p>��й�ȣ</p>
			<input name="pwd" type="password">
		</div>
		<div class="buttons">
			<input type="button" value="�α���" onclick="loginCheck()" class="login_btn">&nbsp;
				<div class="go_member">���� ȸ���� �ƴϽŰ���?ȸ�������� �Ͻø� �پ��� ������ ������ �� �ֽ��ϴ�!</div>
				<input type="button" value="ȸ������" onCLick = "javascript:location.href='member.jsp'">
		</div>
	</div>
	</form>
</body>
</html>