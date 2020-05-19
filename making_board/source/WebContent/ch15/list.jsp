<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import = "ch15.BoardBean"%>
<%@ page import = "java.util.Vector"%>
<jsp:useBean id = "bMgr" class="ch15.BoardMgr" />
<% 
	request.setCharacterEncoding("EUC-KR");
	
	int totalRecord = 0; //전체 레코드 수
	int numPerPage = 10; //페이지 당 레코드 수
	int pagePerBlock = 15; //블럭 당 페이지 수
	
	int totalPage = 0; //전체 페이지 수
	int totalBlock = 0;// 전체 블럭수
	
	int nowPage = 1; //현재 페이지
	int nowBlock = 1; //현재 블럭

	int start = 0;
	int end = 0;
	
	int listSize = 0;
	
	String keyWord = "", keyField = "";
	
	Vector<BoardBean> vlist = null;
	if(request.getParameter("keyWord")!=null){
		keyWord = request.getParameter("keyWord");
		keyField = request.getParameter("keyField");
	}
	
	if(request.getParameter("reload")!=null){
		if(request.getParameter("reload").equals("true")){
			keyWord = "";
			keyField = "";
		}
	}
	
	if(request.getParameter("nowPage")!=null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	start = (nowPage * numPerPage) - numPerPage;
	end = numPerPage;
	
	totalRecord = bMgr.getTotalCount(keyField,keyWord);
	totalPage = (int)Math.ceil((double)totalRecord/numPerPage);
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock);
	totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);
	%>
	<html>
	<head>
	<title>JSPBOARD</title>
	<link href="style.css" rel = "stylesheet" type = "text/css">
	<script type="text/javascript">
	function list(){
		document.listFrm.action = "list.jsp";
		document.listFrm.submit();
	}	
	
	function pageing(page){
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}	
	
	function block(value){
		document.readFrm.nowPage.value=<%=pagePerBlock%>*(value-1)+1;
		document.readFrm.submit();
	}	
	
	function read(num){
		document.readFrm.num.value = num;
		document.readFrm.action="read.jsp";
		document.readFrm.submit();
	}	
	
	function check(){
		if(document.searchFrm.keyWord.value = ""){
			alert("검색어를 입력하세요.");
			document.searchFrm.keyWord.focus();
			return;
		}
		document.searchFrm.submit();
	}	
	</script>
	</head>
	<body bgcolor="#FFFFCC">
	<div align="center">
		<br/>
		<h2>JSPBOARD</h2>
		<br/>
		<table align = "center" border = "0" width = "80%">
			<tr>
				<td>Total: <%=totalRecord%>Articles(<font color="red">
				<%=nowPage%>/<%=totalPage%>Pages</font>)</td>
			</tr>
		</table>
		<table align="center" width="80%" border = "0" cellspacing ="0" cellpadding="3">
			<tr>
				<td align="center" colspan="2">
				<%
					vlist = bMgr.getBoardList(keyField,keyWord,start,end);
				%>
		</table>
	</div>
	</body>
	</html>
	
	
	