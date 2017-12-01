<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String memId =(String)session.getAttribute("memId");%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sparrow | Travel Agency</title>
  <meta name="description" content="" />
  <meta name="keywords" content="" />
  <meta charset="utf-8" /><link rel="icon" href="favicon.png" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> 
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" />
  <link rel="stylesheet" href="/css/style.css" />
  <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Lora:400,400italic' rel='stylesheet' type='text/css'>    
  <link href='http://fonts.googleapis.com/css?family=Raleway:300,400,500,700' rel='stylesheet' type='text/css'>  
  <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css'>	
	<style type="text/css">
	#map1 {width:100%; height:546px;}
.contacts-map #map1 {height:457px;}
.h-tab-item-04 i {display:block;  background:url(../img/map-icon.png) left top no-repeat; float:left; width:13px; height:16px;}

	</style>
<!-- // scripts // -->
  <script src="/js/jquery-1.11.3.min.js"></script>
  <script src="/js/jqeury.appear.js"></script>  
  <script src="/js/jquery-ui.min.js"></script> 
  <script src="/js/owl.carousel.min.js"></script>
  <script src="/js/bxSlider.js"></script> 
  <script src="/js/custom.select.js"></script>    
  <script type="text/javascript" src="/js/twitterfeed.js"></script>
  <script src="/js/script.js"></script>
  <script src="/js/findRoad.js"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2e42bd35fc94828358bb938f57f5801d&libraries=services"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyD1eVdQ81iyVfK9_PdFIDBVG9A3QgHe8GU&sensor=false&&libraries=places"></script>

       
</head>  
<body>  
<!-- // authorize // -->
<jsp:include page="/WEB-INF/view/include/header.jsp"/>


<!-- main-cont -->

<div class="main-cont">
  <div class="body-wrapper">
    <div class="wrapper-padding">
    <div class="page-head">
      <div class="page-title">펜션 - <span>객실 보기</span></div>
      <div class="breadcrumbs">
        <a href="#">홈</a> / <a href="#">펜션</a> / <span>객실 보기</span>
      </div>
      <div class="clear"></div>
    </div>
	<div class="sp-page">
<input type ="hidden" id = 'ad' value ="${Pension.penAddr2}"/>
<input type ="hidden" id = 'na' value ="${Pension.penName}"/>
		<div class="sp-page-a">
			<div class="sp-page-l">
  				<div class="sp-page-lb">
  				<div class="sp-page-p">
  					<div class="h-tabs">
  						<div class="h-tabs-left">
  							<div class="h-tab-i active">
  								<a href="#" class="h-tab-item-01">
  									<i></i>
  									<span>펜션 사진</span>
  									<span class="clear"></span>
  								</a>
  							</div>
  							<div class="h-tab-i">
  								<a href="#" class="h-tab-item-02 initMap">
  									<i></i>
  									<span>주변 정보</span>
  									<span class="clear"></span>
  								</a>
  							</div> 
  								<div class="h-tab-i">
  								<a href="#" class="h-tab-item-04 initMap">
  									<i></i>
  									<span>길 찾기</span>
  									<span class="clear"></span>
  								</a>
  							</div> 						
  							<div class="h-tab-i">
  								<a href="#" class="h-tab-item-03">
  									<i></i>
  									<span>일정</span>
  									<span class="clear"></span>
  								</a>
  							</div>  							
  						</div>
  						<div class="h-tabs-right">
  							<a href="#">
  								<i></i>
<!--   								<span id='conf'>more hotels</span> -->
  								<div class="clear"></div>
  							</a>
  						</div>
  						<div class="clear"></div>
  					</div>  					
  					<div class="mm-tabs-wrapper">
  					<!-- // tab item // -->
  						<div class="tab-item">
  							<div class="tab-gallery-big">
  								<img alt="" src="/img/tab-photo-01.jpg">
  							</div>
  							<div class="tab-gallery-preview">
  								<div id="gallery">
  									<!-- // -->
  									<div class="gallery-i active">
  										<a href="/img/tab-photo-01.jpg"><img alt="" src="/img/tabgall-prev-01.jpg"><span></span></a>
  									</div>
  									<!-- \\ -->
  									<!-- // -->
  									<div class="gallery-i">
  										<a href="/img/tab-photo-01.jpg"><img alt="" src="/img/tabgall-prev-02.jpg"><span></span></a>
  									</div>
  									<!-- \\ -->
  									<!-- // -->
  									<div class="gallery-i">
  										<a href="/img/tab-photo-01.jpg"><img alt="" src="/img/tabgall-prev-03.jpg"><span></span></a>
  									</div>
  									<!-- \\ -->
  									<!-- // -->
  									<div class="gallery-i">
  										<a href="/img/tab-photo-01.jpg"><img alt="" src="/img/tabgall-prev-04.jpg"><span></span></a>
  									</div>
  									<!-- \\ -->
  									<!-- // -->
  									<div class="gallery-i">
  										<a href="/img/tab-photo-01.jpg"><img alt="" src="/img/tabgall-prev-05.jpg"><span></span></a>
  									</div>
  									<!-- \\ -->
  									<!-- // -->
  									<div class="gallery-i">
  										<a href="/img/tab-photo-01.jpg"><img alt="" src="/img/tabgall-prev-06.jpg"><span></span></a>
  									</div>
  									<!-- \\ -->
  								</div>
  							</div>
  						</div>
  					<!-- \\ tab item \\ -->	
  					<!-- // tab item // -->
  						<div class="tab-item">
  						<div id="preloader">
			    			<div id="spinner"></div>
			    		</div>
  							<div class="tab-map">
  								<div class="contact-map">
                				<div class="map_wrap">
                					<div id="map" ></div>
                					 <ul id="category">
        <li id="BK9" data-order="0"> 
            <span class="category_bg bank"></span>
            은행
        </li>       
        <li id="MT1" data-order="1"> 
            <span class="category_bg mart"></span>
            마트
        </li>  
        <li id="PM9" data-order="2"> 
            <span class="category_bg pharmacy"></span>
            약국
        </li>  
        <li id="OL7" data-order="3"> 
            <span class="category_bg oil"></span>
            주유소
        </li>  
        <li id="CE7" data-order="4"> 
            <span class="category_bg cafe"></span>
            카페
        </li>  
        <li id="CS2" data-order="5"> 
            <span class="category_bg store"></span>
            편의점
        </li>
           <li id="AT4" data-order="5"> 
            <span class="category_bg store"></span>
      관광명소
        </li> 
    </ul>
    </div>
              					</div>
              				</div>
  						</div>
  					<!-- \\ tab item \\ -->
  					<div class="tab-item">
  						<div id="preloader1">
			    			<div id="spinner"></div>
			    		</div>
  							<div class="tab-map">
  								<div class="contact-map">
                					<div id="map1" ></div>
  					 					
              					</div>
              				</div>
  						</div>
  					<!-- // tab item // -->
  						<div class="tab-item">
  							<div class="calendar-tab">
								<div class="calendar-tab-select">
									<label>Select month</label>
									<select class="custom-select">
										<option>january 2015</option>
										<option>january 2015</option>
										<option>january 2015</option>
									</select>
								</div>
								

								<div class="tab-calendar-colls">
									<div class="tab-calendar-collsl">
  										<div class="tab-calendar-collslb">
											<table>
											<thead>
											<tr>
												<td>sun</td>
												<td>mon</td>
												<td>tue</td>
												<td>wed</td>
												<td>thu</td>
												<td>fri</td>
												<td>sat</td>
											</tr>
											</thead>
												<tbody>
													<tr>
														<td class="date-passed"><span><label></label></span></td>
														<td class="date-passed"><span><label></label></span></td>
														<td class="date-passed"><span><label></label></span></td>
														<td><span><label>1</label></span></td>
														<td><span><label>2</label></span></td>
														<td><span><label>3</label></span></td>
														<td><span><label>4</label></span></td>
													</tr>
													<tr>
														<td><span><label>5</label></span></td>
														<td><span><label>6</label></span></td>
														<td><span><label>7</label></span></td>
														<td><span><label>8</label></span></td>
														<td><span><label>9</label></span></td>
														<td><span><label>10</label></span></td>
														<td><span><label>11</label></span></td>
													</tr>
													<tr>
														<td><span><label>12</label></span></td>
														<td><span><label>13</label></span></td>
														<td><span><label>14</label></span></td>
														<td><span><label>15</label></span></td>
														<td><span><label>16</label></span></td>
														<td><span><label>17</label></span></td>
														<td><span><label>18</label></span></td>
													</tr>
													<tr>
														<td><span><label>19</label></span></td>
														<td><span><label>20</label></span></td>
														<td><span><label>21</label></span></td>
														<td><span><label>22</label></span></td>
														<td><span><label>23</label></span></td>
														<td><span><label>24</label></span></td>
														<td><span><label>25</label></span></td>
													</tr>
													<tr>
														<td><span><label>26</label></span></td>
														<td class="date-available"><span><label>27</label></span></td>
														<td class="date-available"><span><label>28</label></span></td>
														<td class="date-available"><span><label>29</label></span></td>
														<td class="date-unavailable"><span><label>30</label></span></td>
														<td class="date-unavailable"><span><label>31</label></span></td>
														<td class="date-passed"><span><label></label></span></td>
													</tr>
												</tbody>
											</table>
  										</div>
  										<div class="clear"></div>
									</div>
									</div>
									<div class="tab-calendar-collsr">
										<div class="tab-calendar-s">
											
											<div class="map-symbol passed">
												<div class="map-symbol-l"></div>
												<div class="map-symbol-r">Date past</div>
												<div class="clear"></div>
											</div>
											<div class="map-symbol available">
												<div class="map-symbol-l"></div>
												<div class="map-symbol-r">available</div>
												<div class="clear"></div>
											</div>
											<div class="map-symbol unavailable">
												<div class="map-symbol-l"></div>
												<div class="map-symbol-r">unavailable</div>
												<div class="clear"></div>
											</div>
											
										</div>
									</div>
									<div class="clear"></div>
	
  							</div>
  						</div>
  					<!-- \\ tab item \\ -->	
  									
  				</div>
  				
  				<div class="content-tabs">
  					<div class="content-tabs-head last-item">
  						<nav>
  							<ul>
  								<li><a class="active" href="#">펜션 정보</a></li>
  								<li><a href="#">객실 보기</a></li>
  								<li><a href="#">사용 옵션</a></li>
  								<li><a href="#">리뷰</a></li>
  								<li><a href="#">알파</a></li>
  							  <li><a href="#" class="tabs-lamp"></a></li>
                </ul>
  						</nav>
  						
  						<div class="clear"></div>
  					</div>
  					<div class="content-tabs-body">
  						<!-- // content-tabs-i // -->
  						<div class="content-tabs-i">
  							<h2>${Pension.penName}</h2>
  							<p>${Pension.penNoti} </p>
							
