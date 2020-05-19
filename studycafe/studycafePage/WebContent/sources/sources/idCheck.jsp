<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="sources.MemberMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	boolean result = mMgr.checkID(id);
	String msg="사용 가능한 아이디입니다.";
	String location="member.jsp";
	if(result){
		msg="이미 존재하는 ID입니다";		
	}
%>
<script>
	alert("<%=msg%>");
</script>
<html>
	<a href="#" onClick="self.close()">닫기</a>
</html>