<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<% String penId = request.getParameter("selectId");%>
<!DOCTYPE html>
<jsp:include page="/WEB-INF/view/include/mgr_header.jsp" />
<html lang="en">
<head>
<title>Sparrow | Travel Agency</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
.counters-row-i span {
	margin-top: 30px;
}

.storageOrder {
	margin-right: 20px;
	float: right;
	display: block;
	width: 102px;
	height: 24px;
	background: #ff7200;
	border-radius: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	text-align: center;
	font-size: 11px;
	text-decoration: none;
	color: #fff;
	border: 0px;
	font-family: 'Montserrat';
	font-weight: normal;
	text-transform: uppercase;
}

.storageOrder a {
	color: #fff;
	text-decoration: none;
}

#addr { /*테이블에서 주소 컬럼 널빙 설정*/
	width: 150px;
}

#name { /*테이블에서 이름 컬럼 널빙 설정*/
	width: 100px;
}

#num { /*테이블에서 이름 컬럼 널빙 설정*/
	width: 30px;
}

.storageOrder:hover {
	background: #ff8f35;
}

.baderi {
	width: 20%;
}

.table-a th {
	text-align: center;
}

@media screen and (max-width: 1130px) {
	.shortcodes-left img, .shortcodes-right img {
		width: 45%;
	}
}

.counters-four-colls .counters-row-i:last-child {
	float: left;
}

#stoSearch{

display: block;

   height: 22px;
    background: #ff7200;
    border-radius: 2px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    text-align: center;
    text-decoration: none;
    color: #fff;
    border: 0px;
   margin-left:10px;
    float: right;
    font-family: 'Montserrat';
    font-weight: normal;
    text-transform: uppercase;

}
.counters_wrap b {url (../img/counters-d.png) center bottom no-repeat;
	background-image: url(../img/counters-d.png);
	background-position-x: center;
	background-position-y: bottom;
	background-size: initial;
	background-repeat-x: no-repeat;
	background-repeat-y: no-repeat;
	background-attachment: initial;
	background-origin: initial;
	background-clip: initial;
	background-color: initial;
	padding-bottom: 10px;
	margin-bottom: 9px;
}

.counters-four-colls .counters-row-i {
	width: 31.3%;
}

a {
	color: #ff7200;
	text-decoration: none;
}

.divDetail {
	width: 80%;
	margin-left: auto;
	margin-right: auto;
}

.divDetail1 {
	float: left;
	width: 50%;
}

.footer-tour-a {
	font-weight: bold;
	color: #000;
	font-family: 'Montserrat';
	font-size: 12px;
}

.footer-tour-b {
	font-size: 10px;
}

.footer-tour-r {
	float: left;
}

.tables {
	margin-left: auto;
	margin-right: auto;
}

#acc {
	width: 100%;
	margin-left: auto;
	margin-right: auto;
}

.p-item-details-ir {
	font-family: 'Montserrat';
	font-weight: normal;
	font-size: 17px;
	color: #ff7200;
	text-transform: uppercase;
}


