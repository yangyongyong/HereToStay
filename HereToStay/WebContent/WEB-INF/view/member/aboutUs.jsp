<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Sparrow | Travel Agency</title>
  <meta name="description" content="" />
  <meta name="keywords" content="" />
  <meta charset="utf-8" /><link rel="icon" href="/favicon.png" />
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
<body class="inner-body">  

<!-- start header -->
<jsp:include page="/WEB-INF/view/include/header.jsp"/>
<!-- end header -->

<!-- main-cont -->
<div class="main-cont">  	
	
	<div class="inner-page">
		<div class="inner-breadcrumbs">
			<div class="content-wrapper">
				<div class="page-title">About us</div>
				<div class="breadcrumbs">
        			<a href="/member/index.do">Home</a> / <span>여기없대</span>
      			</div>
      			<div class="clear"></div>
      		</div>		
		</div>
		
		<div class="about-content">
			<div class="content-wrapper">
				<header class="page-lbl fly-in">
					<div class="offer-slider-lbl">Here To Stay & 여기없대</div>
					<p>'여기없대 ' 는 여러분에게 한결같은 서비스를 제공할 것을 약속합니다.</p>
				</header>			
				<!-- // interactive // -->
					<br/><br/>
					<div class="interactive-block">
						<div class="shortcodes-left fly-in"><img alt="" src="/img/interactive-img.png" /></div>
						<div class="shortcodes-right fly-in">
							<!-- // -->
							<div class="inter-i">
								<div class="inter-ia">
									<div class="inter-i-l" style="margin-left: -8px;">
										<img alt="" src="/img/icon-i-04.png"/>
									</div>
									<div class="inter-i-r">
  										<div class="inter-i-rb">
											<div class="inter-i-b">
  												<div class="inter-i-lbl">펜션 위치 서비스</div>
  												<div class="inter-i-txt">지도를 이용한 펜션 위치, 펜션 주변 편의시설 (주유소, 약국, 편의점 등), 펜션 주변 관광지를 여러분에게 보여드립니다.</div>
											</div>
  										</div>
  										<div class="clear"></div>
									</div>
								</div>
								<div class="clear"></div>						
							</div>
							<!-- \\ -->
							<!-- // -->
							<div class="inter-i">
								<div class="inter-ia">
									<div class="inter-i-l">
										<img alt="" src="/img/icon-i-05.png" />
									</div>
									<div class="inter-i-r">
  										<div class="inter-i-rb">
											<div class="inter-i-b">
  												<div class="inter-i-lbl">웹과 어플 제공</div>
  												<div class="inter-i-txt">웹 사이트 뿐만 아니라 '여기없대' 만의 어플을 여러분에게 제공함으로써 장소와 시간 제약 없이 이용 가능합니다.</div>
											</div>
  										</div>
  										<div class="clear"></div>
									</div>
								</div>
								<div class="clear"></div>						
							</div>
							<!-- \\ -->
							<!-- // -->
							<div class="inter-i">
								<div class="inter-ia">
									<div class="inter-i-l">
										<img alt="" src="/img/icon-i-07.png" />
									</div>
									<div class="inter-i-r">
  										<div class="inter-i-rb">
											<div class="inter-i-b">
  												<div class="inter-i-lbl">전국적인 펜션 등록</div>
  												<div class="inter-i-txt">한정적인 지역에만 펜션이 등록되있는 것이 아니라 전국 각지 여러장소의 펜션이 등록되있어 선택의 폭이 넓습니다.</div>
											</div>
  										</div>
  										<div class="clear"></div>
									</div>
								</div>
								<div class="clear"></div>						
							</div>
							<!-- \\ -->
						</div>
						<div class="clear"></div>
					</div>
				<!-- \\ interactive \\ -->
				<div class="clear"></div>
		</div>
		
		<div class="about-us-devider fly-in"></div>

