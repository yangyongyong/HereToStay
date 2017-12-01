<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
<form id='fr' action='/member/reservationResult.do' method="post">
<input type="hidden" name='penName' value="${Pension.penName}"/>
<input type="hidden" name='penAddr2' value='${Pension.penAddr2}' />
<input type="hidden" name='romId' value ='${Room.romId}'/>
<input type="hidden" name='romName' value ='${Room.romName}'/>
<input type="hidden" name='in' value ='${sessionScope.search.checkIn }'/>
<input type="hidden" name='out' value ='${sessionScope.search.checkOut }'/>
<input type="hidden" id ='tot' name='tot'/>
<input type="hidden"  name='penId' value ='${Pension.penId }'/>
<input type="hidden" name='PenIntro' value ='${Pension.penIntro }' />
<input type="hidden" name='penNoti'  value ='${Pension.penNoti}'/>
<input type="hidden" name='romPersons' value ='${sessionScope.search.persons}'/>

</form>
<!-- // authorize // -->
<jsp:include page="/WEB-INF/view/include/header.jsp"/>
<!-- main-cont -->
<div class="main-cont">
  <div class="body-wrapper">
    <div class="wrapper-padding">
    <div class="page-head">
      <div class="page-title">펜션 - <span>예약</span></div>
      <div class="breadcrumbs">
        <a href="/index.do">홈</a> / <a href="/member/pensionSearch.do?page=1&opt=what">펜션</a> / <span>hotel booking</span>
      </div>
      <div class="clear"></div>
    </div>

	<div class="sp-page">
		<div class="sp-page-a">
			<div class="sp-page-l">
  				<div class="sp-page-lb">
  					<div class="sp-page-p">
						<div class="booking-left">
							<h2>예약자 정보</h2>
							<div class="booking-form">
								<div class="booking-form-i">
									<label>ID:</label>
									<div class="input"><input type="text" value="${sessionScope.memId}" readonly/></div>
								</div>
								<div class="booking-form-i">
									<label>이름:</label>
									<div class="input"><input type="text" value="" readonly /></div>
								</div>
								<div class="booking-form-i">
									<label>Email Adress:</label>
									<div class="input"><input type="text" value="" /></div>
								</div>
								<div class="booking-form-i">
									<label>Confirm Email Adress:</label>
									<div class="input"><input type="text" value="" /></div>
								</div>
								<div class="booking-form-i">
									<label>Country code:</label>
									<div class="input"><input type="text" value="" /></div>
								</div>
								<div class="booking-form-i">
									<label>Preferred Phone Number:</label>
									<div class="input"><input type="text" value="" /></div>
								</div>
								<div class="clear"></div>
<!--               					<div class="checkbox"> -->
<!--                 					<label> -->
<!--                   						<input type="checkbox" value="" /> -->
<!--                   							I want to receive Sparrow news in the future -->
<!--                 					</label> -->
<!--               					</div> 		 -->
              					<div class="booking-devider"></div>						
							</div>
							<h2>결제 방식</h2>
							
							<div class="payment-wrapper">
								<div class="payment-tabs">
									<a href="#" class="active">Credit Card <span></span></a>
									<a href="#">휴대폰 결제 <span></span></a>
								</div>
								<div class="clear"></div>
								<div class="payment-tabs-content">
									<!-- // -->
									<div class="payment-tab">
										<div class="payment-type">
											<label>카드 종류:</label>
											<div class="card-type"><img alt="" src="/img/paymentt-01.png"></div>
											<div class="card-type"><img alt="" src="/img/paymentt-02.png"></div>
											<div class="card-type"><img alt="" src="/img/paymentt-03.png"></div>
											<div class="clear"></div>
										</div>
										<div class="booking-form">
											<div class="booking-form-i">
												<label>카드 번호:</label>
												<div class="input"><input type="text" value=""></div>
											</div>
											<div class="booking-form-i">
												<label>카드주 이름:</label>
												<div class="input"><input type="text" value=""></div>
											</div>
											<div class="booking-form-i">
												<label>유효 기간:</label>
												<div class="card-expiration">
												<select class="custom-select">
													<option>Month</option>
													<option>01</option>
													<option>02</option>
													<option>03</option>
													<option>04</option>
													<option>05</option>
													<option>06</option>
													<option>07</option>
													<option>08</option>
													<option>09</option>
													<option>10</option>
													<option>11</option>
													<option>12</option>
												</select>
												</div>
												<div class="card-expiration">
												<select class="custom-select card-year">
													<option>Year</option>
													<option>2015</option>
													<option>2016</option>
													<option>2017</option>
													<option>2018</option>
													<option>2019</option>
													<option>2020</option>
												</select>
												</div>
												<div class="clear"></div>
											</div>
											<div class="booking-form-i">
												<label>카드 cvs 번호:</label>
												<div class="inpt-comment">
													<div class="inpt-comment-l">
  														<div class="inpt-comment-lb">
    														<div class="input"><input type="text" value=""></div>
  														</div>
  														<div class="clear"></div>
													</div>
												</div>
												<div class="inpt-comment-r">
  													<div class="padding">
														<a href="#">What’s This?</a>
  													</div>
  													<div class="clear"></div>
												</div>
												<div class="clear"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div class="checkbox">
                							<label>
                  								<input type="checkbox" value="" />
                  								펜션의 모든 룰을 준수합니다.<a href="#">Terms & Conditions</a>
                							</label>
              							</div> 
									</div>
									<!-- \\ -->
									<!-- // -->
									<div class="payment-tab">
										<div class="payment-alert">
											<span>You will be redirected to PayPal's website to securely complete your payment.</span>
											<div class="payment-alert-close"><a href="#"><img alt="" src="/img/alert-close.png"></a></div>
										</div>
										<a href="#" class="paypal-btn">proceed to paypall</a>
									</div>
									<!-- \\ -->
								</div>
							</div>
						<div class="booking-complete">
								<h2>Review and book your trip</h2>
								<p>Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui voluptatem sequi nesciunt. </p>	
								<input type='button' id='reserve' class="booking-complete-btn" value ='예약 완료'/>
							</div>
							
						</div>
  					</div>
  				</div>
  				<div class="clear"></div>
			</div>
		</div>

		<div class="sp-page-r">
			
			<div class="checkout-coll">
				<div class="checkout-head">
					<div class="checkout-headl">
 						<a href="#"><img alt="" src="/img/check-img.png"></a>
					</div>
					<div class="checkout-headr">
  						<div class="checkout-headrb">
  							<div class="checkout-headrp">
    							<div class="chk-left">
    								<div class="chk-lbl"><a href="#">${Pension.penName} </a></div>
    								<div class="chk-lbl-a">${Pension.penAddr2}</div>
