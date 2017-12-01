<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 

<% String penId = request.getParameter("selectId");%>
<!DOCTYPE html>
<html lang="en">
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
<style>
  
#ok{
margin-left:470px;
background-Color:#FFFFFF;   /*--백그라운드 정의---*/
font:15px     /*--폰트 정의---*/
font-weight:bold;   /*--폰트 굵기---*/
color:#000000;    /*--폰트 색깔---*/
width:80px;height:30;  /*--버튼 크기---*/
}
#no{
background-Color:#FFFFFF;   /*--백그라운드 정의---*/
font:15px      /*--폰트 정의---*/
font-weight:bold;   /*--폰트 굵기---*/
color:#000000;    /*--폰트 색깔---*/
width:80px;height:30;  /*--버튼 크기---*/

}
.accordeon{
width:1100px;
}

.p-item-page-lb{
margin-left:350px;
width:300px;
heigth:200px;
}
/***********************************************START OF 버튼 주황색 STYLE ***********************************************/
.srch-btn1{
margin-left : 300px;
display: block;
    width: 102px;
    height: 24px;
    padding-top: 10px;
    background: #ff7200;
    border-radius: 2px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    text-align: center;
    font-size: 11px;
    text-decoration: none;
    color: #fff;
    border: 0px;
    margin-top: 1px;
    float: left;
    font-family: 'Montserrat';
    font-weight: normal;
    text-transform: uppercase;
}
.srch-btn2{
margin-left : 300px;
display: block;
    width: 102px;
    height: 24px;
    padding-top: 10px;
    background: #ff7200;
    border-radius: 2px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    text-align: center;
    font-size: 11px;
    text-decoration: none;
    color: #fff;
    border: 0px;
    margin-top: 1px;
    float: left;
    font-family: 'Montserrat';
    font-weight: normal;
    text-transform: uppercase;
}
#pensionOk{  /*모달창 수락버튼*/
margin-left : 300px;
display: block;
    width: 102px;
    height: 34px;
/*     padding-top: 10px; */
    background: #ff7200;
    border-radius: 2px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    text-align: center;
    font-size: 11px;
    text-decoration: none;
    color: #fff;
    border: 0px;
    margin-top: 1px;
    float: left;
    font-family: 'Montserrat';
    font-weight: normal;
    text-transform: uppercase;


}
.srch-btn4{
margin-left : 300px;
display: block;
    width: 102px;
    height: 24px;
    padding-top: 10px;
    background: #ff7200;
    border-radius: 2px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    text-align: center;
    font-size: 11px;
    text-decoration: none;
    color: #fff;
    border: 0px;
    margin-top: 1px;
    float: left;
    font-family: 'Montserrat';
    font-weight: normal;
    text-transform: uppercase;

}
/***********************************************END OF 버튼 주황색 STYLE ***********************************************/
#registPic{
width: 200px;
heigth: 250px;
}

