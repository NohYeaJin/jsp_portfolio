<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>ȸ������</title>
<link href = "style.css" rel = "stylesheet" type="text/css">
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
function idCheck(id){
	frm = document.regFrm;
	if(id==""){
		alert("���̵� �Է��� �ּ���.");
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
            <a href="#">���͵�ī�� �Ұ�</a>
            <ul>
              <li><a href="#">�λ縻</a></li>
              <li><a href="#">ã�ư��� ��</a></li>
            </ul>
          </li>
          <li>
            <a href="#">�̿�ȳ�</a>
          </li>
          <li>
            <a href="#">�����ϱ�</a>
          </li>
          <li><a href="#">�̺�Ʈ,����</a></li>
        </ul>
        <ul class="tnb">
          <li><a href="#">login</a></li>
          <li><a href="#">Join Us</a></li>
          <li><a href="#">����������</a></li>
        </ul>
      </nav>
    </div>
  </header>
  <div class="main_title">
  	<h2>ȸ������</h2>
  <div class="member_post">
  	<div class="member_post_input">
  		<h3>ȸ�� ���� �Է�</h3>
  	</div>
  	<div class="id">
  		<p>���̵�</p>
  		<input name="id" class="id_input">
  		<input type="button" value="ID�ߺ�Ȯ��" onClick ="idCheck(this.form.id.value)" class="id_button">
  	</div>
  	<div class="pwd">
  		<p>��й�ȣ</p>
  		<input name="pwd" class="pwd_input" type="password">
  	</div>
  	<div class="repwd">
  		<p>��й�ȣ Ȯ��</p>
  		<input name="repwd" class="repwd_input" type="password">
  	</div>
  	<div class="name">
  		<p>�̸�</p>
  		<input name="name" class="name_input">
  	</div>
  	<div class="phone">
  		<p>��ȭ��ȣ(����:010-1234-5678)</p>
  		<input name="phone" class="phone_input">
  	</div>
  	<div class="email">
  		<p>�̸���</p>
  		<input name="email" class="email_input">
  	</div>
  	<div class="ok_button">
  		<input type="button" value="ȸ������!" onclick="inputCheck()">
  	</div> 	
  </div>
  </div>
  <footer>
      copyright (c) Jong's Study Cafe. All rights reversed.
  </footer>
 </form>
</body>
</html>