<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%@page import="hts.model.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Sparrow | Travel Agency</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta charset="utf-8" />
<link rel="icon" href="favicon.png" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="/build/mediaelementplayer.min.css" />
<link rel="stylesheet" href="/css/jquery.formstyler.css">
<link rel="stylesheet" href="/css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lora:400,400italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Raleway:300,400,500,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=PT+Sans:400,700&amp;subset=latin,cyrillic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;subset=latin,cyrillic'
	rel='stylesheet' type='text/css'>

<style type="text/css">
.solutions-over-c b {
	font-family: 'Montserrat';
	font-weight: normal;
	letter-spacing: -0.03em;
	display: block;
	font-size: 20px;
	margin-bottom: 6px;
	color: #ff7200;
	line-height: 15px;
}

.solutions-over-c span {
	font-family: 'Raleway';
	font-size: 9px;
	font-weight: 600;
	text-transform: uppercase;
	color: #FFFFFF;
}

a {
	color: #fff;
	text-decoration: none;
}
</style>
<script type="text/javascript">
function fn_movePage(val){
    jQuery("input[name=pageNo]").val(val);
    jQuery("form[name=frm]").attr("method", "post");
    jQuery("form[name=frm]").attr("action","").submit();
}

</script>
</head>
<body class="inner-body">
	<jsp:include page="/WEB-INF/view/include/mgr_header.jsp" />

	<form id="memberInfo">

		<!-- main-cont -->
		<div class="main-cont">

			<div class="inner-page">
				<div class="inner-breadcrumbs">
					<div class="content-wrapper">
						<div class="page-title">문의사항</div>
						<div class="breadcrumbs">
							<a href="#">관리자페이지</a> / <span>문의사항리스트</span>
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</div>

			<div class="typography">
				<div class="content-wrapper">

					<!-- // tabs // -->
					<div class="tabs" style="margin-top: -50px;">
						<!-- // -->
						<div class="tabs-type-b tabs-block">
							<div class="tabs-type-bi">
								<div class="tabs-type-bi-a">
									<div class="tabs-type-bi-l">
										<nav class="tabs-nav">
											<ul id="rowTab">
												<li><a class="active" href="#" data-toggle="tab">전체<span></span></a></li>
												<li><a href="#"  data-toggle="tab">고객<span></span></a></li>
												<li><a href="#"  data-toggle="tab">사장님 <span></span></a></li>
											</ul>
											<div class="clear"></div>
										</nav>
									</div>
									<div class="tabs-type-bi-r">
										<div class="tabs-type-bi-rb">
											<div class="tabs-type-bi-p">
												<div class="tabs-content">
													<!-- Start of 전체 문의사항 리스트  -->
													<div class="tabs-content-i" style="margin-left: 70px;">
														<p>
														<h2>전체 문의 리스트</h2>
														<br />
														<div class="padding">

															<c:forEach var="QnA" items="${QnAlist}"
																varStatus="status">
																<c:choose>
																	<c:when test="${(status.count)%3 eq 1}">
																		<div class="services fly-in">
																			<div class="solutions-row fly-in">
																				<!-- // -->
																				<div class="solutions-i">
																					<div class="solution-icon-a"></div>
																					<div class="solutions-over">
																						<div class="solutions-over-a">
																							<div class="solutions-over-b">
																								<div class="solutions-over-c">
																									<i class="solution-icon"></i>
																									<div class="solution-lbl">${QnA.qnaTitle}</div>
																									<br />
																									<br />
																									<c:choose>
																										<c:when test="${QnA.qnaStatus eq 'N'}">
																											<b>답변대기</b>
																										</c:when>
																										<c:otherwise>
																											<b>답변완료</b>
																										</c:otherwise>
																									</c:choose>
																									<span>${QnA.qnaDate}</span>
																								</div>
																								<div class="solutions-over-d">
																									<i class="solution-icon"></i>
																									<!-- 디테일페이지로 이동 -->
																					<div class="solution-txt"><a href="qnaDetail.do?qnaId=${QnA.qnaId}">${QnA.qnaContext}</a></div>
																								</div>
																							</div>
																						</div>
																					</div>
																					<div class="solutions-img">
																						<img alt="" src="/img/solution-01.jpg">
																					</div>
																				</div>
																				<!-- \\ -->
																	</c:when>
																	<c:otherwise>
																		<!-- // -->
																		<div class="solutions-i">
																			<div class="solution-icon-a"></div>
																			<div class="solutions-over">
																				<div class="solutions-over-a">
																					<div class="solutions-over-b">
																						<div class="solutions-over-c">
																							<i class="solution-icon"></i>
																							<div class="solution-lbl">${QnA.qnaTitle}</div>
																							<br />
																							<br />
																							<c:choose>
																								<c:when test="${QnA.qnaStatus eq 'N'}">
																									<b>답변대기</b>
																								</c:when>
																								<c:otherwise>
																									<b>답변완료</b>
																								</c:otherwise>
																							</c:choose>
																							<span>${QnA.qnaDate}</span>
																						</div>
																						<div class="solutions-over-d">
																							<i class="solution-icon"></i>
																							<!-- 디테일페이지로 이동 -->
																					<div class="solution-txt"><a href="qnaDetail.do?qnaId=${QnA.qnaId}">${QnA.qnaContext}</a></div>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="solutions-img">
																				<img alt="" src="/img/solution-01.jpg">
																			</div>
																		</div>
																		<!-- \\ -->
																	</c:otherwise>
																</c:choose>

																<c:if test="${(status.count)%3 eq 0}">
														</div>
														<div class="clear"></div>
													</div>
													</c:if>
													</c:forEach>

													<div class="clear"></div>

													<!-- Start of 페이징 처리  -->
													<form name="frm">
														<input type="hidden" name="pageNo" />
														<div id="page" class="pagination">
															<c:if test="${pageVO.pageNo != 0}">

																<span> <c:forEach var="i"
																		begin="${pageVO.startPageNo}"
																		end="${pageVO.endPageNo}" step="1">
																		<c:choose>
																			<c:when test="${i eq pageVO.pageNo}">
																				<a href="javascript:fn_movePage(${i})"
																					style="text-decoration: none;"> <font
																					style="font-weight: bold;">${i}</font>
																				</a>
																			</c:when>
																			<c:otherwise>
																				<a href="javascript:fn_movePage(${i})"
																					style="text-decoration: none;">${i}</a>
																			</c:otherwise>
																		</c:choose>
																	</c:forEach>
																</span>
															</c:if>
														</div>
													</form>
													<!-- End of 페이징 처리  -->
												</div>
												<br class="clear" />

												</p>
											</div>
										</div>
									</div>

									<!-- End of 전체 문의사항 리스트 -->
									<!-- Start of 고객 문의사항 리스트  -->
									<div class="tabs-content-i" style="margin-left: 70px;">
										<p>
										<h2>고객 문의사항</h2>
										<br />
										<div class="padding">

											<c:forEach var="QnA" items="${memlist}" varStatus="status">
												<c:choose>
													<c:when test="${(status.count)%3 eq 1}">
														<div class="services fly-in">
															<div class="solutions-row fly-in">
																<!-- // -->
																<div class="solutions-i">
																	<div class="solution-icon-a"></div>
																	<div class="solutions-over">
																		<div class="solutions-over-a">
																			<div class="solutions-over-b">
																				<div class="solutions-over-c">
																					<i class="solution-icon"></i>
																					<div class="solution-lbl">${QnA.qnaTitle}</div>
																					<br />
																					<br />
																					<c:choose>
																						<c:when test="${QnA.qnaStatus eq 'N'}">
																							<b>답변대기</b>
																						</c:when>
																						<c:otherwise>
																							<b>답변완료</b>
																						</c:otherwise>
																					</c:choose>
																					<span>${QnA.qnaDate}</span>
																				</div>
																				<div class="solutions-over-d">
																					<i class="solution-icon"></i>
																					<!-- 디테일페이지로 이동 -->
																					<div class="solution-txt"><a href="qnaDetail.do?qnaId=${QnA.qnaId}">${QnA.qnaContext}</a></div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="solutions-img">
																		<img alt="" src="/img/solution-01.jpg">
																	</div>
																</div>
																<!-- \\ -->
													</c:when>
													<c:otherwise>
														<!-- // -->
														<div class="solutions-i">
															<div class="solution-icon-a"></div>
															<div class="solutions-over">
																<div class="solutions-over-a">
																	<div class="solutions-over-b">
																		<div class="solutions-over-c">
																			<i class="solution-icon"></i>
																			<div class="solution-lbl">${QnA.qnaTitle}</div>
																			<br />
																			<br />
																			<c:choose>
																				<c:when test="${QnA.qnaStatus eq 'N'}">
																					<b>답변대기</b>
																				</c:when>
																				<c:otherwise>
																					<b>답변완료</b>
																				</c:otherwise>
																			</c:choose>
																			<span>${QnA.qnaDate}</span>
																		</div>
																		<div class="solutions-over-d">
																			<i class="solution-icon"></i>
																			<!-- 디테일페이지로 이동 -->
																					<div class="solution-txt"><a href="qnaDetail.do?qnaId=${QnA.qnaId}">${QnA.qnaContext}</a></div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="solutions-img">
																<img alt="" src="/img/solution-01.jpg">
															</div>
														</div>
														<!-- \\ -->
													</c:otherwise>
												</c:choose>

												<c:if test="${(status.count)%3 eq 0}">
										</div>
										<div class="clear"></div>
									</div>
									</c:if>
									</c:forEach>

									<div class="clear"></div>


									<!-- Start of 페이징 처리  -->
									<form name="frm">
										<input type="hidden" name="pageNo" />
										<div id="page" class="pagination">
											<c:if test="${pageVO1.pageNo != 0}">

												<span> <c:forEach var="i"
														begin="${pageVO1.startPageNo}" end="${pageVO1.endPageNo}"
														step="1">
														<c:choose>
															<c:when test="${i eq pageVO1.pageNo}">
																<a href="javascript:fn_movePage(${i})"
																	style="text-decoration: none;"> <font
																	style="font-weight: bold;">${i}</font>
																</a>
															</c:when>
															<c:otherwise>
																<a href="javascript:fn_movePage(${i})"
																	style="text-decoration: none;">${i}</a>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</span>
											</c:if>
										</div>
									</form>
									<!-- End of 페이징 처리  -->
								</div>
								<br class="clear" />

								</p>
							</div>
							<!-- End of 고객 문의사항 리스트 -->
							<!-- Start of 사장 문의사항 리스트  -->
							<div class="tabs-content-i" style="margin-left: 70px;">
								<p>
								<h2>사장 문의사항</h2>
								<br />
								<div class="padding">

									<c:forEach var="QnA" items="${ownerlist}" varStatus="status">
										<c:choose>
											<c:when test="${(status.count)%3 eq 1}">
												<div class="services fly-in">
													<div class="solutions-row fly-in">
														<!-- // -->
														<div class="solutions-i">
															<div class="solution-icon-a"></div>
															<div class="solutions-over">
																<div class="solutions-over-a">
																	<div class="solutions-over-b">
																		<div class="solutions-over-c">
																			<i class="solution-icon"></i>
																			<div class="solution-lbl">${QnA.qnaTitle}</div>
																			<br />
																			<br />
																			<c:choose>
																				<c:when test="${QnA.qnaStatus eq 'N'}">
																					<b>답변대기</b>
																				</c:when>
																				<c:otherwise>
																					<b>답변완료</b>
																				</c:otherwise>
																			</c:choose>
																			<span>${QnA.qnaDate}</span>
																		</div>
																		<div class="solutions-over-d">
																			<i class="solution-icon"></i>
																			<div class="solution-txt"><a href="qnaDetail.do?qnaId=${QnA.qnaId}">${QnA.qnaContext}</a></div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="solutions-img">
																<img alt="" src="/img/solution-01.jpg">
															</div>
														</div>
														<!-- \\ -->
											</c:when>
											<c:otherwise>
												<!-- // -->
												<div class="solutions-i">
													<div class="solution-icon-a"></div>
													<div class="solutions-over">
														<div class="solutions-over-a">
															<div class="solutions-over-b">
																<div class="solutions-over-c">
																	<i class="solution-icon"></i>
																	<br />
																	<br />
																	<c:choose>
																		<c:when test="${QnA.qnaStatus eq 'N'}">
																			<b>답변대기</b>
																		</c:when>
																		<c:otherwise>
																			<b>답변완료</b>
																		</c:otherwise>
																	</c:choose>
																	<span>${QnA.qnaDate}</span>
																</div>
																<div class="solutions-over-d">
																	<i class="solution-icon"></i>
																	<div class="solution-txt"><a href="qnaDetail.do?qnaId=${QnA.qnaId}">${QnA.qnaContext}</a></div>
																</div>
															</div>
														</div>
													</div>
													<div class="solutions-img">
														<img alt="" src="/img/solution-01.jpg">
													</div>
												</div>
												<!-- \\ -->
											</c:otherwise>
										</c:choose>

										<c:if test="${(status.count)%3 eq 0}">
								<div class="clear"></div>
							</div>
							</c:if>
							</c:forEach>

							<div class="clear"></div>

						<!-- Start of 페이징 처리  -->
									<form name="frm">
										<input type="hidden" name="pageNo" />
										<div id="page" class="pagination">
											<c:if test="${pageVO1.pageNo != 0}">

												<span> <c:forEach var="i"
														begin="${pageVO1.startPageNo}" end="${pageVO1.endPageNo}"
														step="1">
														<c:choose>
															<c:when test="${i eq pageVO1.pageNo}">
																<a href="javascript:fn_movePage(${i})"
																	style="text-decoration: none;"> <font
																	style="font-weight: bold;">${i}</font>
																</a>
															</c:when>
															<c:otherwise>
																<a href="javascript:fn_movePage(${i})"
																	style="text-decoration: none;">${i}</a>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</span>
											</c:if>
										</div>
									</form>
						<!-- End of 페이징 처리  -->
						</div>
						<br class="clear" />

						</p>
					</div>

					<!-- End of 사장 문의사항 리스트  -->
				</div>
			</div>
		</div>
		<div class="clear"></div>
		</div>
		</div>
		<div class="clear"></div>
		</div>
		</div>
		<!-- \\ -->
		<div class="clear"></div>
		</div>
		<!-- \\ tabs \\ -->



		</div>
		</div>
		</div>
	</form>
	<!-- /main-cont -->

	<jsp:include page="/WEB-INF/view/include/footer.jsp" />

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
  	
//   	$('#rowTab a:first').tab('show');

// 	  //for bootstrap 3 use 'shown.bs.tab' instead of 'shown' in the next line
//   	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
//   //save the latest tab; use cookies if you like 'em better:
//   	localStorage.setItem('selectedTab', $(e.target).attr('id'));
//   	});

//   //go to the latest tab, if it exists:
//  	 var selectedTab = localStorage.getItem('selectedTab');
//   	if (selectedTab) {
//     	$('#'+selectedTab).tab('show');
//   	}
  	
  	$(function(){
  	  $("tabs-content-i .padding :not("+$("ul.tab li a.selected").attr("href")+")").hide()

  	  $("ul.tab li a").click(function(){
  	   $("ul.tab li a").removeClass("selected");
  	   $(this).addClass("selected");
  	   $("ul.panel li").hide();
  	   $($(this).attr("href")).show();
  	   $(window).hashchange(); 
  	           
  	   return false;
  	  });

  	        if (location.hash != "")
  	        {   
  	            var id = location.hash.right(1);
  	            $("ul.tab li a").removeClass("selected");
  	            $("a#a"+id).addClass("selected")
  	            $("ul.panel li").hide();
  	            $(location.hash).show();
  	        }

  	 });


  	</script>



</body>
</html>
