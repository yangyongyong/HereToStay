<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<% String sess = (String)request.getAttribute("session");
   String goLogin = (String)request.getAttribute("goLogin");

   if(sess != null) {
	   session.setAttribute("memId", sess);
   }
%>
<% String memId = (String)session.getAttribute("memId"); %>

<script type="text/javascript">
	//아이디 중복체크
	function idDuplicateCheck(){
	    // 로그인 프로세스 호출
	    $.ajax({
	        type: 'post',
	        async: true,
	        url:'/member/idCheck.do',
	        contentType:'application/x-www-form-urlencoded;charset=UTF-8',
	        data: "memId=" + $("#memId").val(),
	       
	        success:function(resultData){
	        	$('#memId').parent().find('b').eq(0).html(resultData);
			}
	    });
	}
</script>


<!-- // authorize // -->
	<input type="hidden" value="<%=goLogin%>" id="goMyPage"/>
	<form id="loginOk" method="post">
		<div class="overlay"></div>
		<div class="autorize-popup2" style="z-index:9999;width:444px;height:255px;background:#fff;position:fixed;left:50%;top:-300px;margin-top:-128px;margin-left:-222px;">
			<div class="autorize-tabs2">
				<a href="#" class="autorize-tab-a current2">로그인</a>
				<a href="#" class="autorize-close"></a>
				<div class="clear"></div>
			</div>
			<section class="autorize-tab-content">
				<div class="autorize-padding">
					<h6 class="autorize-lbl">'여기없대'를 방문해주셔서 감사합니다</h6>
					<input type="text" id="logId" placeholder="ID">
					<input type="password" id="logPwd" placeholder="PASSWORD">
					<footer class="autorize-bottom">
						<input class="authorize-btn" type="button" value="로그인" id="memLogin"></button>
						<div class="clear"></div>
					</footer>
				</div>
			</section>
		</div>
	</form>
	
	<form action="/member/joinInsert.do" id="joinInsert" method="post">
		<div class="autorize-popup">
			<div class="autorize-tabs">
				<a href="#" class="autorize-tab-a current">회원가입</a>
				<a href="#" class="autorize-close"></a>
				<div class="clear"></div>
			</div>
			<section class="autorize-tab-content">
				<div class="autorize-padding">
					<h6 class="autorize-lbl">회원가입을 통해 '여기없대'의 모든 서비스를 받아보세요</h6>
					<br/>
					<input type="text" id="memId" name="memId" placeholder="ID" onkeyup="idDuplicateCheck()"> <b id="idCheck" class="autorize-lbl" style="color: red; margin-left: 10px;">아이디를 입력하세요</b>
					<input type="password" id="memPwd" name="memPwd" placeholder="PASSWORD"> <b id="idCheck" class="autorize-lbl" style="margin-left: 10px;">8자리 이상이여야 합니다</b>
					<input type="password" id="memPwdCk" placeholder="PASSWORD-CHECK"> <b id="idCheck" class="autorize-lbl" style="margin-left: 10px;">비밀번호를 다시 입력하세요</b>
					<input type="text" id="memName" name="memName" placeholder="NAME"> <b id="idCheck" class="autorize-lbl" style="margin-left: 10px;">성명을 입력하세요</b>
					<input type="text" id="memTel" name="memTel" placeholder="TEL-NUM"> <b id="idCheck" class="autorize-lbl" style="margin-left: 10px;">전화번호를 입력하세요</b>
					<input type="email" id="memMail" name="memMail" placeholder="E-MAIL">  <b id="idCheck" class="autorize-lbl" style="margin-left: 10px;">이메일을 입력하세요</b>
					<input type="text" id="memBirth" name="memBirth" placeholder="BIRTHDAY"> <b id="idCheck" class="autorize-lbl" style="margin-left: 10px;">(ex) 920415-2 &nbsp;→&nbsp; 9204152</b>
					<input type="text" id="memRpwd" name="memRpwd" placeholder="ROOM-PASSWORD"> <b id="idCheck" class="autorize-lbl" style="margin-left: 10px;">입실 시 사용할 비밀번호</b>
					<footer class="autorize-bottom">
						<button class="authorize-btn2" id="memJoin">회원가입</button>
						<div class="clear"></div>
					</footer>
				</div>
			</section>
		</div>
	</form>