<div class="typography">
		<div class="content-wrapper">
			<div class="shortcodes-block">

		<!-- // counters // -->
			<div class="counters">
				<div class="typography-heading fly-in" style="font-size:23px; color:#141d1e; display:block; font-family: 'Montserrat';">등록 현황</div>
				<div class="counters-four-colls fly-in">
					<div class="counters-row-i">
						<img alt="" src="/img/member/MyMember.png" />
						<b class="numscroller" data-slno='1' data-min='0' data-max='${aboutUsData.memberCount}' data-delay='1' data-increment="1">0</b>
						<span>가입한 사용자</span>
					</div>
					<div class="counters-row-i">
						<img alt="" src="/img/member/MyPension.png" />
						<b class="numscroller" data-slno='1' data-min='0' data-max='${aboutUsData.pensionCount}' data-delay='3' data-increment="1">0</b>
						<span>등록 된 펜션</span>
					</div>
					<div class="counters-row-i">
						<img alt="" src="/img/member/MyReserve.png" />
						<b class="numscroller" data-slno='1' data-min='0' data-max='${aboutUsData.reserveCount}' data-delay='4' data-increment="1">0</b>
						<span>예약 횟수</span>
					</div>
					<div class="counters-row-i">
						<img alt="" src="/img/member/MyReview.png" />
						<b class="numscroller" data-slno='1' data-min='0' data-max='${aboutUsData.reviewCount}' data-delay='5' data-increment="1">0</b>
						<span>작성 된 리뷰 개수</span>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<!-- \\ counters \\ -->

		</div>
	</div>
