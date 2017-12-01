<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/include/login_logout.jsp"></jsp:include>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

  <meta name="description" content="" />
  <meta name="keywords" content="" />
  <meta charset="utf-8" />
  <link rel="icon" href="favicon.png" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" /> 
  <link rel="stylesheet" href="/css/jquery-ui.css" />
  <link rel="stylesheet" href="/css/owl.carousel.css" />
  <link rel="stylesheet" href="/css/idangerous.swiper.css" />
  <link rel="stylesheet" href="/css/style.css" />
  <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css' />
  <link href='http://fonts.googleapis.com/css?family=Lora:400,400italic' rel='stylesheet' type='text/css' />
  <link href='http://fonts.googleapis.com/css?family=Raleway:100,200,300,400,600,700,800' rel='stylesheet' type='text/css' />
  <link href='http://fonts.googleapis.com/css?family=Raleway:400,600' rel='stylesheet' type='text/css' />
  <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css' />
  <link href='http://fonts.googleapis.com/css?family=Lato:400,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css' />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css' />
<style>
	.autorize-bottom{min-width: 0; height:auto;}
	.autorize-bottom > a:hover{color:#ff7200; transition:0.8s;}
    .autorize-tab-a,.autorize-tab-b{height:37px;}
	.autorize-tab-content input[type='text']{text-transform: none;}
	.autorize-tab-content input[type='password']{border: 1px solid #ebebeb; background: #fff; width: 381px; border-radius: 3px; 
	font-size: 11px; padding: 10px 8px 10px 8px; font-family: 'Raleway'; font-weight: 600;  color: #8a8a8a; margin-bottom: 15px;}
	input::-webkit-input-placeholder { color:#f2f2f2 }
	input::-moz-placeholder { color:#f2f2f2 }
	input::-ms-placeholder { color:#f2f2f2 }
	.header-account a{border:none; padding:0;}
	.authorize-btn{padding:0;}
	.header-account{float:left;}
	.mobile-menu li{overflow:hidden;}

	.m{padding-bottom:16px;}  
</style>
<header id="top">
		<div class="header-b">
		<!-- // mobile menu // -------------------------------------------------------------------------------->
			<div class="mobile-menu">
				<nav>
					<ul>
						<c:choose>
								<c:when test="${sessionScope.id ne null }">
									<li><a href="/owner/Step1Pension.do">펜션등록</a></li>
									<li><a href="/owner/Step2Room.do">객실등록</a></li>
									<li><a href="/owner/Reservation.do">예약리스트</a></li>
								</c:when>
								<c:otherwise>	
									<li><span class="header-account m"><a href="/owner/Step1Pension.do">펜션등록</a></span></li>
									<li><span class="header-account m"><a href="/owner/Step2Room.do">객실등록</a></span></li>
									<li><span class="header-account m"><a href="/owner/Reservation.do">예약리스트</a></span></li>
								</c:otherwise>
						</c:choose>				
						<c:choose>
							<c:when test="${sessionScope.id ne null }">
								<li>${sessionScope.id} 님 반갑습니다.</li>
								<li><a href="/owner/logout.do">로그아웃</a></li>
							</c:when>
							<c:otherwise>	
								<li><span class="header-account m"><a href="#">로그인</a></span></li>
								<li><a href="/owner/Register.do">회원가입</a></li>
							</c:otherwise>
						</c:choose>	
					</ul>
				</nav>	
			</div>
		<!-- \\ mobile menu \\ ------------------------------------------------------------------------->
		<!-- pc 화면 menu -------------------------------------------------------------------------------->	
		<div class="wrapper-padding">
			<div class="header-logo"><a href="index.html"><img alt="" src="/img/logo.png" /></a></div>
			<div class="header-right">
				<div class="hdr-srch-overlay">
					<div class="hdr-srch-overlay-a">
						<input type="text" value="" placeholder="Start typing...">
						<a href="#" class="srch-close"></a>
						<div class="clear"></div>
					</div>
				</div>	
				<a href="#" class="menu-btn"></a>
				<div class="hdr-srch-devider"></div>
				<nav class="header-nav">
					<ul>
						<li><a href="#">펜션관리</a>
							<ul>
								<c:choose>
									<c:when test="${sessionScope.id ne null }">
										<li><a href="/owner/Step1Pension.do">펜션등록</a></li>
										<li><a href="/owner/Step2Room.do">객실등록</a></li>
									</c:when>
									<c:otherwise>	
										<li class="header-account"><a href="/owner/Step1Pension.do">펜션등록</a></li>
										<li class="header-account"><a href="/owner/Step2Room.do">객실등록</a></li>
									</c:otherwise>
								</c:choose>
							</ul>
						</li>
						<c:choose>
							<c:when test="${sessionScope.id ne null }">
								<li><a href="/owner/Reservation.do">예약리스트</a></li>	
							</c:when>
							<c:otherwise>	
								<li class="header-account"><a href="/owner/Reservation.do">예약리스트</a></li>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${sessionScope.id ne null }">
								<li>${sessionScope.id} 님 반갑습니다.</li>
								<li><a href="/owner/logout.do">로그아웃</a></li>
							</c:when>
							<c:otherwise>	
								<li class="header-account"><a href="#">로그인</a></li>
								<li><a href="/owner/Register.do">회원가입</a></li>
							</c:otherwise>
						</c:choose>	
					</ul>
				</nav>
			</div>
			<div class="clear"></div>
		</div>
		<!-- //pc화면 menu -------------------------------------------------------------------------------->	
	</div>	
</header>