<!-- \\ authorize \\-->

<header id="top">

	<% if(memId == null) { %>

		<div class="header-a">
			<div class="wrapper-padding">
				<div class="header-account">
					<a href="#">회원가입</a>
				</div>
			</div>
			<div class="wrapper-padding">
				<div class="header-account2" style="float:right;">
					<a href="#" style="color:#fff;font-size:11px;text-transform:uppercase;font-family:'Montserrat';font-weight:700;text-decoration:none;display:inline-block;border-left:1px solid #333333;border-right:1px solid #333333;	padding:14px 22px 0px 22px;height:26px;">로그인</a>
				</div>
			</div>
		</div>
	
	<% } else {%>
	
		<div class="header-a">
			<div class="wrapper-padding">
				<div class="header-account3" style="float:right;">
					<a href="/member/index.do?logOut=out" style="color:#fff;font-size:11px;text-transform:uppercase;font-family:'Montserrat';font-weight:700;text-decoration:none;display:inline-block;border-left:1px solid #333333;border-right:1px solid #333333;	padding:14px 22px 0px 22px;height:26px;">로그아웃</a>
				</div>
			</div>
			<div class="wrapper-padding">
				<div class="header-account3" style="float:right;">
					<a href="#" style="color:#fff;font-size:11px;text-transform:uppercase;font-family:'Montserrat';font-weight:700;text-decoration:none;display:inline-block;border-left:1px solid #333333;border-right:1px solid #333333;	padding:14px 22px 0px 22px;height:26px;"><%= memId %> 님 반갑습니다.</a>
				</div>
			</div>
		</div>
	
	<% } %>
	
	
	<div class="header-b">
		<!-- // mobile menu // -->
			<div class="mobile-menu">
				<nav>
					<ul>
						<li><a class="has-child" href="/member/aboutUs.do">여기없대</a>					
						</li>
						<li><a class="has-child" href="/member/pensionSearch.do?page=1&opt=what">펜션찾기</a>
						</li>						
						<li><a class="has-child" href="/member/qnaWrite.do">문의사항</a>
						</li>
						<li><a class="has-child" href="/member/myPage.do?pageS=1&tag=1&sort1=1&sort2=1">마이페이지</a>
						</li>
					</ul>
				</nav>	
			</div>
		<!-- \\ mobile menu \\ -->
			
		<div class="wrapper-padding">
			<div class="header-logo"><a href="/member/index.do"><img alt="" src="/img/logo.png" /></a></div>
			<div class="header-right">
				<div class="hdr-srch">
					<a href="#" class="hdr-srch-btn"></a>
				</div>
				<div class="hdr-srch-overlay">
					<div class="hdr-srch-overlay-a">
						<input type="text" value="" placeholder="Start typing...">
						<a href="#" class="srch-close"></a>
						<div class="clear"></div>
					</div>
				</div>	
				<div class="hdr-srch-devider"></div>
				<a href="#" class="menu-btn"></a>
				<nav class="header-nav">
					<ul>
						<li><a class="has-child" href="/member/aboutUs.do">여기없대</a>					
						</li>
						<li><a class="has-child" href="/member/pensionSearch.do?page=1&opt=what">펜션찾기</a>
						</li>						
						<li><a class="has-child" href="/member/qnaWrite.do">문의사항</a>
						</li>
						<li><a class="has-child" href="/member/myPage.do?pageS=1&tag=1&sort1=1&sort2=1">마이페이지</a>
						</li>
					</ul>
				</nav>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</header>