<!--   							<div class="tab-reasons"> -->
<!--   								<h2>4 Reasons to Choose Andrassy Rhai Hotel</h2> -->
<!--   								<div class="tab-reasons-h"> -->
  								
<!--   									<div class="tab-reasons-i reasons-01"> -->
<!--   										<b>fully responsive</b> -->
<!--   										<p>Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia.</p> -->
<!--   									</div> -->
  								
<!--   									<div class="tab-reasons-i reasons-02"> -->
<!--   										<b>757 verified reviews</b> -->
<!--   										<p>Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia.</p> -->
<!--   									</div> -->
  								
<!--   									<div class="tab-reasons-i reasons-03"> -->
<!--   										<b>Manage your bookings online</b> -->
<!--   										<p>Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia.</p> -->
<!--   									</div> -->
  									
<!--   									<div class="tab-reasons-i reasons-04"> -->
<!--   										<b>Booking is safe</b> -->
<!--   										<p>Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia.</p> -->
<!--   									</div> -->
  									
<!--   									<div class="clear"></div> -->
<!--   								</div> -->
<!--   								<div class="facilities"> -->
<!--   									<h2>Facilities of Hotel</h2> -->
<!--   									<table> -->
<!--   										<tr> -->
<!--   											<td class="facilities-a">Food & Drink</td> -->
<!--   											<td class="facilities-b">Breakfast in the Room</td> -->
<!--   										</tr> -->
<!--   										<tr> -->
<!--   											<td class="facilities-a">Internet</td> -->
<!--   											<td class="facilities-b"><span class="facility-label">Free! WiFi is available in all areas and is free of charge.</span></td> -->
<!--   										</tr> -->
<!--   										<tr> -->
<!--   											<td class="facilities-a">Parking</td> -->
<!--   											<td class="facilities-b">Vending Machine (drinks), 24-Hour Front Desk, Express Check-in/Check-out</td> -->
<!--   										</tr> -->
<!--   										<tr> -->
<!--   											<td class="facilities-a">Languages</td> -->
<!--   											<td class="facilities-b">Italian, French, Spanish, English, Arabic</td> -->
<!--   										</tr> -->
<!--   									</table>	 -->
<!--   								</div> -->
<!--   							</div> -->
  						</div>
  						<!-- \\ content-tabs-i \\ -->
  						<!-- // content-tabs-i // -->
  						<div class="content-tabs-i">
  							<h2>예약 날짜 선택</h2>
  							<div class="rates-search">
                  <div class="rates-line">
        						<!-- // -->
        						<div class="srch-tab-line">
        							<div class="srch-tab-left">
        								<label>Check in</label>
        								<div class="input-a"><input id='checkIn' type="text" value="${sessionScope.search.checkIn}" placeholder='${sessionScope.search.checkIn}' readonly></div>	
        							</div>
        							<div class="srch-tab-right">
        								<label>Check out</label>
        								<div class="input-a"><input type="text" value="${sessionScope.search.checkOut}" placeholder='${sessionScope.search.checkOut}' readonly></div>	
        							</div>
        							<div class="clear"></div>
        						</div>
        						<!-- \\ -->
                  </div>
                   
                  <div class="rates-line-right">
        						<!-- // -->
        						<div class="srch-tab-line no-margin-bottom">
<!--         							<div class="srch-tab-3c"> -->
<!--         								<label>Rooms</label> -->
<!--         								<div class="select-wrapper"> -->
<!--         								<select class="custom-select"> -->
<!--         									<option>--</option> -->
<!--         									<option>1</option> -->
<!--         									<option>2</option> -->
<!--         									<option>3</option> -->
<!--         									<option>4</option> -->
<!--         								</select> -->
<!--         								</div> -->
<!--         							</div> -->
        							<div class="srch-tab-3c">
        								<label>인원</label>
        								<div class="select-wrapper">
        								<select class="custom-select">
        								<c:forEach var="i" begin="1" end="15" step="1">
        								<c:choose>
        								<c:when test="${sessionScope.search.persons eq i}">
        									<option selected="selected">${i}</option>
        								</c:when>
        								<c:otherwise>
        									<option>${i}</option>
        								</c:otherwise>
        								</c:choose>
        								</c:forEach>
        								</select>
        								</div>
        							</div>
