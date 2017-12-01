<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Sparrow | Travel Agency</title>
  <meta name="description" content="" />
  <meta name="keywords" content="" />
  <meta charset="utf-8" /><link rel="icon" href="favicon.png" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> 
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
  <div class="body-wrapper">
    <div class="wrapper-padding">
    <div class="page-head">
      <div class="page-title">Pension - <span>Pension detail view</span></div>
      <div class="breadcrumbs">
        <a href="/index.do">Home</a> / <span>예약 완료</span>
      </div>
      <div class="clear"></div>
    </div>

	<div class="sp-page">
		<div class="sp-page-a">
			<div class="sp-page-l">
  				<div class="sp-page-lb">
  					<div class="sp-page-p">
						<div class="booking-left">
							<h2>예약이 완료 되었습니다.</h2>
							
							<div class="comlete-alert">
								<div class="comlete-alert-a">
									<b>${reservationDetail.penName}</b>
									<span>${reservationDetail.penAddr2}</span>
								</div>
							</div>
							
							<div class="complete-info">
								<h2>펜션 예약정보</h2>
								<div class="complete-info-table">
									<div class="complete-info-i">
										<div class="complete-info-l">객실 정보</div>
										<div class="complete-info-r">${reservationDetail.romName}</div>
										<div class="clear"></div>
									</div>
									<div class="complete-info-i">
										<div class="complete-info-l">체크 인</div>
										<div class="complete-info-r">${reservationDetail.resIndate}</div>
										<div class="clear"></div>
									</div>
									<div class="complete-info-i">
										<div class="complete-info-l">체크 아웃</div>
										<div class="complete-info-r">${reservationDetail.resOutdate}</div>
										<div class="clear"></div>
									</div>
									<div class="complete-info-i">
										<div class="complete-info-l">결제 금액</div>
										<div class="complete-info-r">&#8361;${reservationDetail.resTot}</div>
										<div class="clear"></div>
									</div>
									<div class="complete-info-i">
										<div class="complete-info-l">이용 인원</div>
										<div class="complete-info-r">${reservationDetail.romPeople}</div>
										<div class="clear"></div>
									</div>
								</div>
								
								<div class="complete-devider"></div>
								
								<div class="complete-txt">
									<h2>펜션 상세설명</h2>
									<p>${reservationDetail.penIntro}</p>
									<div class="complete-txt-link"><a href="/member/pensionDetail.do?id=${reservationDetail.penId}">펜션 보러가기</a></div>
								</div>
								
								<div class="complete-devider"></div>
								
								<div class="complete-txt final">
									<h2>주의사항</h2>
									<p>${reservationDetail.penNoti}</p>
								</div>
								
							</div>
						

						</div>
  					</div>
  				</div>
  				<div class="clear"></div>
			</div>
		</div>

		<div class="sp-page-r">

			<div class="h-help">
				<div class="h-help-lbl">질문 사항이 있으신가요?</div>
				<div class="h-help-lbl-a">'여기 없대' 가 도와드릴게요!</div>
				<div class="h-help-phone">031-548-1577</div>
				<div class="h-help-email">HereToStay@gmail.com</div>
			</div>
			<div class="h-reasons">
				<div class="h-liked-lbl">좀더 많은 서비스를 받아볼 수 있습니다.</div>
				<div class="h-reasons-row">
				<!-- // -->
					<div class="reasons-i">
					<div class="reasons-h">
						<div class="reasons-l">
							<img alt="" src="/img/reasons-a.png">
						</div>
						<div class="reasons-r">
  						<div class="reasons-rb">
							<div class="reasons-p">
								<div class="reasons-i-lbl">마일리지 제공</div>
								<p>'여기없대'로 예약하고 펜션을 이용하셨다면 리뷰를 작성해보세요! 리뷰를 작성한 고객 100%에게 마일리지를 제공해드립니다.</p>
							</div>
  						</div>
  						<br class="clear">
						</div>
					</div>
					<div class="clear"></div>
					</div>
				<!-- \\ -->	
				<!-- // -->
					<div class="reasons-i">
					<div class="reasons-h">
						<div class="reasons-l">
							<img alt="" src="/img/reasons-b.png">
						</div>
						<div class="reasons-r">
  						<div class="reasons-rb">
							<div class="reasons-p">
								<div class="reasons-i-lbl">편리한 펜션 검색기능 제공</div>
								<p>각 펜션별로 옵션을 나눠났기 때문에 고객이 원하는 타입 별로 펜션을 검색할 수 있습니다. 지금 빠르고 손쉽게 펜션검색을 해보세요!</p>
							</div>
  						</div>
  						<br class="clear">
						</div>
					</div>
					<div class="clear"></div>
					</div>
				<!-- \\ -->	
				<!-- // -->
					<div class="reasons-i">
					<div class="reasons-h">
						<div class="reasons-l">
							<img alt="" src="/img/reasons-c.png">
						</div>
						<div class="reasons-r">
  						<div class="reasons-rb">
							<div class="reasons-p">
								<div class="reasons-i-lbl">전국적인 펜션 제공</div>
								<p>대한민국 어떤 곳이든 많은 펜션이 '여기없대'에 등록되어 있습니다. '여기없대'를 통해서 국내 여행에 한걸음 더 다가가세요!</p>
							</div>
  						</div>
  						<br class="clear">
						</div>
					</div>
					<div class="clear"></div>
					</div>
				<!-- \\ -->				
				</div>
			</div>
			
		</div>
		<div class="clear"></div>
	</div>

    </div>	
  </div>  
</div>
<!-- /main-cont -->

<jsp:include page="/WEB-INF/view/include/footer.jsp"/>

<!-- // scripts // -->
  <script src="/js/jquery-1.11.3.min.js"></script>
  <script src="/js/jqeury.appear.js"></script>  
  <script src="/js/jquery-ui.min.js"></script> 
  <script src="/js/owl.carousel.min.js"></script>
  <script src="/js/bxSlider.js"></script>
  <script src="/js/jquery.formstyler.js"></script> 
  <script src="/js/custom.select.js"></script>   
  <script type="text/javascript" src="/js/twitterfeed.js"></script>  
  <script src="/js/script.js"></script>
  <script type="text/javascript" src="/js/member/reserveDelete.js"></script>
  <script>
  	$(document).ready(function(){
		'use strict';
		(function($) {
			$(function() {
				$('.checkbox input').styler({
					selectSearch: true
				});
			});
		})(jQuery);
  	});
  </script>
<!-- \\ scripts \\ --> 
 
</body>  
</html> 