/***********************************************START OF 모달창 STYLE ***********************************************/
.panel {
    background-color: #444;
    height: 34px;
    padding: 10px;
}
.panel a#login_pop, .panel a#join_pop {
    border: 2px solid #aaa;
    color: #fff;
    display: block;
    float: left;
    margin-left: 10px;
    padding: 5px 10px;
    text-decoration: none;
    text-shadow: 1px 1px #000;

    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    -ms-border-radius: 10px;
    -o-border-radius: 10px;
    border-radius: 10px;
	font-family:'dotum';
}
a#login_pop:hover, a#join_pop:hover {
    border-color: #eee;
}
.overlay {
    background-color: rgba(0, 0, 0, 0.6);
    bottom: 0;
    cursor: default;
    left: 0;
    opacity: 0;
    position: fixed;
    right: 0;
    top: 0;
    visibility: hidden;
    z-index: 1;

    -webkit-transition: opacity .5s;
    -moz-transition: opacity .5s;
    -ms-transition: opacity .5s;
    -o-transition: opacity .5s;
    transition: opacity .5s;
}
.overlay:target {
    visibility: visible;
    opacity: 1;
}
.popup {
    background-color: #fff;
    border: 3px solid #fff;
    display: inline-block;
    left: 50%;
    opacity: 0;
    padding: 15px;
    position: fixed;
    text-align: justify;
    top: 40%;
    visibility: hidden;
    z-index: 10;

    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    -o-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);

    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    -ms-border-radius: 10px;
    -o-border-radius: 10px;
    border-radius: 10px;

    -webkit-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
    -moz-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
    -ms-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
    -o-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
    box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;

    -webkit-transition: opacity .5s, top .5s;
    -moz-transition: opacity .5s, top .5s;
    -ms-transition: opacity .5s, top .5s;
    -o-transition: opacity .5s, top .5s;
    transition: opacity .5s, top .5s;
}
.overlay:target+.popup {
    top: 50%;
    opacity: 1;
    visibility: visible;
}
.close {
    background-color: rgba(0, 0, 0, 0.8);
    height: 30px;
    line-height: 30px;
    position: absolute;
    right: 0;
    text-align: center;
    text-decoration: none;
    top: -15px;
    width: 30px;

    -webkit-border-radius: 15px;
    -moz-border-radius: 15px;
    -ms-border-radius: 15px;
    -o-border-radius: 15px;
    border-radius: 15px;
}
.close:before {
    color: rgba(255, 255, 255, 0.9);
    content: "X";
    font-size: 24px;
    text-shadow: 0 -1px rgba(0, 0, 0, 0.9);
}
.close:hover {
    background:#ff7200;
}
.popup p, .popup div {
    margin-bottom: 10px;
}
.popup label {
    display: inline-block;
    text-align: left;
    width: 120px;
}
.popup input[type="text"], .popup input[type="password"] {
    border: 1px solid;
    border-color: #999 #ccc #ccc;
    margin: 0;
    padding: 2px;

    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    -ms-border-radius: 2px;
    -o-border-radius: 2px;
    border-radius: 2px;
}
.popup input[type="text"]:hover, .popup input[type="password"]:hover {
    border-color: #555 #888 #888;
}
/*********************************************** END OF 모달창 STYLE ***********************************************/

.blockqoute-tp-a{
height: 25px;
}

#pensionNo{
width:102px;
}

</style>
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

  <script type="text/javascript">
	$(document).ready(function(){ //펜션 정보에서 펜션 외각이미지 슬라이드로 넘기는 script
		'use strict';
    	$('.slider').bxSlider({
        	infiniteLoop: true,
        	speed: 600,
        	minSlides: 1,
        	maxSlides: 1,
        	moveSlides: 1,
        	auto: true,
        	slideMargin: 0      
    	});
    	
			$("#dialog").dialog({
					//이벤트 발생했을때 보여주려면 autoOpen : false로 지정해줘야 한다.
					autoOpen : false,
					//레이어팝업 넓이
					width : 400,
					//뒷배경을 disable 시키고싶다면 true
					modal : true,
					//버튼종류
					buttons : [ {
						//버튼텍스트
						text : "Ok",
						//클릭이벤트발생시 동작
						click : function() {
							$(this).dialog("close");
						}
					}, {
						//버튼텍스트
						text : "Cancel",
						//클릭이벤트발생시 동작
						click : function() {
							$(this).dialog("close");
						}
					}]
				});
			});
	
	
	
			$(".srch-btn1").click(function(){ 
				$( "#dialog" ).dialog( "open" ); 
				});



			$(document).ready(function() { // 객실정보 사진 넘기는 기능 script
				'use strict';
				$('.review-ranger').each(function() {
				var $this = $(this);
				var $index = $(this).index();
				if ($index == '0') {
				var $val = '3.0'
				} else if ($index == '1') {
				var $val = '3.8'
				} else if ($index == '2') {
				var $val = '2.8'
				} else if ($index == '3') {
				var $val = '4.8'
				} else if ($index == '4') {
				var $val = '4.3'
				} else if ($index == '5') {
				var $val = '5.0'
				}
				$this.find('.slider-range-min').slider({range : "min",step : 0.1,value : $val,min : 0.1,max : 5.1,create : function(event,ui){
				$this.find('.ui-slider-handle').append('<span class="range-holder"><i></i></span>');},slide : function(event,ui) {
				$this.find(".range-holder i").text(ui.value);}});
				$this.find(".range-holder i").text($val);});

								$('#reasons-slider').bxSlider({
									infiniteLoop : true,
									speed : 500,
									mode : 'fade',
									minSlides : 1,
									maxSlides : 1,
									moveSlides : 1,
									auto : true,
									slideMargin : 0
								});

								$('#gallery').bxSlider({
									infiniteLoop : true,
									speed : 500,
									slideWidth : 108,
									minSlides : 1,
									maxSlides : 6,
									moveSlides : 1,
									auto : false,
									slideMargin : 7
								});
							});
			
			
			$(document).ready(function() {
				$('#pensionOk').click(function () {
					$('#penAddr').val($('#login').val());
					$('#penId').val('<%=penId%>');
					$('#frm').submit();
					
					// 승용
						
				});	

			});
			

		</script>