<!--         							<div class="srch-tab-3c"> -->
<!--         								<label>Child</label> -->
<!--         								<div class="select-wrapper"> -->
<!--         								<select class="custom-select"> -->
<!--         									<option>--</option> -->
<!--         									<option>1</option> -->
<!--         									<option>2</option> -->
<!--         									<option>3</option> -->
<!--         									<option>4</option> -->
<!--         								</select> -->
<!--         								</div> -->
<!--         							</div> -->                        
        							<div class="clear"></div>
        						</div>
        						<!-- \\ --> 
                                  
                  </div>
                  <button class="rates-srch"></button> 
								
							
							<div class="clear"></div>
							
							<div class="rates-devider"></div>
							
							<h2>Room Type</h2>
							
							<div class="available-row">
							<c:if test="${not empty Rooms}">
							<!-- // -->			
											
							<c:forEach var="i" begin="1" end="${fn:length(Rooms)}" step="1"  >
							<div class="cat-list-item">
			                     			<div class="cat-list-item-l">
			                      			<a href="#"><img alt="" src="/img/available-01.jpg"></a>
			                 			</div>
			                  			<div class="cat-list-item-r">
			                    			<div class="cat-list-item-rb">
			                      			<div class="cat-list-item-p">
			                        			<div class="cat-list-content">
			                          			<div class="cat-list-content-a">
			                            			<div class="cat-list-content-l">
			                              			<div class="cat-list-content-lb">
			                                			<div class="cat-list-content-lpadding">
			                                  			<div class="offer-slider-link"><a href="#">${Rooms[i-1].romName} / ${Rooms[i-1].romType} </a></div>
			                                  			<div class="offer-slider-location">최대 인원: ${Rooms[i-1].romPeople}  persons</div>
			                                  			<p>${Rooms[i-1].romIntro}</p>
			                                  			<p>${Rooms[i-1].romOpt}</p>
			                                  			<div class="cat-icons">
			                                    			<span class="cat-icon-01 active"></span>
			                                    			<span class="cat-icon-02"></span>
			                                    			<span class="cat-icon-03"></span>
			                                    			<span class="cat-icon-04"></span>
			                                    			<span class="cat-icon-05"></span>
			                                    			<span class="cat-icon-06"></span>
			                                    			<div class="clear"></div>
			                                  			</div>
			                                			</div>
			                              			</div>
			                              			<br class="clear">
			                            			</div>
			                          			</div>
			                          			<div class="cat-list-content-r">
			                            			<div class="cat-list-content-p">
			                              			<div class="available-price">${Rooms[i-1].romCost} 원</div>
			                              			<div class="available-price-a">avg/night</div> 
<!-- 			                              			<div class="available-price-c">9 available</div>  -->
											<%if(memId!=null){ %>
			                              			<a href="/member/reservation.do?romId=${Rooms[i-1].romId}&penId=${Pension.penId}&romCost=${Rooms[i-1].romCost}" class="available-btn">예약 하기</a>
			                               		<%}else{%>
			                               		<a id='goLogin' class="available-btn">예약 하기</a>
			      								 <script> 
			      								 $("#goLogin").click(function(){                       		
													$('.autorize-popup2').animate({top: '50%'}, 300).find('input:text').eq('0').focus();
													$('.overlay').css('display','block');	
			      								 });
													</script>
				                               		<% }%>	
			                               			</div>
			                          			</div>
			                          			<div class="clear"></div>
			                        			</div>
			                      			</div>
		                    			</div>
		                    			<br class="clear">
		                  			</div>
		                  			<div class="clear"></div>
		            				
		            				</div>
		            				</c:forEach>
		            				
                			<!-- // -->			
<!-- 							<div class="cat-list-item"> -->
<!--                   			<div class="cat-list-item-l"> -->
<!--                       			<a href="#"><img alt="" src="/img/available-02.jpg"></a> -->
<!--                  			</div> -->
<!--                   			<div class="cat-list-item-r"> -->
<!--                     			<div class="cat-list-item-rb"> -->
<!-- 	                      			<div class="cat-list-item-p"> -->
<!-- 	                        			<div class="cat-list-content"> -->
<!-- 	                          			<div class="cat-list-content-a"> -->
<!-- 	                            			<div class="cat-list-content-l"> -->
<!-- 	                              			<div class="cat-list-content-lb"> -->
<!-- 	                                			<div class="cat-list-content-lpadding"> -->
<!-- 	                                  			<div class="offer-slider-link"><a href="#">Double Room</a></div> -->
<!-- 	                                  			<div class="offer-slider-location">Max Occupancy: 2 persons</div> -->
<!-- 	                                  			<p>Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos.</p> -->
<!-- 	                                  			<div class="cat-icons"> -->
<!-- 	                                    			<span class="cat-icon-01 active"></span> -->
<!-- 	                                    			<span class="cat-icon-02"></span> -->
<!-- 	                                    			<span class="cat-icon-03"></span> -->
<!-- 	                                    			<span class="cat-icon-04"></span> -->
<!-- 	                                    			<span class="cat-icon-05"></span> -->
<!-- 	                                    			<span class="cat-icon-06"></span> -->
<!-- 	                                    			<div class="clear"></div> -->
<!-- 	                                  			</div> -->
<!-- 	                                			</div> -->
<!-- 	                              			</div> -->
<!-- 	                              			<br class="clear"> -->
<!-- 	                            			</div> -->
<!-- 	                          			</div> -->
<!-- 	                          			<div class="cat-list-content-r"> -->
<!-- 	                            			<div class="cat-list-content-p"> -->
<!-- 	                              			<div class="available-price">450$</div> -->
<!-- 	                              			<div class="available-price-a">avg/night</div>  -->
<!-- 	                              			<div class="available-price-c">9 available</div>  -->
<!-- 	                              			<a href="#" class="available-btn">select</a> -->
<!-- 	                            			</div> -->
<!-- 	                          			</div> -->
<!-- 	                          			<div class="clear"></div> -->
<!-- 	                        			</div> -->
<!-- 	                      			</div> -->
<!-- 	                    			</div> -->
<!-- 	                    			<br class="clear"> -->
<!-- 	                  			</div> -->
<!--                   			<div class="clear"></div> -->
<!--                 			</div> -->
<!--                 			\\ -->
<!--                 			//			 -->
<!-- 							<div class="cat-list-item"> -->
<!--                   			<div class="cat-list-item-l"> -->
<!--                       			<a href="#"><img alt="" src="/img/available-03.jpg"></a> -->
<!--                  			</div> -->
<!--                   			<div class="cat-list-item-r"> -->
<!--                     			<div class="cat-list-item-rb"> -->
<!--                       			<div class="cat-list-item-p"> -->
<!--                         			<div class="cat-list-content"> -->
<!--                           			<div class="cat-list-content-a"> -->
<!--                             			<div class="cat-list-content-l"> -->
<!--                               			<div class="cat-list-content-lb"> -->
<!--                                 			<div class="cat-list-content-lpadding"> -->
<!--                                   			<div class="offer-slider-link"><a href="#">Twin Room</a></div> -->
<!--                                   			<div class="offer-slider-location">Max Occupancy: 2 persons</div> -->
<!--                                   			<p>Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos.</p> -->
<!--                                   			<div class="cat-icons"> -->
<!--                                     			<span class="cat-icon-01 active"></span> -->
<!--                                     			<span class="cat-icon-02"></span> -->
<!--                                     			<span class="cat-icon-03"></span> -->
<!--                                     			<span class="cat-icon-04"></span> -->
<!--                                     			<span class="cat-icon-05"></span> -->
<!--                                     			<span class="cat-icon-06"></span> -->
<!--                                     			<div class="clear"></div> -->
<!--                                   			</div> -->
<!--                                 			</div> -->
<!--                               			</div> -->
<!--                               			<br class="clear"> -->
<!--                             			</div> -->
<!--                           			</div> -->
<!--                           			<div class="cat-list-content-r"> -->
<!--                             			<div class="cat-list-content-p"> -->
<!--                               			<div class="available-price">380$</div> -->
<!--                               			<div class="available-price-a">avg/night</div>  -->
<!--                               			<div class="available-price-c">9 available</div>  -->
<!--                               			<a href="#" class="available-btn">select</a> -->
<!--                             			</div> -->
<!--                           			</div> -->
<!--                           			<div class="clear"></div> -->
<!--                         			</div> -->
<!--                       			</div> -->
<!--                     			</div> -->
<!--                     			<br class="clear"> -->
<!--                   			</div> -->
<!--                   			<div class="clear"></div> -->
<!--                 			</div> -->
                			<!-- \\ -->
                			<!-- // -->			