</div>
				
	
	<div class="our-team">
		<header class="page-lbl fly-in">
			<div class="offer-slider-lbl">개발자</div>
			<p>'여기없대 ' 의 기획 및 제작, 운영 팀을 보여줍니다.</p>
		</header>
		<div class="content-wrapper">
		
				<div class="tree-colls three-team fly-in">
					<div class="tree-colls-i">
						<div class="about-percent about-photo">
							<div class="about-photo-image">
								<div class="team-more-h">
									<div class="team-more">
										<div class="team-more-a">
											Project Manager. Here To Stay & '여기없대' 프로젝트의 총괄을 맡아 주요기능 으로는 지도, 펜션 검색 등을 구현했다.
											<div class="team-more-social">
												<a class="team-fb"></a>
												<a class="team-tw"></a>
												<a class="team-gp"></a>
												<a class="team-inst"></a>
												<a class="team-pint"></a>
												<a class="team-vk"></a>
											</div>
										</div>	
									</div>
								</div>								
								<img alt="" src="/img/about-01.jpg">
							</div>
							<div class="about-photo-lbl">김 소원</div>
							<div class="about-photo-sublbl">Project Manager</div>
						</div>
					</div>
					<div class="tree-colls-i">
						<div class="about-percent about-photo">
							<div class="about-photo-image">
								<div class="team-more-h">
									<div class="team-more">
										<div class="team-more-a">
											Project Leader. Here To Stay & '여기없대' 프로젝트의 스케줄러 역할을 맡아 PM 으로부터 지시를 받아 일정설계 후 팀원들에게 일정분배를 함으로써 프로젝트를 진행했다.
											<div class="team-more-social">
												<a class="team-fb"></a>
												<a class="team-tw"></a>
												<a class="team-gp"></a>
												<a class="team-inst"></a>
												<a class="team-pint"></a>
												<a class="team-vk"></a>
											</div>
										</div>	
									</div>
								</div>								
								<img alt="" src="/img/about-02.jpg">
							</div>
							<div class="about-photo-lbl">양 은지</div>
							<div class="about-photo-sublbl">Project Leader</div>
						</div>
					</div>
					<div class="tree-colls-i">
						<div class="about-percent about-photo">
							<div class="about-photo-image">
								<div class="team-more-h">
									<div class="team-more">
										<div class="team-more-a">
											Project Engineer. Here To Stay & '여기없대' 프로젝트의 개발자 열할을 맡아 주요기능 으로는 Mongo DB를 이용해 사진 등록, 보기 등을 구현했다.
											<div class="team-more-social">
												<a class="team-fb"></a>
												<a class="team-tw"></a>
												<a class="team-gp"></a>
												<a class="team-inst"></a>
												<a class="team-pint"></a>
												<a class="team-vk"></a>
											</div>
										</div>	
									</div>
								</div>								
								<img alt="" src="/img/about-03.jpg">
							</div>
							<div class="about-photo-lbl">신 승용</div>
							<div class="about-photo-sublbl">Project Engineer</div>
						</div>
					</div>
				</div>
				
				
				<div class="tree-colls three-team fly-in">
					<div class="tree-colls-i">
						<div class="about-percent about-photo">
							<div class="about-photo-image">
								<div class="team-more-h">
									<div class="team-more">
										<div class="team-more-a">
											Project Stakeholder. Here To Stay & '여기없대' 프로젝트의 이해관계자 역할을 밭아 프로젝트를 객관적인 시점으로 타당성 있는 프로젝트로 방향을 잡아줬다.
											<div class="team-more-social">
												<a class="team-fb"></a>
												<a class="team-tw"></a>
												<a class="team-gp"></a>
												<a class="team-inst"></a>
												<a class="team-pint"></a>
												<a class="team-vk"></a>
											</div>
										</div>	
									</div>
								</div>								
								<img alt="" src="/img/about-01.jpg">
							</div>
							<div class="about-photo-lbl">박 우빈</div>
							<div class="about-photo-sublbl">Project Stakeholder</div>
						</div>
					</div>
					<div class="tree-colls-i">
						<div class="about-percent about-photo">
							<div class="about-photo-image">
								<div class="team-more-h">
									<div class="team-more">
										<div class="team-more-a">
											Project Engineer. Here To Stay & '여기없대' 프로젝트의 개발자 열할을 맡아 주요기능 으로는 안드로이드 기능 구현을 했다.
											<div class="team-more-social">
												<a class="team-fb"></a>
												<a class="team-tw"></a>
												<a class="team-gp"></a>
												<a class="team-inst"></a>
												<a class="team-pint"></a>
												<a class="team-vk"></a>
											</div>
										</div>	
									</div>
								</div>								
								<img alt="" src="/img/about-02.jpg">
							</div>
							<div class="about-photo-lbl">채 우석</div>
							<div class="about-photo-sublbl">Project Engineer</div>
						</div>
					</div>
					<div class="tree-colls-i">
						<div class="about-percent about-photo">
							<div class="about-photo-image">
								<div class="team-more-h">
									<div class="team-more">
										<div class="team-more-a">
											Project Engineer. Here To Stay & '여기없대' 프로젝트의 개발자 열할을 맡아 주요기능 으로는 아두이노를 이용해 필요한 정보를 수집하는 기능 구현을 했다.
											<div class="team-more-social">
												<a class="team-fb"></a>
												<a class="team-tw"></a>
												<a class="team-gp"></a>
												<a class="team-inst"></a>
												<a class="team-pint"></a>
												<a class="team-vk"></a>
											</div>
										</div>	
									</div>
								</div>								
								<img alt="" src="/img/about-03.jpg">
							</div>
							<div class="about-photo-lbl">류 정욱</div>
							<div class="about-photo-sublbl">Project Engineer</div>
						</div>
					</div>
				</div>
				<div class="clear"></div>
		</div>
	</div>
	
	<div class="about-us-devider fly-in"></div>
			
		<div class="about-content" style="margin-bottom: 20px;">
			<div class="content-wrapper">
				<header class="page-lbl fly-in">
					<div class="offer-slider-lbl">제공하는 서비스</div>
					<p>사용자에게 제공하는 '여기없대 ' 만의 서비스에 대해 소개합니다.</p>
				</header>			
				<div class="services fly-in">
					<div class="services-row">
						<!-- // -->
						<div class="services-i">
							<div class="services-img"><img alt="" src="/img/services-01.png"></div>
							<div class="services-lbl">펜션 위치 서비스</div>
							<div class="services-txt">지도를 이용한 펜션 위치, 펜션 주변 편의시설 (주유소, 약국, 편의점 등), 관광지를 여러분에게 보여드립니다.</div>
						</div>
						<!-- \\ -->
						<!-- // -->
						<div class="services-i">
							<div class="services-img"><img alt="" src="/img/services-02.png"></div>
							<div class="services-lbl">전국적인 펜션 등록</div>
							<div class="services-txt">한정적인 지역에만 펜션이 등록되있는 것이 아니라 전국 각지 여러장소의 펜션이 등록되있어 선택의 폭이 넓습니다.</div>
						</div>
						<!-- \\ -->
						<!-- // -->
						<div class="services-i">
							<div class="services-img"><img alt="" src="/img/services-03.png"></div>
							<div class="services-lbl">손쉬운 펜션 검색</div>
							<div class="services-txt">원하는 펜션의 옵션 정보 (위치, 인원, 수영장 유무, 가격 등) 을 입력하면 그에 해당하는 펜션을 바로 찾을 수 있습니다.</div>
						</div>
						<!-- \\ -->
						<!-- // -->
						<div class="services-i">
							<div class="services-img"><img alt="" src="/img/services-04.png"></div>
							<div class="services-lbl">실시간 질의사항 서비스</div>
							<div class="services-txt">실시간으로 사용자의 질의사항을 해결 할 수 있는 서비스를 제공하고 있어 문제점을 빠르게 해결 할 수 있습니다.</div>
						</div>
						<!-- \\ -->
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	
</div>
</div>
</div>
<!-- /main-cont -->

