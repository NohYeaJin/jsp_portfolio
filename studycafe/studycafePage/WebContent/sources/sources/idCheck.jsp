<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="sources.MemberMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	boolean result = mMgr.checkID(id);
	String msg="��� ������ ���̵��Դϴ�.";
	String location="member.jsp";
	if(result){
		msg="�̹� �����ϴ� ID�Դϴ�";		
	}
%>
<script>
	alert("<%=msg%>");
</script>
<html>
	<a href="#" onClick="self.close()">�ݱ�</a>
</html>