<!-- 							<div class="cat-list-item"> -->
<!--                   			<div class="cat-list-item-l"> -->
<!--                       			<a href="#"><img alt="" src="/img/available-04.jpg"></a> -->
<!--                  			</div> -->
<!--                   			<div class="cat-list-item-r"> -->
<!--                     			<div class="cat-list-item-rb"> -->
<!--                       			<div class="cat-list-item-p"> -->
<!--                         			<div class="cat-list-content"> -->
<!--                           			<div class="cat-list-content-a"> -->
<!--                             			<div class="cat-list-content-l"> -->
<!--                               			<div class="cat-list-content-lb"> -->
<!--                                 			<div class="cat-list-content-lpadding"> -->
<!--                                   			<div class="offer-slider-link"><a href="#">Family Suite</a></div> -->
<!--                                   			<div class="offer-slider-location">Max Occupancy: 2 persons</div> -->
<!--                                   			<p>Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos.</p> -->
<!--                                   			<div class="cat-icons"> -->
<!--                                     			<span class="cat-icon-01 active"></span> -->
<!--                                     			<span class="cat-icon-02"></span> -->
<!--                                     			<span class="cat-icon-03"></span> -->
<!--                                     			<span class="cat-icon-04"></span> -->
<!--                                     			<span class="cat-icon-05"></span> -->
<!--                                     			<span class="cat-icon-06"></span> -->
<!--                                     			<div class="clear"></div> -->
<!--                                   			</div> -->
<!--                                 			</div> -->
<!--                               			</div> -->
<!--                               			<br class="clear"> -->
<!--                             			</div> -->
<!--                           			</div> -->
<!--                           			<div class="cat-list-content-r"> -->
<!--                             			<div class="cat-list-content-p"> -->
<!--                               			<div class="available-price">540$</div> -->
<!--                               			<div class="available-price-a">avg/night</div>  -->
<!--                               			<div class="available-price-c">9 available</div>  -->
<!--                               			<a href="#" class="available-btn">select</a> -->
<!--                             			</div> -->
<!--                           			</div> -->
<!--                           			<div class="clear"></div> -->
<!--                         			</div> -->
<!--                       			</div> -->
<!--                     			</div> -->
<!--                     			<br class="clear"> -->
<!--                   			</div> -->
<!--                   			<div class="clear"></div> -->
<!--                 			</div> -->
                			<!-- \\ -->
                			<a href="#" class="availabe-more">load more results</a>				
							   </c:if>
							   </div>
							  
							
  							</div>
  						</div>
  						<!-- \\ content-tabs-i \\ -->
  						<!-- // content-tabs-i // -->
  						<div class="content-tabs-i">
  							<h2>펜션 옵션</h2>
  							<c:set var="penOpt" value="${Pension.penOpt}"/>    
  							<p>* 예약시 추가 요금이 붙는 옵션이 있습니다.</p>
  							<ul class="preferences-list">
  								<li class="internet">와이파이</li>
<!--   								<li class="conf-room">Conference room</li> -->
								<c:if test="${fn:contains(penOpt,'족구장')}">
  								<li class="play-place">족구장</li>
  								</c:if>
  								<c:if test="${fn:contains(penOpt,'레스토랑')}">
  								<li class="restourant">식당</li>
  								</c:if>
  								<c:if test="${fn:contains(penOpt,'카페')}">
  								<li class="bar">카페</li>
  								</c:if>
  								<c:if test="${fn:contains(penOpt,'갯벌체험')}">						
  								<li class="doorman">갯벌 체험</li>
  								</c:if>						
 
  							<c:if test="${fn:contains(penOpt,'BBQ')}">
  								<li class="kitchen">BBQ</li>
  								</c:if>
<!--   								<li class="spa">Spa services</li> -->
<!--   								<li class="bike">Bike Rental</li> -->
							<c:if test="${fn:contains(penOpt,'바다낚시')}">
  								<li class="entertaiment">바다낚시</li>
  								</c:if>
<!--   								<li class="hot-tub">Hot Tub</li> -->
							<c:if test="${fn:contains(penOpt,'수영장')}">
  								<li class="pool">수영장</li>
  								</c:if>
  								<li class="parking">무료주차</li>
<!--   								<li class="gym">Gym</li> -->
<!--   								<li class="tv">TV</li> -->
							<c:if test="${fn:contains(penOpt,'반려견동반')}">
  								<li class="pets">반려견 동반</li>
  								</c:if>
<!--   								<li class="handicap">Handicap</li> -->
  								<li class="secure">CCTV </li>
  							</ul>
  							<div class="clear"></div>
  							<div class="preferences-devider"></div>
<!--   							<h2>Alternative Style</h2> -->
<!--   							<p>Quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui voluptatem sequi nesciunt eque porro quisqua.</p> -->
<!--   							<ul class="preferences-list-alt"> -->
<!--   								<li class="internet">High-speed Internet</li> -->
<!--   								<li class="parking">Free parking</li> -->
<!--   								<li class="gym">Gym</li> -->
<!--   								<li class="restourant">Restourant</li> -->
<!--   								<li class="pets">Pets allowed</li> -->
<!--   								<li class="pool">Swimming Pool</li> -->
<!--   								<li class="kitchen">Kitchen</li> -->
<!--   								<li class="conf-room">Conference room</li> -->
<!--   								<li class="bike">Bike Rental</li> -->
<!--   								<li class="entertaiment">Entertaiment</li> -->
<!--   								<li class="bar">Bar</li> -->
<!--   								<li class="secure">Secure</li> -->
<!--   							</ul> -->
  							<div class="clear"></div>
  						</div>
  						<!-- \\ content-tabs-i \\ -->
  						<!-- // content-tabs-i // -->
  						<div class="content-tabs-i">
  							<div class="reviews-a">

							<div class="reviews-c">
								<div class="reviews-l">
									<div class="reviews-total">${Pension.avgStar}.0/5.0</div>
									<nav class="reviews-total-stars">
										<ul>
											<c:forEach var="k" begin="1" end="5" step="1">            
            										<c:choose>
            										<c:when test="${k le Pension.avgStar}">
            											<li><a href="#"><img alt="" src="/img/r-stars-total-b.png"></a></li>
            										</c:when>
            										<c:otherwise>
            											<li><a href="#"><img alt="" src="/img/r-stars-total-a.png"></a></li>
            										</c:otherwise>
            										</c:choose>
            										</c:forEach>
            										</ul>
										<div class="clear"></div>
									</nav>
								</div>
