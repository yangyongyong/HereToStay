<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Sparrow | Travel Agency</title>
  <meta name="description" content="" />
  <meta name="keywords" content="" />
  <meta charset="utf-8" /><link rel="icon" href="favicon.png" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <link rel="stylesheet" href="/build/mediaelementplayer.min.css" />
  <link rel="stylesheet" href="/css/jquery.formstyler.css">  
  <link rel="stylesheet" href="/css/style.css" />
  <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Lora:400,400italic' rel='stylesheet' type='text/css'>    
  <link href='http://fonts.googleapis.com/css?family=Raleway:300,400,500,700' rel='stylesheet' type='text/css'>  
  <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css'>
</head>  
<body>  
<jsp:include page="/WEB-INF/view/include/header.jsp"/>

<!-- main-cont -->
<div class="main-cont">

	<div class="inner-page">
		<div class="inner-breadcrumbs" style="margin-bottom : 0px;">
			<div class="content-wrapper">
				<div class="page-title">문의사항</div>
				<div class="breadcrumbs">
        			<a href="/member/index.do">Home</a> /  <span>문의사항</span>
      			</div>
      			<div class="clear"></div>
      		</div>		
		</div>
		
	</div>
 	
 	<div class="contacts-page-holder">
 	<div class="contacts-page">
		<header class="page-lbl">
			<div class="offer-slider-lbl">문의 사항을 보내주세요</div>
		</header> 	
		
		<div class="contacts-colls">
			<div class="contacts-colls-l">
				<div class="contact-colls-lbl">직접 문의하시길 원하나요?</div>
				<div class="contacts-colls-txt">
					<p>Address : 가산디지털 1로 149, 가산동 371-59 </p>
					<p>Telephones : +82 2-156-1577</p>
					<p>E-mail : HereToStay@gmail.com</p>
					<p>Kakao : HTS</p>
					<div class="side-social">
        				<a class="side-social-twitter"></a>
        				<a class="side-social-facebook"></a>
        				<a class="side-social-vimeo"></a>
        				<a class="side-social-pinterest"></a>
        				<a class="side-social-instagram"></a> 
      				</div>
				</div>
			</div>
			
			<form action="/member/qnaInsert.do" id="qnaSend" method="post">
				<div class="contacts-colls-r">
	  				<div class="contacts-colls-rb">
						<div class="contact-colls-lbl">Q & A</div>
						<div class="booking-form">
								<div class="booking-form-i">
									<label>QnA 제목 :</label>
									<div class="input"><input type="text" id="qnaTitle" name="qnaTitle" /></div>
								</div>
								<div class="booking-form-i">
									<label>QnA 타입 :</label>
									<div class="search-select">
		    							<select name="qnaType" id="qnaType">
		    								<option>펜션관리</option>
		    								<option>예약관리</option>
		    								<option>불만사항</option>
		    								<option>기타</option>
		    							</select>
					    		   </div>
								</div>
								<div class="booking-form-i textarea">
									<label>QnA 사진첨부 :</label>
									<input type="file" id="qnaPhoto" name="qnaPhoto"/>
								</div>
								<div class="clear"></div>
								<div class="booking-form-i textarea">
									<label>QnA 내용 :</label>
									<div class="textarea-wrapper">
										<textarea name="qnaContext" id="qnaContext"></textarea>
									</div>
								</div>
								<div class="clear"></div>
								<input type="button" class="contacts-send" id="sendQnA" value="Send Q&A"/>
						</div>
	  				</div>
	  			<div class="clear"></div>
				</div>
			</form>
			</div>
		<div class="clear"></div>	
 	</div>
 	</div>
 	
</div>
<!-- /main-cont -->

<jsp:include page="/WEB-INF/view/include/footer.jsp"/>

<!-- // scripts // -->
  <script src="/js/jquery-1.11.3.min.js"></script>
  <script src="/js/jquery.form.js"></script>
  <script src="/js/jqeury.appear.js"></script>  
  <script src="/js/jquery-ui.min.js"></script> 
  <script src="/js/owl.carousel.min.js"></script>
  <script src="/js/bxSlider.js"></script>
  <script src="/js/jquery.formstyler.js"></script> 
  <script src="/js/custom.select.js"></script>    
  <script type="text/javascript" src="/js/twitterfeed.js"></script>
  <script src="/js/script.js"></script>
  <script type="text/javascript" src="/js/member/sendQnAJS.js"></script>
  
<!-- \\ scripts \\ --> 
 
</body>  
</html> 