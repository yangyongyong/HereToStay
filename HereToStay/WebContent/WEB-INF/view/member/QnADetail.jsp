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
<jsp:include page="/WEB-INF/view/include/header.jsp"/>

<!-- main-cont -->
<div class="main-cont">  	
	
	<div class="inner-page">
		<div class="inner-breadcrumbs">
			<div class="content-wrapper">
				<div class="page-title">문의사항</div>
				<div class="breadcrumbs">
        			<a href="/member/index.do">Home</a> /  <span>문의사항</span>
      			</div>
      			<div class="clear"></div>
      		</div>		
		</div>
		
	</div>
	
	<div class="blog-page">
		<div class="content-wrapper">



		<div class="blog-sidebar">
			<div class="blog-sidebar-l">
  				<div class="blog-sidebar-lb">
    				<div class="blog-sidebar-p">
						
						<div class="blog-row">
							<!-- // -->
								<div class="blog-post single-post">
								<div class="blog-post-i">
									<div class="blog-post-l">
										<div class="blog-post-date">
											<span>${qnaDetail.qnaDate}</span>
											<b>${qnaDetail.userId} 님</b>
										</div>
										<div class="blog-post-info">
											<c:choose>
												<c:when test="${qnaDetail.qnaStatus eq 'N'}">
													<div>답변대기</div>
												</c:when>
												<c:otherwise>
													<div>답변완료</div>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
									<div class="blog-post-c">
  										<div class="blog-post-cb">
    										<div class="blog-post-p">
												<div class="blog-post-title"><a>TITLE : ${qnaDetail.qnaTitle}</a></div>
    											<div class="blog-post-preview">
    												<div class="blog-post-img">
    													<a><img alt="" src="/img/blogpost-01.jpg"></a>
    												</div>
    											</div>
    											<div class="blog-post-txt">
    												<div class="text-quote">
    													<div class="text-quote-a">TYPE : ${qnaDetail.qnaType}</div>
    												</div>
    												<p>${qnaDetail.qnaContext}</p>
    												<br/><br/><br/><br/>
    											</div>
    											
    											<c:if test="${qnaDetail.qnaStatus eq 'Y'}">
    												<div class="blog-comments-lbl">${qnaDetail.mgrName}의 답변</div>
	    											<div class="blog-comments">
	    												<!-- // -->
	    												<div class="blog-comment-i">
															<div class="guest-reviews-a">
																<div class="guest-reviews-l">
																	<img alt="" src="/img/comment-01.png">
																</div>
																<div class="guest-reviews-r">
	  															<div class="guest-reviews-rb">
	  																<div class="blog-comment-lbl">${qnaDetail.mgrId}</div>
	  																<div class="blog-comment-txt">${qnaDetail.qnaReply}</div>
	  															</div>
	  															<br class="clear">
																</div>
															</div>
															<div class="clear"></div>
	    												</div>
	    												<!-- \\ -->
	    											</div>
    											</c:if>
    											
    										</div>
  										</div>
  										<div class="clear"></div>
									</div>
								</div>
								<div class="clear"></div>
								</div>
							<!-- \\ -->
						
						</div>				

						
    				</div>
  				</div>
  				<br class="clear" />
			</div>
		</div>
		<div class="blog-sidebar-r">
  			
  			<div class="h-help">
				<div class="h-help-lbl">질문 사항이 있으신가요?</div>
				<div class="h-help-lbl-a">'여기 없대' 가 도와드릴게요!</div>
				<div class="h-help-phone">031-548-1577</div>
				<div class="h-help-email">HereToStay@gmail.com</div>
			</div>
			<div class="h-reasons">
				<div class="h-liked-lbl">많은 서비스를 제공받으세요!</div>
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
								<p>마일리지를 제공받으세요</p>
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
								<p>손쉬운 펜션 검색을 해보세요</p>
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
								<p>여러장소의 펜션을 제공합니다</p>
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
<!-- /main-cont -->

<jsp:include page="/WEB-INF/view/include/footer.jsp"/>

<!-- // scripts // -->
  <script src="/js/jquery-1.11.3.min.js"></script>
  <script src="/js/jqeury.appear.js"></script>  
  <script src="/js/jquery-ui.min.js"></script> 
  <script src="/js/owl.carousel.min.js"></script>
  <script src="/js/bxSlider.js"></script>
  <script src="/js/custom.select.js"></script>
  <script src="/js/viewport.js"></script> 
  <script src="/build/mediaelement-and-player.min.js"></script> 
  <script type="text/javascript" src="/js/twitterfeed.js"></script>
  <script src="/js/script.js"></script>
  <script>
  	$(document).ready(function(){
		'use strict';
  		$('audio,video').mediaelementplayer(); 
    	$('.blog-post-st').bxSlider({
        	infiniteLoop: true,
        	speed: 600,
        	minSlides: 1,
        	maxSlides: 1,
        	moveSlides: 1,
        	auto: true,
        	slideMargin: 0      
    	});
  	});
  </script>
<!-- \\ scripts \\ --> 
 
</body>  
</html> 