<!--     								<nav class="chk-stars"> -->
<!--     									<ul> -->
<!--     										<li><img alt="" src="/img/chk-star-b.png"></li> -->
<!--     										<li><img alt="" src="/img/chk-star-b.png"></li> -->
<!--     										<li><img alt="" src="/img/chk-star-b.png"></li> -->
<!--     										<li><img alt="" src="/img/chk-star-b.png"></li> -->
<!--     										<li><img alt="" src="/img/chk-star-a.png"></li> -->
<!--     									</ul> -->
<!--     									<div class="clear"></div> -->
<!--     								</nav> -->
    								
    							</div>
<!--     							<div class="chk-right"> -->
<!--     								<a href="#"><img alt="" src="/img/chk-edit.png"></a> -->
<!--     							</div> -->
    							<div class="clear"></div>
  							</div>
  						</div>
  						<div class="clear"></div>
					</div>
				</div>

				<div class="chk-lines">
					<div class="chk-line">
						<span class="chk-nights">${days} Nights</span>
						<span class="chk-dates">${sessionScope.search.checkIn} ~ ${sessionScope.search.checkOut}</span>
					</div>
					<div class="chk-line">
						1 STANDARD FAMILY ROOM FOR <span class="chk-persons">3 PERSONS</span>
					</div>
				</div>
				
				<div class="chk-details">
					<h2>상세보기</h2>
					<div class="chk-detais-row">
						<div class="chk-line">
							<span class="chk-l">Room type</span>
							<span class="chk-r">${Room.romName}</span>
							<div class="clear"></div>
						</div>
						<div class="chk-line">
							<span class="chk-l">price</span>
							<span class="chk-r">${romCost}원</span>
							<div class="clear"></div>
						</div>
						<div class="chk-line">
							<span class="chk-l">${days} nights stay</span>
							<span class="chk-r">${romCost *days} 원</span>
							<div class="clear"></div>
						</div>
<!-- 						<div class="chk-line"> -->
<!-- 							<span class="chk-l">taxes and fees per night</span> -->
<!-- 							<span class="chk-r">3.52$</span> -->
<!-- 							<div class="clear"></div> -->
<!-- 						</div> -->
					</div>
					<div class="chk-total">
						<div class="chk-total-l">Total Price</div>
						<div class="chk-total-r">${romCost *days} 원<input id='cost' type="hidden" value="${romCost *days}"/></div>
						<div class="clear"></div>
					</div>					
				</div>
				
			</div>
			
			<div class="h-help">
				<div class="h-help-lbl">Need Sparrow Help?</div>
				<div class="h-help-lbl-a">We would be happy to help you!</div>
				<div class="h-help-phone">2-800-256-124 23</div>
				<div class="h-help-email">sparrow@mail.com</div>
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
     <script type="text/javascript">
	 $("#reserve").click(function(){  	
  		$("#tot").val($('#cost').val());
  		$('#fr').attr('action','/member/reservationResult.do').submit();  		
  	});
  </script>
  
<!-- \\ scripts \\ --> 
 
</body>  
</html> 