<!-- 								<div class="reviews-r"> -->
<!--   								<div class="reviews-rb"> -->
<!-- 									<div class="reviews-percents"> -->
<%-- 										<label>${Pension.avgStar} out of 5 stars</label> --%>
<!-- 										<div class="reviews-percents-i"><span></span></div> -->
<!-- 									</div> -->
<!-- <!-- 									<div class="reviews-percents"> --> 
<!-- <!-- 										<label>100% clients recommeted</label> -->
<!-- <!-- 										<div class="reviews-percents-i"><span></span></div> -->
<!-- <!-- 									</div> --> 
<!--   								</div> -->
<!--   								<br class="clear" /> -->
<!-- 								</div> -->
							</div>
							<div class="clear"></div>
							
							<div class="reviews-devider"></div>
							
<!-- 							<div class="hotel-reviews"> -->
<!-- 								<h2>Hotel Facilities</h2> -->
<!-- 								<div class="hotel-reviews-row"> -->
<!-- 									// -->
<!-- 									<div class="hotel-reviews-i"> -->
<!-- 										<div class="hotel-reviews-left">Cleanlines</div> -->
<!-- 										<nav class="hotel-reviews-right"> -->
<!-- 											<ul> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 											</ul> -->
<!-- 										</nav> -->
<!-- 										<div class="clear"></div> -->
<!-- 									</div> -->
<!-- 									\\ -->
<!-- 									// -->
<!-- 									<div class="hotel-reviews-i"> -->
<!-- 										<div class="hotel-reviews-left">Price</div> -->
<!-- 										<nav class="hotel-reviews-right"> -->
<!-- 											<ul> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-a.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-a.png"></a></li> -->
<!-- 											</ul> -->
<!-- 										</nav> -->
<!-- 										<div class="clear"></div> -->
<!-- 									</div> -->
<!-- 									\\ -->
<!-- 									// -->
<!-- 									<div class="hotel-reviews-i"> -->
<!-- 										<div class="hotel-reviews-left">Sleep Quality</div> -->
<!-- 										<nav class="hotel-reviews-right"> -->
<!-- 											<ul> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-a.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-a.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-a.png"></a></li> -->
<!-- 											</ul> -->
<!-- 										</nav> -->
<!-- 										<div class="clear"></div> -->
<!-- 									</div> -->
<!-- 									\\ -->
<!-- 									// -->
<!-- 									<div class="hotel-reviews-i"> -->
<!-- 										<div class="hotel-reviews-left">Service & Stuff</div> -->
<!-- 										<nav class="hotel-reviews-right"> -->
<!-- 											<ul> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-a.png"></a></li> -->
<!-- 											</ul> -->
<!-- 										</nav> -->
<!-- 										<div class="clear"></div> -->
<!-- 									</div> -->
<!-- 									\\ -->
<!-- 									// -->
<!-- 									<div class="hotel-reviews-i"> -->
<!-- 										<div class="hotel-reviews-left">Location</div> -->
<!-- 										<nav class="hotel-reviews-right"> -->
<!-- 											<ul> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 											</ul> -->
<!-- 										</nav> -->
<!-- 										<div class="clear"></div> -->
<!-- 									</div> -->
<!-- 									\\ -->
<!-- 									// -->
<!-- 									<div class="hotel-reviews-i"> -->
<!-- 										<div class="hotel-reviews-left">Comfort</div> -->
<!-- 										<nav class="hotel-reviews-right"> -->
<!-- 											<ul> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-b.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-a.png"></a></li> -->
<!-- 												<li><a href="#"><img alt="" src="/img/sstar-a.png"></a></li> -->
<!-- 											</ul> -->
<!-- 										</nav> -->
<!-- 										<div class="clear"></div> -->
<!-- 									</div> -->
<!-- 									\\ -->
<!-- 								</div> -->
<!-- 								<div class="clear"></div> -->
<!-- 							</div> -->
							
<!-- 							<div class="hotel-reviews-devider"></div> -->
							
							<div class="guest-reviews">
								<h2>Guest Reviews</h2>
								 <c:forEach var="i" begin="1" end="${fn:length(Reviews)}" step="1"  >
								<div class="guest-reviews-row">
									<!-- // -->
										<div class="guest-reviews-i">
										<div class="guest-reviews-a">
											<div class="guest-reviews-l">
												<div class="guest-reviews-img">
													<span>${Reviews[i-1].revStar}</span>
													<img alt="" src="/img/guest-01.png">
												</div>
											</div>
											<div class="guest-reviews-r">
  												<div class="guest-reviews-rb">
												<div class="guest-reviews-b">
												<div class="guest-reviews-bl">
  													<div class="guest-reviews-blb">
														<div class="guest-reviews-lbl">${Reviews[i-1].revTitle}</div>
														<div class="guest-reviews-lbl-a">${Reviews[i-1].romName }</div>
														<div class="guest-reviews-txt">${Reviews[i-1].revContext}</div>
  													</div>
  													<br class="clear" />
												</div>
												</div>
												<div class="guest-reviews-br">  													
  													<div class="guest-reviews-padding">
  													<nav>
  														<ul>
  														<c:forEach var="k" begin="1" end="5" step="1">            
            											<c:choose>
            											<c:when test="${k le Reviews[i-1].revStar}">
            												<li><img alt="" src="/img/g-star-b.png"></li>
            											</c:when>
            											<c:otherwise>
            											<li><img alt="" src="/img/g-star-a.png"></li>
            											</c:otherwise>
            											</c:choose>
            											</c:forEach>
  														</ul>
  													</nav>
  													<div class="guest-rating">${Reviews[i-1].revStar}/5.0</div>
  													<div class="clear"></div>
  													<div class="guest-rating-txt">${Reviews[i-1].memId}</div>
  													</div>
												</div>
  												</div>
  												<br class="clear" />
												</div>
											</div>
											<div class="clear"></div>
										</div>
									<!-- \\ -->
									<!-- // -->
								</div>
								</c:forEach>
								<a href="#" class="guest-reviews-more">load more reviews</a>
                
<!--                 <div class="review-form"> -->
<!--                   <h2>Live Review</h2> -->
<!--                   <label>User Name:</label> -->
<!--                   <div class="input-a"><input type="text" placeholder="" value=""></div> -->
<!--                   <label>Your Review:</label> -->
<!--                   <div class="textarea-a"><textarea></textarea></div> -->

