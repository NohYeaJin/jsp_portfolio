<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="sources.MemberMgr"/>
<% 
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String url = "index_login.html";
	String msg="로그인에 실패 하였습니다.";
	
	boolean result = mMgr.loginMember(id,pwd);
	if(result){
		session.setAttribute("idkey",id);
		msg="로그인에 성공하였습니다.";
		}
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>