.p-item-details-il {
	font-family: 'Raleway';
	font-weight: 600;
	font-size: 13px;
	color: #a2a2a2;
	text-transform: uppercase;
}
#apen {
	color: #ff7200;
    text-decoration: none;
}
.searchPen{
float: right;
margin-bottom: 5px;
}
/* start 아코디언 CSS */
			.accordion{ margin: 0 auto;}
			.accordion-toggle {border-bottom: 1px solid #cccccc;cursor: pointer;margin: 0;padding: 10px 0;position: relative;}
			.accordion-toggle.active:after{content:"";position:absolute;right:0;top:17px;width:0;height:0;border-bottom:5px solid #f00;border-left:5px solid rgba(0,0,0,0);border-right:5px solid rgba(0,0,0,0);}
			.accordion-toggle:before{display: none;}
			.accordion-toggle.active:before{display:none;}
			.accordion-content {display: none;}
			.accordion-toggle.active {color: #ff0000;}
/*  end 아코디언 css	 */

</style>
</head>
<body class="inner-body">


	<c:choose>
		<c:when test="${result ne null}">
			<script type="text/javascript">
if(${result} > 0){ 
     location.href="storageDetail.do"; 
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
						<div class="page-title">재고 리스트</div>
						<div class="breadcrumbs">
							<a href="#">관리자페이지</a> / <span>재고 리스트</span>
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</div>

		<div class="typography">
			<div class="content-wrapper">
				<div class="shortcodes-block">
					<!-- // tables // -->
					<div class="tables">

					
						<span><b>재고리스트</b></span>
						 <!-- 펜션이름검색 -->
                     <form id="writeForm" action="/manager/stoSearch.do" method="get">
                     <div class='searchPen'>
                     <input type="text" id="penName1"value="" placeholder="펜션이름검색" name="penName" style="text-transform: none;" >
                     <input type="button" id="stoSearch"  style="cursor:pointer" value="검색" />
                     
                     </div>
                      </form>
                     <!-- END OF 펜션이름검색 -->
						
						<div class="accordion" id='acc'>
							<table class="table-a" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<th id="a1" align="center">순번</th>
									<th id="a2" align="center">펜션이름</th>
									<th id="a3" align="center">주소</th>
									<th id="a4" align="center">현재상태</th>
								</tr>
								<c:choose>
									<c:when test="${listModel == null}">
										<tr>
											<td colspan='4'>등록된 게시물이 없습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>

										<c:forEach items="${listModel}" var="sto" varStatus="status">
											<tr class="accordion-toggle">
												<td align="center">${sto.rnum}</td>
												<td align="center" id="apen">${sto.penName}</td>
												<td align="center">${sto.penAddr2}</td>
												<td align="center" class="baderi"><c:choose>
														<c:when test="${sto.stoBath<5 or sto.stoTnc<5}">
															<img src="/img/manager/bad.png" width="30px" height="20px">
														</c:when>
														<c:when
															test="${sto.stoBath<10 and sto.stoBath >5 or sto.stoTnc<10 and sto.stoTnc>5}">
															<img src="/img/manager/soso.png" width="30px" height="20px">
														</c:when>
														<c:otherwise>
															<img src="/img/manager/good.png" width="30px" height="20px">
														</c:otherwise>
													</c:choose></td>
											</tr>
											<tr class="accordion-content">
												<td colspan="4">

													<div class="divDetail">
														<form id="tncSubmit" action="/manager/tncUpdate.do"
															method="post">
															<div class="divDetail1">
																<h3>숯</h3>
																<div class="p-item-details">
																	<div class="p-item-details-i">
																		<div class="p-item-details-il">수량현황 :</div>
																		<div class="p-item-details-ir">(${sto.stoTnc}/20)</div>
																		<div class="clear"></div>
																	</div>
																	<div class="p-item-details-i">
																		<div class="p-item-details-il">주문개수 :</div>
																		<div class="p-item-details-ir" id="input-a">
																		
																			<input type="text" size='3' name="stoTnc" id="stoTnc" />
																		</div>
																		<div class="clear"></div>
																	</div>
																	<input type="submit" class="storageOrder" value="주문하기">
																</div>



																<input type="hidden" id="penId" name="penId"
																	value="${sto.penId}" />

															</div>
														</form>
														<form id="bathSubmit" action="/manager/bathUpdate.do"
															method="post">
															<div class="divDetail1">

																<h3>목욕세트</h3>
																<div class="p-item-details">
																	<div class="p-item-details-i">
																		<div class="p-item-details-il">수량현황 :</div>
																		<div class="p-item-details-ir">(${sto.stoBath}/20)</div>
																		<div class="clear"></div>
																	</div>
																	<div class="p-item-details-i">
																		<div class="p-item-details-il">주문개수 :</div>
																		<div class="p-item-details-ir">
																			<input type="text" size='3' name="stoBath" />
																		</div>
																		<div class="clear"></div>
																	</div>
																	<input type="submit" class="storageOrder" value="주문하기">
																</div>

																<input type="hidden" id="penId" name="penId"
																	value="${sto.penId}" />

															</div>
														</form>
													</div>

												</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						</div>

						<div class="clear"></div>
						                  <!--------------------------------페이징처리------------------------------------>
                       <form name="frm">
                              <input type="hidden" name="pageNo" />
                                       <div id="page" class="pagination">
                                          <c:if test="${pageVO.pageNo != 0}">

                                             <span> <c:forEach var="i"
                                                   begin="${pageVO.startPageNo}" end="${pageVO.endPageNo}"
                                                   step="1">
                                                   <c:choose>
                                                      <c:when test="${i eq pageVO.pageNo}">
                                                         <a href="javascript:fn_movePage(${i})" style="text-decoration: none;"> 
                                                         <font style="font-weight: bold;">${i}</font>
                                                         </a>
                                                      </c:when>
                                                      <c:otherwise>
                                                         <a href="javascript:fn_movePage(${i})" style="text-decoration: none;">${i}</a>
                                                      </c:otherwise>
                                                 </c:choose>
                                                </c:forEach>
                                             </span>
                                          </c:if>
                                       </div>
                           </form>     
                           <!--------------------------------END OF 페이징처리------------------------------------>      
					</div>
					<!-- // tables // -->

					<!-- // counters // -->

					<!-- \\ counters \\ -->
				</div>
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
	   function fn_movePage(val){
	       jQuery("input[name=pageNo]").val(val);
	       jQuery("form[name=frm]").attr("method", "post");
	       jQuery("form[name=frm]").attr("action","").submit();
	   }
      $(document).ready(function() {
         'use strict';
         $('audio,video').mediaelementplayer();
         $('.blog-post-st').bxSlider({
            infiniteLoop : true,
            speed : 600,
            minSlides : 1,
            maxSlides : 1,
            moveSlides : 1,
            auto : true,
            slideMargin : 0
         });
         

         $('.accordion').find('.accordion-toggle').click(function() {
            $(this).next().slideToggle('600');
            $(".accordion-content").not($(this).next()).slideUp('600');
         });
         $('.accordion-toggle').on('click', function() {
            $(this).toggleClass('active').siblings().removeClass('active');
            });
         
      });
      
      $(document).ready(function() {
          $('#stoSearch').click(function () {
             $('#writeForm').submit();
                
          });   
       });


   </script>
	<!-- \\ scripts \\ -->
	<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>
</html>