<!--                   <div class="review-rangers-row"> -->
<!--                   <div class="review-ranger"> -->
<!--                     <label>Cleanlines</label> -->
<!--                     <div class="review-ranger-r"> -->
<!--                       <div class="slider-range-min"></div> -->
<!--                     </div> -->
<!--                     <div class="clear"></div> -->
<!--                   </div> -->
<!--                   <div class="review-ranger"> -->
<!--                     <label>Service & Stuff</label> -->
<!--                     <div class="review-ranger-r"> -->
<!--                       <div class="slider-range-min"></div> -->
<!--                     </div> -->
<!--                     <div class="clear"></div> -->
<!--                   </div> -->
<!--                   <div class="review-ranger"> -->
<!--                     <label>Price</label> -->
<!--                     <div class="review-ranger-r"> -->
<!--                       <div class="slider-range-min"></div> -->
<!--                     </div> -->
<!--                     <div class="clear"></div> -->
<!--                   </div> -->
<!--                   <div class="review-ranger"> -->
<!--                     <label>Location</label> -->
<!--                     <div class="review-ranger-r"> -->
<!--                       <div class="slider-range-min"></div> -->
<!--                     </div> -->
<!--                     <div class="clear"></div> -->
<!--                   </div> -->
<!--                   <div class="review-ranger"> -->
<!--                     <label>Sleep Quality</label> -->
<!--                     <div class="review-ranger-r"> -->
<!--                       <div class="slider-range-min"></div> -->
<!--                     </div> -->
<!--                     <div class="clear"></div> -->
<!--                   </div> -->
<!--                   <div class="review-ranger"> -->
<!--                     <label>Comfort</label> -->
<!--                     <div class="review-ranger-r"> -->
<!--                       <div class="slider-range-min"></div> -->
<!--                     </div> -->
<!--                     <div class="clear"></div> -->
<!--                   </div> -->
<!--                   </div> -->
<!--                   <label>Evaluation</label> -->
<!-- 					<select class="custom-select"> -->
<!-- 						<option>&nbsp;</option> -->
<!-- 						<option>1</option> -->
<!-- 						<option>2</option> -->
<!-- 						<option>3</option> -->
<!-- 						<option>4</option> -->
<!-- 					</select> -->
<!--                   <label>When did you travel?</label> -->
<!--                   <div class="input-a"><input type="text" value="" /></div> -->
<!--                   <button class="review-send">Submit Review</button> -->
<!--                 </div>               -->
							</div>		
  						</div>
  						</div>
  						<!-- \\ content-tabs-i \\ -->
  						<!-- // content-tabs-i // -->
  						<div class="content-tabs-i">
  							<h2>Things to do</h2>
                <p class="small">Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui voluptatem sequi nesciunt. </p>
  						  <div class="todo-devider"></div>
                <div class="todo-row">
                <!-- // -->
                <div class="cat-list-item">
                  <div class="cat-list-item-l">
                      <a href="#"><img alt="" src="/img/todo-01.jpg"></a>
                  </div>
                  <div class="cat-list-item-r">
                    <div class="cat-list-item-rb">
                      <div class="cat-list-item-p">
                        <div class="cat-list-content">
                          <div class="cat-list-content-a">
                            <div class="cat-list-content-l">
                              <div class="cat-list-content-lb">
                                <div class="cat-list-content-lpadding">
                                  <div class="offer-slider-link"><a href="#">Totam rem aperiam, eaque ipsa quae</a></div>
                                  <div class="offer-rate">Exelent</div>
                                  <p>Voluptatem quia voluptas sit aspernatur aut odit  aut figut, sed quia consequuntur magni dolores eos qui  voluptatem sequi nescuint. Neque porro quisqua. Sed ut perspiciatis  unde omnis ste.</p>
                                </div>
                              </div>
                              <br class="clear">
                            </div>
                          </div>
                          <div class="cat-list-content-r">
                            <div class="cat-list-content-p">
                              <nav class="stars">
            										<ul>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            										</ul>
            										<div class="clear"></div>
            									</nav>
                              <div class="cat-list-review">31 reviews</div>
                              <a href="#" class="todo-btn">Read more</a>  
                            </div>
                          </div>
                          <div class="clear"></div>
                        </div>
                      </div>
                    </div>
                    <br class="clear">
                  </div>
                  <div class="clear"></div>
                </div>
                <!-- \\ --> 
                <!-- // -->
                <div class="cat-list-item">
                  <div class="cat-list-item-l">
                      <a href="#"><img alt="" src="/img/todo-02.jpg"></a>
                  </div>
                  <div class="cat-list-item-r">
                    <div class="cat-list-item-rb">
                      <div class="cat-list-item-p">
                        <div class="cat-list-content">
                          <div class="cat-list-content-a">
                            <div class="cat-list-content-l">
                              <div class="cat-list-content-lb">
                                <div class="cat-list-content-lpadding">
                                  <div class="offer-slider-link"><a href="#">Invertore veitatis et quasi architecto</a></div>
                                  <div class="offer-rate">Exelent</div>
                                  <p>Voluptatem quia voluptas sit aspernatur aut odit  aut figut, sed quia consequuntur magni dolores eos qui  voluptatem sequi nescuint. Neque porro quisqua. Sed ut perspiciatis  unde omnis ste.</p>
                                </div>
                              </div>
                              <br class="clear">
                            </div>
                          </div>
                          <div class="cat-list-content-r">
                            <div class="cat-list-content-p">
                              <nav class="stars">
            										<ul>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            										</ul>
            										<div class="clear"></div>
            									</nav>
                              <div class="cat-list-review">31 reviews</div>
                              <a href="#" class="todo-btn">Read more</a>  
                            </div>
                          </div>
                          <div class="clear"></div>
                        </div>
                      </div>
                    </div>
                    <br class="clear">
                  </div>
                  <div class="clear"></div>
                </div>
                <!-- \\ --> 
                <!-- // -->
                <div class="cat-list-item">
                  <div class="cat-list-item-l">
                      <a href="#"><img alt="" src="/img/todo-03.jpg"></a>
                  </div>
                  <div class="cat-list-item-r">
                    <div class="cat-list-item-rb">
                      <div class="cat-list-item-p">
                        <div class="cat-list-content">
                          <div class="cat-list-content-a">
                            <div class="cat-list-content-l">
                              <div class="cat-list-content-lb">
                                <div class="cat-list-content-lpadding">
                                  <div class="offer-slider-link"><a href="#">Dolores eos qui ratione voluptatem</a></div>
                                  <div class="offer-rate">Exelent</div>
                                  <p>Voluptatem quia voluptas sit aspernatur aut odit  aut figut, sed quia consequuntur magni dolores eos qui  voluptatem sequi nescuint. Neque porro quisqua. Sed ut perspiciatis  unde omnis ste.</p>
                                </div>
                              </div>
                              <br class="clear">
                            </div>
                          </div>
                          <div class="cat-list-content-r">
                            <div class="cat-list-content-p">
                              <nav class="stars">
            										<ul>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            										</ul>
            										<div class="clear"></div>
            									</nav>
                              <div class="cat-list-review">31 reviews</div>
                              <a href="#" class="todo-btn">Read more</a>  
                            </div>
                          </div>
                          <div class="clear"></div>
                        </div>
                      </div>
                    </div>
                    <br class="clear">
                  </div>
                  <div class="clear"></div>
                </div>
                <!-- \\ -->     
                <!-- // -->
                <div class="cat-list-item">
                  <div class="cat-list-item-l">
                      <a href="#"><img alt="" src="/img/todo-04.jpg"></a>
                  </div>
                  <div class="cat-list-item-r">
                    <div class="cat-list-item-rb">
                      <div class="cat-list-item-p">
                        <div class="cat-list-content">
                          <div class="cat-list-content-a">
                            <div class="cat-list-content-l">
                              <div class="cat-list-content-lb">
                                <div class="cat-list-content-lpadding">
                                  <div class="offer-slider-link"><a href="#">Neque porro quisquaem est qui dolorem</a></div>
                                  <div class="offer-rate">Exelent</div>
                                  <p>Voluptatem quia voluptas sit aspernatur aut odit  aut figut, sed quia consequuntur magni dolores eos qui  voluptatem sequi nescuint. Neque porro quisqua. Sed ut perspiciatis  unde omnis ste.</p>
                                </div>
                              </div>
                              <br class="clear">
                            </div>
                          </div>
                          <div class="cat-list-content-r">
                            <div class="cat-list-content-p">
                              <nav class="stars">
            										<ul>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            											<li><a href="#"><img alt="" src="/img/todostar-a.png"></a></li>
            										</ul>
            										<div class="clear"></div>
            									</nav>
                              <div class="cat-list-review">31 reviews</div>
                              <a href="#" class="todo-btn">Read more</a>  
                            </div>
                          </div>
                          <div class="clear"></div>
                        </div>
                      </div>
                    </div>
                    <br class="clear">
                  </div>
                  <div class="clear"></div>
                </div>
                <!-- \\ -->                
                </div>
                <a href="#" class="guest-reviews-more">Load more reviews</a>
              </div>
  						<!-- \\ content-tabs-i \\ -->
              <!-- // content-tabs-i // -->
  						<div class="content-tabs-i">
                <h2>FAQ</h2>
                <p class="small">Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui voluptatem sequi nesciunt. </p>
                <div class="todo-devider"></div>
                <div class="faq-row">
                  <!-- // -->
                    <div class="faq-item">
                      <div class="faq-item-a">
                        <span class="faq-item-left">Totam rem aperiam, eaquie ipsa quae?</span>
                        <span class="faq-item-i"></span>
                        <div class="clear"></div>
                      </div>
                      <div class="faq-item-b">
                        <div class="faq-item-p">
                          Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia aspernatur aut odit aut fugit consequuntur magni dolores eos qui voluptatem sequi nesciunt. aspernatur aut odit aut fugit  
                        </div>
                      </div>
                    </div>
                  <!-- \\ -->
                  <!-- // -->
                    <div class="faq-item">
                      <div class="faq-item-a">
                        <span class="faq-item-left">Dolores eos qui ratione voluptatem sequi nescuin?</span>
                        <span class="faq-item-i"></span>
                        <div class="clear"></div>
                      </div>
                      <div class="faq-item-b">
                        <div class="faq-item-p">
                          Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia aspernatur aut odit aut fugit consequuntur magni dolores eos qui voluptatem sequi nesciunt. aspernatur aut odit aut fugit  
                        </div>
                      </div>
                    </div>
                  <!-- \\ -->
                  <!-- // -->
                    <div class="faq-item">
                      <div class="faq-item-a">
                        <span class="faq-item-left">Neque porro quisquam est, qui dolorem ipsum?</span>
                        <span class="faq-item-i"></span>
                        <div class="clear"></div>
                      </div>
                      <div class="faq-item-b">
                        <div class="faq-item-p">
                          Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia aspernatur aut odit aut fugit consequuntur magni dolores eos qui voluptatem sequi nesciunt. aspernatur aut odit aut fugit  
                        </div>
                      </div>
                    </div>
                  <!-- \\ -->
                  <!-- // -->
                    <div class="faq-item">
                      <div class="faq-item-a">
                        <span class="faq-item-left">Dolor sit amet consectutur adipisci velit, sed?</span>
                        <span class="faq-item-i"></span>
                        <div class="clear"></div>
                      </div>
                      <div class="faq-item-b">
                        <div class="faq-item-p">
                          Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia aspernatur aut odit aut fugit consequuntur magni dolores eos qui voluptatem sequi nesciunt. aspernatur aut odit aut fugit  
                        </div>
                      </div>
                    </div>
                  <!-- \\ -->
                  <!-- // -->
                    <div class="faq-item">
                      <div class="faq-item-a">
                        <span class="faq-item-left">Consectetur, adipisci velit, sed quia non numquam?</span>
                        <span class="faq-item-i"></span>
                        <div class="clear"></div>
                      </div>
                      <div class="faq-item-b">
                        <div class="faq-item-p">
                          Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia aspernatur aut odit aut fugit consequuntur magni dolores eos qui voluptatem sequi nesciunt. aspernatur aut odit aut fugit  
                        </div>
                      </div>
                    </div>
                  <!-- \\ -->
                </div>
              </div>
              <!-- \\ content-tabs-i \\ -->
              
  					</div>
  				</div>

  				</div>
  				
  				</div>
  				<div class="clear"></div>
			</div>
		</div>

		<div class="sp-page-r">
			<div class="h-detail-r">
				<div class="h-detail-lbl">
					<div class="h-detail-lbl-a" >${Pension.penName} </div>
					<div class="h-detail-lbl-b">${Pension.penAddr},${Pension.penAddr2}</div>
				</div>
				<div class="h-detail-stars">
					<ul class="h-stars-list">
					<c:forEach var="k" begin="1" end="5" step="1">            
            		<c:choose>
            		<c:when test="${k le Pension.avgStar}">
            		<li><a href="#"><img alt="" src="/img/hd-star-b.png"></a></li>
            		</c:when>
            		<c:otherwise>
            		<li><a href="#"><img alt="" src="/img/hd-star-a.png"></a></li>
            		</c:otherwise>
            		</c:choose>
            		</c:forEach>				
					</ul>
					<div class="h-stars-lbl">${Pension.revCnt} reviews</div>
