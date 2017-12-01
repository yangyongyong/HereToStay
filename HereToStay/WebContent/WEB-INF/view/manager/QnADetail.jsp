<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
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

<style type="text/css">
#post-reply-btn {
	float : right;
}
</style>

</head>  
<body class="inner-body">  
<jsp:include page="/WEB-INF/view/include/mgr_header.jsp" />
<c:choose>
<c:when test="${Replyresult ne null}">
<script type="text/javascript">

if(${Replyresult} > 0){ 
	  location.href="QnAList.do"; 
}else{
	  history.back();
}
</script>
</c:when>
</c:choose>

<!-- main-cont -->
<div class="main-cont">  	
	
	<div class="inner-page">
		<div class="inner-breadcrumbs">
			<div class="content-wrapper">
				<div class="page-title">문의사항 상세보기</div>
				<div class="breadcrumbs">
        			<a href="#">관리자페이지</a> /  <span>문의사항</span>
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
											<span>${QnAmodel.qnaDate.substring(0,4)}년, ${QnAmodel.qnaDate.substring(5,7)}월</span>
											<b>${QnAmodel.qnaDate.substring(8,10)}일</b>
										</div>
<!-- 										<div class="blog-post-info"> -->
<!-- 											<div>질문 카테고리1</div> -->
<!-- 											<div>질문 카테고리2</div> -->
<!-- 										</div> -->
									</div>
									<div class="blog-post-c">
  										<div class="blog-post-cb">
    										<div class="blog-post-p">
												<div class="blog-post-title"><a>${QnAmodel.qnaTitle}</a></div>
    											<div class="blog-post-preview">
    												<div class="blog-post-img">
    													<a href="#"><img alt="" src="/img/blogpost-01.jpg"></a>
    												</div>
    											</div>
    											<div class="blog-post-txt">
    												<div class="text-quote">
    													<div class="text-quote-a">문의 유형(${QnAmodel.qnaType})</div>
    												</div>
    												<p>${QnAmodel.qnaContext}</p>
    												<br/><br/>
    											</div>
    										<c:choose>
    	<c:when test="${QnAmodel.qnaReply != null}">
    											<div class="blog-comments-lbl">
      	 
           1 개의 답변</div>
    											<div class="blog-comments">
    												<!-- // -->
    												<div class="blog-comment-i">
														<div class="guest-reviews-a">
															<div class="guest-reviews-l">
																<img alt="" src="/img/comment-01.png">
															</div>
															<div class="guest-reviews-r">
  															<div class="guest-reviews-rb">
  																<div class="blog-comment-lbl">${QnAmodel.mgrId}</div>
  																<div class="blog-comment-txt">${QnAmodel.qnaReply}</div>
  															</div>
  															<br class="clear">
															</div>
														</div>
														<div class="clear"></div>
    												</div>
    												<!-- \\ -->
    									
    											</div>
       </c:when>
       
       <c:otherwise>
          <div class="blog-comments-lbl"> 0개의 답변</div>
       </c:otherwise>
   

    							</c:choose>			
    							<form id ="QnARelpy"action="QnAreplyModify.do" method="post">
    								
    													<div class="post-comment">
    												<div class="blog-comments-lbl">답변 쓰기</div>
													<div class="booking-form-i">
														<label>Message:</label>
														<div class="textarea"><textarea name="qnaReply"></textarea></div>
														<input type="hidden" name="qnaId" value="${QnAmodel.qnaId}">
													</div>
													<button class="post-comment-btn" id="post-reply-btn">작 성</button>
    											</div>
    											</form>
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
				<div class="h-liked-lbl">Reasons to Book with us</div>
				<div class="h-reasons-row">
				<!-- // -->
					<div class="reasons-i">
					<div class="reasons-h">
						<div class="reasons-l">
							<img alt="" src="img/reasons-a.png">
						</div>
						<div class="reasons-r">
  						<div class="reasons-rb">
							<div class="reasons-p">
								<div class="reasons-i-lbl">Awesome design</div>
								<p>Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequunt.</p>
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
							<img alt="" src="img/reasons-b.png">
						</div>
						<div class="reasons-r">
  						<div class="reasons-rb">
							<div class="reasons-p">
								<div class="reasons-i-lbl">carefylly handcrafted</div>
								<p>Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequunt.</p>
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
							<img alt="" src="img/reasons-c.png">
						</div>
						<div class="reasons-r">
  						<div class="reasons-rb">
							<div class="reasons-p">
								<div class="reasons-i-lbl">sustomer support</div>
								<p>Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequunt.</p>
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
    	
		  $('#post-reply-btn').click(function(){
		    	$('#QnARelpy').submit();
		  	});
  	});  
  </script>
<!-- \\ scripts \\ --> 
 <jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>  
</html> 