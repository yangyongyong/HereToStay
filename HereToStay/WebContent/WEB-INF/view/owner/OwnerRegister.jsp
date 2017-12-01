<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// 	session.setAttribute("ownId", "test2"); 
%>
<jsp:include page="/WEB-INF/view/include/owner_header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="description" content="집떠나 놀땐 종합 숙박어플 야놀자, 모텔 호텔 리조트 펜션 게스트하우스 예약"/>
<title>여기없대 - 사장님페이지</title>
    <link rel="stylesheet" type="text/css" href="/css/owner/v2_member.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<style>
	select{width:100px;}
	
	select option:checked, 
	select option:hover {    
    background: #ff7b06; 
    color:#fff;
}
.btn-gradation{border-radius:5px; background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#ff7200 ), color-stop(100%, #fc7093));}
.btn-gradation:hover{
	transition:0.8s;
	border-radius:15px;
	background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#ff2d60 ), color-stop(100%, #ff7200));
}

.login-area{
	background:#fff;
	border:2px solid #4a90a4;
	padding-top:25px;
	padding-bottom: 25px;
}
.autorize-tab-a, .autorize-tab-b{
	height:27px;
}

.register_check{
color:#d1c9cb;
font-size:12px;
}
</style>
<script>
$(function(){ 
	var sel = document.getElementById("bank");
	var val = sel.options[sel.selectedIndex].value;
});



</script>
</head>
<body>
 <main class="container-comm">
    <article class="contents">
      <div class="member-content">
        <section class="login-area">
          <h3>사장님 회원가입</h3>
		<!-- form -->
          <form id="registerForm" action="RegisterInsert.do" method="post" class="form form-group form-w410">
            <fieldset>
              <legend class="sc-out">회원가입 폼</legend>
              <!-- id,이름,비밀번호,비밀번호 확인 -->
              <div class="login-cont">
                <div class="inp-txt-member"><input type="text" id="ownId" name="ownId" value="" placeholder="아이디를 (4~10)자로 입력해주세요 ." maxlength="12"/></div>
<!--            <div class="warning-txt msg_email" id="emailTextArea">id중복확인</div> -->
                <div class="inp-txt-member">
                	<input type="text" id="ownName" name="ownName" placeholder="이름을입력해주세요" title="이름을 입력" />
                </div>
                <div class="inp-txt-member">
                	<input type="password" id="ownPwd" name="ownPwd" class="inp-password" placeholder="비밀번호를 (6~12)자로 입력하세요" maxlength="12"/>
                </div>
                
                <div class="inp-txt-member">
                  <input type="password" id="ownPwd2" name="ownPwd2" class="inp-password" placeholder="비밀번호 확인" maxlength="12"/>
                  <label class="placeholder-div"></label>
                </div>
              </div>
            </fieldset>
            
            <fieldset>
              <legend class="sc-out">휴대폰번호 입력 폼</legend>
              <div class="login-cont">
              <div class="warning-txt msg_passwdConfirm" id="cpTextArea"></div>
                <em class="cont-title">휴대폰번호 입력</em>
                <div class="phone-rap">
                  <div class="inp-txt-member inp-phone-member">
                  	<input type="text" id="ownTel" name="ownTel" placeholder="'–' 없이 입력하세요." maxlength="11"/>
                  </div>
                </div>
                <div class="warning-txt msg_phoneNum" id='phoneCodeMassage'></div>

                <div class="inp-txt-member">
                	<input type="text" name="ownMail" id="ownMail" value="" placeholder="이메일을 입력하세요.@" />
              	</div>
                <div class="warning-txt msg_passwdConfirm" id="cpTextArea"></div>
              </div>
            </fieldset>
            
            <fieldset>
            	<legend class="sc-out"></legend>
            		<div class="login-cont">
						<em class="cont-title">사업자정보</em>
		                <div class="phone-rap">	
		                  <div class="inp-txt-member inp-phone-member">
		                  	<!-- 사진첨부기능 부탁! --><img src="/img/owner/asset/license.jpg" alt="사업자등록증">
		                  </div>
		               	  <input type="hidden" name=ownLic value="imgsrc">
		               	  <button type="button" name="btn_Lic" class="btn-default btn-phoneinfo" id="btn_license">사업자등록증 첨부</button>
		              	  <em class="">240 x 340</em>
		                </div>
		                <div class="warning-txt msg_phoneNum" id='phoneCodeMassage'></div>		               
             		</div>
            </fieldset>
            
            <fieldset>            
            		<div class="login-cont">
            			<em class="cont-title">계좌정보</em>
            	       	<select name="ownBank" id="bank" value="">
            	       		<option name="ownBank" value="신한">신한은행</option>
            	       		<option name="ownBank" value="기업">기업은행</option>
            	       		<option name="ownBank" value="우리">우리은행</option>
            	       		<option name="ownBank" value="하나">하나은행</option>
            	       		<option name="ownBank" value="국민">국민은행</option>
            	       		<option name="ownBank" value="농협">농협</option>
            	       	</select>
            	         <div class="inp-txt-member">
            	         	<input type="text" name="ownAcc" id="ownAcc" value="" placeholder="계좌번호" title="인증번호를 입력하세요." />
            	         </div>
             		</div>
            	<button type="submit" name="button" class="btn-gradation" id="ownlogin">가입완료</button>
            </fieldset>
          </form>
          <!-- //form -->
        </section>
      </div>
    </article>
  </main>
   <script src="/js/owner/register.js"></script>
  </body>
</html>