<!-- footer start -->
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
<!-- footer end -->

<!-- // scripts // -->
  <script src="/js/jquery-1.11.3.min.js"></script>
  <script src="/js/jqeury.appear.js"></script>  
  <script src="/js/jquery-ui.min.js"></script> 
  <script src="/js/owl.carousel.min.js"></script>
  <script src="/js/bxSlider.js"></script>
  <script src="/js/custom.select.js"></script>
  <script src="/js/viewport.js"></script>
  <script src="/js/jquery.easypiechart.js"></script> 
  <script src="/js/numscroller-1.0.js"></script>
  <script type="text/javascript" src="/js/twitterfeed.js"></script>
  <script src="/js/script.js"></script>
  <script>
  	$(document).ready(function(){
		'use strict';
		$('.blog-post-st').bxSlider({
        	infiniteLoop: true,
        	speed: 600,
        	minSlides: 1,
        	maxSlides: 1,
        	moveSlides: 1,
        	auto: true,
        	slideMargin: 0      
    	});
		
  		$(function() {
    	  $(document.body).on('appear', '.fly-in', function(e, $affected) {
      		$(this).addClass("appeared");	
    		$('.about-percent-a').each(function(){
				var $value = $(this).attr('data-percentage');
        		if ( $(this).is(':in-viewport')) {
      				$(this).find('span').animate({width: $value+'%'},1400 );      
        		}    
    		});
    	  });
    	  $(document.body).on('appear', '.pie-charts-i.fly-in', function(e, $affected) {
      		$(this).addClass("appeared");	
			$('.chart').easyPieChart({
				scaleColor:false,
				lineWidth:'5',
				barColor:'#8b8b8b',
				trackColor:'#e1e1e1',
				animate:1800,
				size:'131',
				onStep: function(from, to, percent) {
					$(this.el).find('.percent').text(Math.round(percent));
				}
			});	
    	  });  
    	  $('.fly-in').appear({force_process: true});
  		});  		
  	});
  </script>
  
<!-- \\ scripts \\ --> 
 
</body>  
</html>