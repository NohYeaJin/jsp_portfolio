<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="sources.MemberMgr"/>
<% 
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String url = "index_login.html";
	String msg="�α��ο� ���� �Ͽ����ϴ�.";
	
	boolean result = mMgr.loginMember(id,pwd);
	if(result){
		session.setAttribute("idkey",id);
		msg="�α��ο� �����Ͽ����ϴ�.";
		}
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>