<!-- 					<a href="#" class="h-add-review">add review</a> -->
					<div class="clear"></div>
				</div>
				<div class="h-details-text">
					<p>${Pension.penIntro} </p>
					
				</div>
<!-- 				<a href="#" class="wishlist-btn"> -->
<!-- 					<span class="wishlist-btn-l"><i></i></span> -->
<!-- 					<span class="wishlist-btn-r">ADD TO wish list</span> -->
<!-- 					<div class="clear"></div> -->
<!-- 				</a> -->
<!-- 				<a href="/member/reservationDetail.do" class="book-btn"> -->
<!-- 					<span class="book-btn-l"><i></i></span> -->
<!-- 					<span class="book-btn-r">예약 하기</span> -->
<!-- 					<div class="clear"></div> -->
<!-- 				</a> -->
			</div>
			
<!-- 			<div class="h-help"> -->
<!-- 				<div class="h-help-lbl">Need Sparrow Help?</div> -->
<!-- 				<div class="h-help-lbl-a">We would be happy to help you!</div> -->
<!-- 				<div class="h-help-phone">2-800-256-124 23</div> -->
<!-- 				<div class="h-help-email">sparrow@mail.com</div> -->
<!-- 			</div> -->
			
<!-- 			<div class="reasons-rating"> -->
<!-- 				<div id="reasons-slider"> -->
          <!-- // -->
<!--   				<div class="reasons-rating-i"> -->
<!--   					<div class="reasons-rating-txt">Sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium, totam.</div> -->
<!--   					<div class="reasons-rating-user"> -->
<!--   						<div class="reasons-rating-user-l"> -->
<!--   							<img alt="" src="/img/r-user.png"> -->
<!--   							<span>5.0</span> -->
<!--   						</div> -->
<!--   						<div class="reasons-rating-user-r"> -->
<!--   							<b>Gabriela King</b> -->
<!--   							<span>from United Kingdom</span> -->
<!--   						</div> -->
<!--   						<div class="clear"></div> -->
<!--   					</div> -->
<!--   				</div> -->
  				<!-- \\ -->
          <!-- // -->
<!--   				<div class="reasons-rating-i"> -->
<!--   					<div class="reasons-rating-txt">Sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium, totam.</div> -->
<!--   					<div class="reasons-rating-user"> -->
<!--   						<div class="reasons-rating-user-l"> -->
<!--   							<img alt="" src="/img/r-user.png"> -->
<!--   							<span>5.0</span> -->
<!--   						</div> -->
<!--   						<div class="reasons-rating-user-r"> -->
<!--   							<b>Robert Dowson</b> -->
<!--   							<span>from Austria</span> -->
<!--   						</div> -->
<!--   						<div class="clear"></div> -->
<!--   					</div> -->
<!--   				</div> -->
<!--   				\\ -->
<!--           // -->
<!--   				<div class="reasons-rating-i"> -->
<!--   					<div class="reasons-rating-txt">Sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium, totam.</div> -->
<!--   					<div class="reasons-rating-user"> -->
<!--   						<div class="reasons-rating-user-l"> -->
<!--   							<img alt="" src="/img/r-user.png"> -->
<!--   							<span>5.0</span> -->
<!--   						</div> -->
<!--   						<div class="reasons-rating-user-r"> -->
<!--   							<b>Mike Tyson</b> -->
<!--   							<span>from France</span> -->
<!--   						</div> -->
<!--   						<div class="clear"></div> -->
<!--   					</div> -->
<!--   				</div> -->
  				<!-- \\ -->
