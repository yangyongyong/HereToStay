<%@page import="hts.model.vo.owner.Owner"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/style.css" />
<link rel="stylesheet" href="/css/jquery-ui.css" />
<link rel="stylesheet" href="/css/owl.carousel.css" />
<link rel="stylesheet" href="/css/idangerous.swiper.css" />

</head>
<body>
	<!-- 로그인폼 -->
	<div class="overlay"></div>
		<form action="/owner/loginCheck.do" method="post" onsubmit="return submitForum(this);">
			<div class="autorize-popup">
				<div class="autorize-tabs">
					<a href="#" class="autorize-tab-a current" style="color:#fff; background:#292828">Sign in</a>
					<a href="#" class="autorize-close"></a>
					<div class="clear"></div>
				</div>
				<section class="autorize-tab-content">
					<div class="autorize-padding">
						<h6 class="autorize-lbl">Welocome! 아이디 와 비밀번호 를 입력해주세요</h6>
						<input type="text" value="" placeholder="ID" name="ownId" id="logId">
						<input type="password" value="" placeholder="PASSWORD" name="ownPwd" id="logPwd">
							<button type="submit" class="authorize-btn" id="ownlogin">로그인</button>
							<div class="clear"></div>
					</div>
				</section>
			</div>
		</form>
		<!-- //로그인폼 -->
	<!-- scripts login 공백체크 -->
	<script type="text/javascript"> 
 
			function submitForum(formEl) {
				var errorMessage = null;
				var objFocus = null;
				if (formEl.logId.value.length == 0) {
					errorMessage = "아이디를 입력해주세요";
					objFocus = formEl.logId;
				} else if (formEl.logPwd.value.length == 0) {
					errorMessage = "비밀번호를 입력해 주세요";
					objFocus = formEl.logPwd;
				}
				if (errorMessage != null) {
					alert(errorMessage);
					objFocus.focus();
					return false;
				}
				return true;
			}
	</script>
<!-- //scripts -->
  <script src="/js/jquery-1.11.3.min.js"></script>
  <script src="/js/idangerous.swiper.js"></script>
  <script src="/js/slideInit.js"></script>
  <script src="/js/jqeury.appear.js"></script>  
  <script src="/js/owl.carousel.min.js"></script>
  <script src="/js/bxSlider.js"></script>
  <script src="/js/custom.select.js"></script> 
  <script src="/js/jquery-ui.min.js"></script>  
  <script src="/js/owner/script.js"></script>
  
<!-- \\ scripts \\ --> 
</body>
</html>