<body class="inner-body">

			<c:choose>
			<c:when test="${refuse != null}">
			<script type="text/javascript">
 			if( ${refuse}>0 ){
 				  location.href="pensionList.do";
  			} 
  			else{ 
				  history.back(); 
			} 


		</script> 
			</c:when>
						<c:when test="${permission != null}">
			<script type="text/javascript">
 			if( ${permission}>0 ){
 				  location.href="pensionList.do";
  			} 
  			else{ 
				  history.back(); 
			} 


		</script> 
			</c:when>
			</c:choose>
		
  
<!-- \\ scripts \\ --> 
 <jsp:include page="/WEB-INF/view/include/mgr_header.jsp"></jsp:include>
<!-- main-cont -->
<div class="main-cont">  	
	
	<div class="inner-page">
		<div class="inner-breadcrumbs">
			<div class="content-wrapper">
				<div class="page-title">펜션정보 상세보기</div>
      			<div class="clear"></div>
      		</div>		
		</div>
		
	</div>
	
	<div class="typography">
		<div class="content-wrapper">
			<div class="shortcodes-block">
	
            <!-- \\ counters \\ -->
				<!-- // accordeons-toggles // -->
				<div class="accordeons-toggles">
<!-- 				<div class="typography-heading">펜션정보 상세보기</div> -->

				<div class="shortcodes-left">
					<!-- // accordeon // -->
						<div class="accordeon">
							<!-- // -->
								<div class="accordeon-item open">
									<div class="accordeon-a">
										<i class="accordeon-icon"></i>
										<span>펜션정보</span>
										<div class="clear"></div>
									</div>
									<div class="accordeon-b">

 	 				<div class="p-item-page-lb">
 	 				<div class="p-item-padding">
    					<div id="p-item-slider" class='slider'>
    						<div class="p-item-slide"><img alt="" src="/img/p-slider-01.jpg" /></div>
    						<div class="p-item-slide"><img alt="" src="/img/p-slider-02.jpg" /></div>
    						<div class="p-item-slide"><img alt="" src="/img/p-slider-03.jpg" /></div>
    					</div>
  					</div>
  					</div>
  				<br class="clear" /> 
  				<!-- /////선택한 펜션의 정보를 불러오는 부분/////  -->
  						 <c:forEach items="${detail}" begin="1" end="1" var="d" varStatus="status" > 
									<div class="blockqoute-tp-a">펜  션  이  름 >> ${d.penName} </br></br></div>
									<div class="blockqoute-tp-a">팬  션  주  소 >> ${d.penAddr2}</br></br></div>
									<div class="blockqoute-tp-a">성 수 기 시작 >> ${d.penShot}</br></br></div>
									<div class="blockqoute-tp-a">성 수 기 끝 >> ${d.penEhot}</br></br></div>
									<div class="blockqoute-tp-a">옵     션  </div> </br><hr>${d.penOpt}<hr></br></br>
									<div class="blockqoute-tp-a">주인장 소개글 </div> </br><hr>${d.penIntro}<hr></br></br>
									<div class="blockqoute-tp-a">확인 및 기타 사항 </div></br><hr>${d.penNoti}<hr></br></br>
									
								
							</c:forEach>
				<!-- /////END OF 선택한 펜션의 정보를 불러오는 부분/////  -->			
							
									</div> 
								</div>
							<!-- \\ -->
							<!-- // -->
								<div class="accordeon-item">
									<div class="accordeon-a">
										<i class="accordeon-icon"></i>
										<span onclick="window.scrollTo(0,0);">사장정보</span>
										<div class="clear"></div>
									</div>
									<div class="accordeon-b">
				<!-- /////선택한 펜션의  사장 정보를 불러오는 부분/////  -->					
							<c:forEach items="${detail}" begin="1" end="1" var="d" varStatus="status" >
								<div class="blockqoute-tp-a">펜  션  이  름 >> ${d.penName}</br></br></div>
								<div class="blockqoute-tp-a">사  장 아이디 >> ${d.ownId}</br></br></div>
								<div class="blockqoute-tp-a">이            름 >> ${d.ownName}</br></br></div>
								<div class="blockqoute-tp-a">이    메    일  >> ${d.ownMail}</br></br></div>
								<div class="blockqoute-tp-a">휴 대 폰 번호 >> ${d.ownTel}</br></br></div>
								<div class="blockqoute-tp-a">거  래  은  행 >> ${d.ownBank}</br></br></div>
								<div class="blockqoute-tp-a">계  좌  번  호 >> ${d.ownAcc}</br></br></div>
								<div class="blockqoute-tp-a">사업자등록증  </div></br><hr>${d.ownLic}<hr></br></br>
									
									
							</c:forEach>
				<!-- /////END OF 선택한 펜션의  사장 정보를 불러오는 부분/////  -->		
						
									<div id="registPic"><img alt="" src="/img/p-slider-03.jpg" width="400" height="450" /></div>
									</div>
								</div>
							<!-- \\ -->
							<!-- // -->
								<div class="accordeon-item">
									<div class="accordeon-a">
										<i class="accordeon-icon"></i>
										<span onclick="window.scrollTo(0,0);">객실정보</span>
										<div class="clear"></div>
									</div>
									<div class="accordeon-b">				<div class="tabs">

					<div class="shortcodes-left">
						<div class="tabs-type-a tabs-block">
						
							<nav class="tabs-nav">
								<ul>
								<c:forEach items="${detail}" varStatus="status">
									<li><a class="active" href="#">Room${status.count}</a></li>
								</c:forEach>

								</ul>
								<div class="clear"></div>
							</nav>
							<div class="tabs-content">
							
							<!-- ///// 선택한 펜션의 객실 갯수 뽑아오는 반복문  ///// -->			
							<c:forEach items="${detail}" var="d" varStatus="status" >
							<!-- ///// END OF 선택한 펜션의 객실 갯수 뽑아오는 반복문  ///// -->		
							
								<div class="tabs-content-i">

					<!-- /////선택한 펜션의  객실 정보를 불러오는 부분/////  -->	
								<div class="blockqoute-tp-a">객   실   명 >> ${d.romName}</br></br></div>
								<div class="blockqoute-tp-a">객 실 유 형 >> ${d.romType}</br></br></div>
								<div class="blockqoute-tp-a">인         원 >> ${d.romPeople}</br></br></div>
								<div class="blockqoute-tp-a">요         금 >> ${d.romCost}</br></br></div>
								<div class="blockqoute-tp-a">객실소개글  </div></br><hr>${d.romIntro}<hr></br></br>
								<div class="blockqoute-tp-a">편 의 시 설  </div></br><hr>${d.romOpt}<hr></br></br>
								<div class="blockqoute-tp-a">객 실 사 진 >> </div></br>
					<!-- /////END OF 선택한 펜션의  객실 정보를 불러오는 부분 ///// -->	
									<div class="tab-gallery-preview">
  								<div id="gallery">
  									<!-- // -->
  									<div class="gallery-i active">
  										<a href="img/tour-big.jpg"><img alt="" src="/img/tour-prev-01.jpg"><span></span></a>
  									</div>
  									<!-- \\ -->
  									<!-- // -->
  									<div class="gallery-i">
  										<a href="img/tour-big.jpg"><img alt="" src="/img/tour-prev-02.jpg"><span></span></a>
  									</div>
  									<!-- \\ -->
  									<!-- // -->
  									<div class="gallery-i">
  										<a href="img/tour-big.jpg"><img alt="" src="/img/tour-prev-03.jpg"><span></span></a>
  									</div>
  									<!-- \\ -->
  									<!-- // -->
  									<div class="gallery-i">
  										<a href="img/tour-big.jpg"><img alt="" src="/img/tour-prev-04.jpg"><span></span></a>
  									</div>
  									<!-- \\ -->
  									<!-- // -->
  									<div class="gallery-i">
  										<a href="img/tour-big.jpg"><img alt="" src="/img/tour-prev-05.jpg"><span></span></a>
  									</div>
  									<!-- \\ -->
  									<!-- // -->
  									<div class="gallery-i">
  										<a href="img/tour-big.jpg"><img alt="" src="/img/tour-prev-06.jpg"><span></span></a>
  									</div>
  									<!-- \\ -->
  								</div>
  							</div>
								</div>

									</c:forEach>
							</div>
						
						</div>
					</div>
					<div class="shortcodes-right">
						<!-- // -->
						<div class="tabs-type-b tabs-block">
							<div class="tabs-type-bi">
								<div class="clear"></div>
							</div>
						</div>
						<!-- \\ -->											
					</div>
					<div class="clear"></div>
				</div></div>
								</div>
							<!-- \\ -->
						</div>
					<!-- \\ accordeon \\ -->
				</div>
				<div class="clear"></div>
				</div>
				<!-- \\ accordeons-toggles \\ -->
				
				<!-- // tabs // -->

				<!-- //수락,거절 버튼 넣기 // -->
				<div class="check">


				<a href="#login_form" id="login_pop" class="srch-btn1">수 락</a>
				

				<a href="pensionRefuse.do?penId=<%=penId %>" class="srch-btn4" >거 절</a>

				
				
				<form id="frm" action="/manager/localPermission.do">
					<input type="hidden" id="penId" name="penId" val="<%= penId%>"/>
					<input type="hidden" id="penAddr" name="penAddr" val=""/>
				</form>
				
				<form id="frm1" action="/manager/pensionDetail.do">
					<input type="hidden" id="penId" name="penId" val="<%= penId%>"/>
				</form>
				
				</div>
<!------------------------------------------ START OF 모달창  ------------------------------------------------->
      
      
        <a href="#x" class="overlay" id="login_form"></a>
        <div class="popup">
            <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;펜션 요청 수락 알림창</h2></br></br>
            
            <div>
                <label for="login">지역등록</label>
                <input type="text" id="login" name="penAddr" value="" />
            </div></br></br>

<!-- **********************************************펜션 수락 버튼******************************************** -->
<%--            	<a href="pensionLocalUpdate.do?selectId=${permission.penId}"  id="pensionOk" class="srch-btn2">펜션수락</a> --%>
            <input type="button" id="pensionOk"  value="펜션수락" /> <!--  class="srch-btn3" -->
            </br></br>

            <a class="close" href="#close"></a>
        </div>
        
        
<!------------------------------------------ END OF 모달창  ------------------------------------------------->	
			</div>
		</div>
	</div>
	
</div>
<!-- /main-cont -->

<jsp:include page="/WEB-INF/view/include/footer.jsp" />


</body>  
</html> 