<!--         </div> -->
<!-- 			</div> -->
			
			<div class="h-liked">
				<div class="h-liked-lbl">You May Also Like</div>
				<div class="h-liked-row">
					<!-- // -->
					<div class="h-liked-item">
					<div class="h-liked-item-i">
						<div class="h-liked-item-l">
  							<a href="#"><img alt="" src="/img/like-01.jpg"></a>
						</div>
					<div class="h-liked-item-c">
  						<div class="h-liked-item-cb">
    						<div class="h-liked-item-p">
								<div class="h-liked-title"><a href="#">Andrassy Thai Hotel</a></div>
								<div class="h-liked-rating">
								 <nav class="stars">
									<ul>
										<li><a href="#"><img alt="" src="/img/star-b.png" /></a></li>
										<li><a href="#"><img alt="" src="/img/star-b.png" /></a></li>
										<li><a href="#"><img alt="" src="/img/star-b.png" /></a></li>
										<li><a href="#"><img alt="" src="/img/star-b.png" /></a></li>
										<li><a href="#"><img alt="" src="/img/star-a.png" /></a></li>
									</ul>
									<div class="clear"></div>
								 </nav>
								</div>
								<div class="h-liked-foot">
									<span class="h-liked-price">850$</span>
									<span class="h-liked-comment">avg/night</span>
								</div>
    						</div>
  						</div>
  					<div class="clear"></div>
					</div>
					</div>
					<div class="clear"></div>	
					</div>
					<!-- \\ -->
					<!-- // -->
					<div class="h-liked-item">
					<div class="h-liked-item-i">
						<div class="h-liked-item-l">
  							<a href="#"><img alt="" src="/img/like-02.jpg"></a>
						</div>
					<div class="h-liked-item-c">
  						<div class="h-liked-item-cb">
    						<div class="h-liked-item-p">
								<div class="h-liked-title"><a href="#">Campanile Cracovie</a></div>
								<div class="h-liked-rating">
								 <nav class="stars">
									<ul>
										<li><a href="#"><img alt="" src="/img/star-b.png" /></a></li>
										<li><a href="#"><img alt="" src="/img/star-b.png" /></a></li>
										<li><a href="#"><img alt="" src="/img/star-b.png" /></a></li>
										<li><a href="#"><img alt="" src="/img/star-b.png" /></a></li>
										<li><a href="#"><img alt="" src="/img/star-a.png" /></a></li>
									</ul>
									<div class="clear"></div>
								 </nav>
								</div>
								<div class="h-liked-foot">
									<span class="h-liked-price">964$</span>
									<span class="h-liked-comment">avg/night</span>
								</div>
    						</div>
  						</div>
  					<div class="clear"></div>
					</div>
					</div>
					<div class="clear"></div>	
					</div>
					<!-- \\ -->
					<!-- // -->
					<div class="h-liked-item">
					<div class="h-liked-item-i">
						<div class="h-liked-item-l">
  							<a href="#"><img alt="" src="/img/like-03.jpg"></a>
						</div>
					<div class="h-liked-item-c">
  						<div class="h-liked-item-cb">
    						<div class="h-liked-item-p">
								<div class="h-liked-title"><a href="#">Ermin's Hotel</a></div>
								<div class="h-liked-rating">
								 <nav class="stars">
									<ul>
										<li><a href="#"><img alt="" src="/img/star-b.png" /></a></li>
										<li><a href="#"><img alt="" src="/img/star-b.png" /></a></li>
										<li><a href="#"><img alt="" src="/img/star-b.png" /></a></li>
										<li><a href="#"><img alt="" src="/img/star-b.png" /></a></li>
										<li><a href="#"><img alt="" src="/img/star-a.png" /></a></li>
									</ul>
									<div class="clear"></div>
								 </nav>
								</div>
								<div class="h-liked-foot">
									<span class="h-liked-price">500$</span>
									<span class="h-liked-comment">avg/night</span>
								</div>
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
			
			<div class="h-reasons">
				<div class="h-liked-lbl">Reasons to Book with us</div>
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
								<div class="reasons-i-lbl">무인 숙박</div>
								<p>저희 펜션은 무인으로 운영이 되기때문에 주인과 마주칠일이없습니다.</p>
							</div>
  						</div>
  						<br class="clear" />
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
								<div class="reasons-i-lbl">사용 시설</div>
								<p>저희는 재고를 자동으로 관리하기 때문에 물품이 없어 어려운 일은 없을 것 입니다.</p>
							</div>
  						</div>
  						<br class="clear" />
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
								<div class="reasons-i-lbl">sustomer support</div>
								<p>Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequunt.</p>
							</div>
  						</div>
  						<br class="clear" />
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

 
  <script>
  	$(document).ready(function(){
		'use strict';
		$('.review-ranger').each(function(){    
		  var $this = $(this);
		  var $index = $(this).index();
		  if ( $index=='0' ) {
			var $val = '3.0'
		  } else if ( $index=='1' ) {
			var $val = '3.8'
		  } else if ( $index=='2' ) {
			var $val = '2.8'
		  } else if ( $index=='3' ) {
			var $val = '4.8'
		  } else if ( $index=='4' ) {
			var $val = '4.3'
		  } else if ( $index=='5' ) {
			var $val = '5.0'
		  }
		  $this.find('.slider-range-min').slider({
			range: "min",
			step: 0.1,
			value: $val,
			min: 0.1,
			max: 5.1,
			create: function( event, ui ) {
			  $this.find('.ui-slider-handle').append('<span class="range-holder"><i></i></span>');
			},
			slide: function( event, ui ) {
			  $this.find(".range-holder i").text(ui.value);
			}
		  });
		  $this.find(".range-holder i").text($val);
		});

    	$('#reasons-slider').bxSlider({
        	infiniteLoop: true,
        	speed: 500,
          mode:'fade',
        	minSlides: 1,
        	maxSlides: 1,
        	moveSlides: 1,
        	auto: true,
        	slideMargin: 0      
    	});
      
      $('#gallery').bxSlider({
        	infiniteLoop: true,
        	speed: 500,
        	slideWidth: 108,
        	minSlides: 1,
        	maxSlides: 6,
        	moveSlides: 1,
        	auto: false,
        	slideMargin: 7      
    	});
  	});	
 
  	
  </script>
     <style>
.map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap {position:relative;}
#category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
#category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
#category li.on {background: #eee;}
#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
#category li:last-child{margin-right:0;border-right:0;}
#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
#category li .category_bg {background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
#category li .bank {background-position: -10px 0;}
#category li .mart {background-position: -10px -36px;}
#category li .pharmacy {background-position: -10px -72px;}
#category li .oil {background-position: -10px -108px;}
#category li .cafe {background-position: -10px -144px;}
#category li .store {background-position: -10px -180px;}
#category li.on .category_bg {background-position-x:-46px;}
.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
.placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.placeinfo .tel {color:#0f7833;}
.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}

.available-price{ font-size :15px}

</style>

<!-- \\ scripts \\ --> 
 
</body>  
</html> 