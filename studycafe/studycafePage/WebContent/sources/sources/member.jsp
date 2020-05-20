<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>회원가입</title>
<link href = "style.css" rel = "stylesheet" type="text/css">
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
function idCheck(id){
	frm = document.regFrm;
	if(id==""){
		alert("아이디를 입력해 주세요.");
		frm.id.focus();
		return;
	}
	url = "idCheck.jsp?id="+id;
	window
	.open(url,"IDCheck","width=300,height=150");
}
</script>
</head>
<body onLoad="regFrm.id.focus()">
 <form name ="regFrm" method="post" action="memberProc.jsp">
  <header>
    <div class="limitWrap">
      <h1>
        <img src="./resources/images/logo.png" alt="Jong. Study Cafe" />
      </h1>
      <nav>
        <ul class="gnb">
          <li>
            <a href="#">스터디카페 소개</a>
            <ul>
              <li><a href="#">인사말</a></li>
              <li><a href="#">찾아가는 길</a></li>
            </ul>
          </li>
          <li>
            <a href="#">이용안내</a>
          </li>
          <li>
            <a href="#">예약하기</a>
          </li>
          <li><a href="#">이벤트,공지</a></li>
        </ul>
        <ul class="tnb">
          <li><a href="#">login</a></li>
          <li><a href="#">Join Us</a></li>
          <li><a href="#">마이페이지</a></li>
        </ul>
      </nav>
    </div>
  </header>
  <div class="main_title">
  	<h2>회원가입</h2>
  <div class="member_post">
  	<div class="member_post_input">
  		<h3>회원 정보 입력</h3>
  	</div>
  	<div class="id">
  		<p>아이디</p>
  		<input name="id" class="id_input">
  		<input type="button" value="ID중복확인" onClick ="idCheck(this.form.id.value)" class="id_button">
  	</div>
  	<div class="pwd">
  		<p>비밀번호</p>
  		<input name="pwd" class="pwd_input" type="password">
  	</div>
  	<div class="repwd">
  		<p>비밀번호 확인</p>
  		<input name="repwd" class="repwd_input" type="password">
  	</div>
  	<div class="name">
  		<p>이름</p>
  		<input name="name" class="name_input">
  	</div>
  	<div class="phone">
  		<p>전화번호(예시:010-1234-5678)</p>
  		<input name="phone" class="phone_input">
  	</div>
  	<div class="email">
  		<p>이메일</p>
  		<input name="email" class="email_input">
  	</div>
  	<div class="ok_button">
  		<input type="button" value="회원가입!" onClick="inputCheck()">
  	</div> 	
  </div>
  </div>
  <footer>
      copyright (c) Jong's Study Cafe. All rights reversed.
  </footer>
 </form>
</body>
</html>