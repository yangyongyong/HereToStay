<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
.counters-row-i span {
   margin-top: 30px;
}
#divDetail{
	width : 100%;
}
#storageOrder {
	
   float : right;
    display: releative;
    margin-top: 40px;
    width: 102px;
    height: 24px;
    background: #ff7200;
    border-radius: 2px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    text-align: center;
    font-size: 12px;
    text-decoration: none;
    color: #fff;
    border: 0px;
    font-family: 'Montserrat';
    font-weight: normal;
    text-transform: uppercase;
}
#storageOrder a {
    color: #fff;
    text-decoration: none;
}
#addr{ /*테이블에서 주소 컬럼 널빙 설정*/
   width: 150px;
   }
   
   #name{ /*테이블에서 이름 컬럼 널빙 설정*/
   width: 100px;
   }
   
   #num{ /*테이블에서 이름 컬럼 널빙 설정*/
   width: 30px;
   }
#storageOrder:hover {
    background: #ff8f35;
}

.baderi{width:20%;}
.table-a th{text-align:center;}

@media screen and (max-width: 1130px)
{
.shortcodes-left img, .shortcodes-right img{
width:45%;}
}

.counters-four-colls .counters-row-i:last-child {
float:left;

}

.counters_wrap b{
url(../img/counters-d.png) center bottom no-repeat;
    background-image: url(../img/counters-d.png);
    background-position-x: center;
    background-position-y: bottom;
    background-size: initial; 
    background-repeat-x: no-repeat;
    background-repeat-y: no-repeat;
    background-attachment: initial; 
    background-origin: initial;
    background-clip: initial;F
    background-color: initial;    
    padding-bottom: 10px;
    margin-bottom: 9px;
}
.counters-four-colls .counters-row-i{
width:31.3%;
}

a{ color: #ff7200; text-decoration: none;}
.footer-tour-a {
   font-weight:bold;
   color : #000;
   font-family: 'Montserrat';
   font-size : 12px;
}
.footer-tour-b{
   font-size : 10px;
}
.footer-tour-r{
   margin-left : 50px;
   float : left;
}
.more{
float: right;
margin-right: 18px;
color:#ccc;
font-size:12px;
}

.more1{
float: right;
color:#ccc;
font-size:12px;
}

#apen {
	color: #ff7200;
    text-decoration: none;
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

<!-- 업데이트되었을 시 리스트를 다시 출력 -->
<c:choose>
<c:when test="${result ne null}">
<script type="text/javascript">
if(${result} > 0){ 
     location.href="pensionList.do"; 
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
            <div class="page-title">펜션리스트</div>
            <div class="breadcrumbs">
                 <a href="#">관리자페이지</a> / <span>펜션관리</span>
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
               
               <!--  //start 재고리스트// -->
                  <div class="shortcodes-left" style="">
                     <div><span><b>재고리스트</b> <a href="/manager/storageDetail.do"><b class='more'>더보기</a></b></span></div>
                     <div class="accordion">
                        <table class="table-a" border="0" cellspacing="0" cellpadding="0">
                           <tr>
                              <th align="center">순번</th>
                              <th align="center">펜션이름</th>
                              <th align="center">주소</th>
                              <th align="center">현재상태</th>
                           </tr>
                           <!-- 재고리스트가 없을 시  -->
                           <c:choose>
                              <c:when test="${listModel == null}">
                                 <tr>
                                    <td colspan='4'>등록된 게시물이 없습니다.</td>
                                 </tr>
                              </c:when>
                              <c:otherwise>
                              
                                 <c:forEach items="${listModel}" begin="0" end="4"  var="sto" varStatus="status">
                                    <tr class="accordion-toggle">
                                       <td align="center">${status.count}</td>
                                       <td align="center" id="apen">${sto.penName}</td>
                                       <td align="center">${sto.penAddr2}</td>
                                       <td align="center" class="baderi">
                                       <!-- //이미지 출력 조건문//  -->
                                       <c:choose>
                                             <c:when test="${sto.stoBath<5 or sto.stoTnc<5}">
                                                <img src="/img/manager/bad.png" width="30px" height="20px"></c:when>
                                                <c:when test="${sto.stoBath<10 and sto.stoBath >5 or sto.stoTnc<10 and sto.stoTnc>5}">
                                                <img src="/img/manager/soso.png" width="30px" height="20px">
                                                </c:when>
                                             <c:otherwise>
                                                <img src="/img/manager/good.png" width="30px" height="20px"></c:otherwise>
                                       </c:choose> 
                                       <!-- \\이미지 출력 조건문 \\-->
                                          </td>
                                    </tr>
                                    <!-- 아코디언 하단 부분 -->
                                    <tr class="accordion-content">
                                       <td colspan="4">
                                          <div id="divDetail">
                                             <div class="footer-tour-r">
                                                <div class="footer-tour-a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;숯</div>
                                                <div class="footer-tour-b">현재 / 전체</div>
                                                <div class="footer-tour-c">${sto.stoTnc} / 20</div>
                                             </div>
                                             <div class="footer-tour-r">
                                                <div class="footer-tour-a">&nbsp;목욕세트</div>
                                                <div class="footer-tour-b">현재 / 전체 </div>
                                                <div class="footer-tour-c">${sto.stoBath} / 20 </div>
                                                
                                             </div>
                                             <input type="hidden" id="penId" name="penId" value="${sto.penId}"/>
                                             <button id="storageOrder"><a href="pensionList2.do?penId=${sto.penId}">주문하기</a></button>
                                          </div>
<!--                                           </form> -->
                                       </td>
                                    </tr>
                                    <!-- END 아코디언 하단부분 -->
                                 </c:forEach>
                              </c:otherwise>
                           </c:choose>
                        </table>
                     </div>
                  </div>
                  
                  <!-- \\END 재고리스트 \\ -->
                 <div class="shortcodes-right">
                   <div><span><b>허가리스트</b> <a href="/manager/pensionMore.do"><b class='more1'>더보기</a></b></span></div>
                     <table class="table-a light">
                        <tr>
                           <th align="center">순번</th>
                           <th align="center">펜션이름</th>
                           <th align="center">주소</th>
                           <th align="center">요청날짜</th>
                           <th align="center">현재상태</th>
                        </tr>

<!---------------------------------------------- 펜션 허가리스트 출력부분 ---------------------------------------------->
      <c:choose>
        <c:when test="${listmodel == null}">
            <tr><td colspan='4'>등록된 게시물이 없습니다.</td></tr>
        </c:when>
        <c:otherwise>
           <c:forEach items="${listmodel}" begin="0" end="4" var="a" varStatus="status" >
         <tr height="25">
            <td id="num"class="penName" style="cursor:pointer" align="center">${status.count}</td>
            <td id="name" class="penName" style="cursor:pointer" align="center">

               <a href="pensionDetail.do?selectId=${a.penId}">
                ${a.penName}
              </a>
            
            </td>
            <td id="addr" class="penName" style="cursor:pointer" align="center" >${a.penAddr2}</td>
            <td class="penName" style="cursor:pointer" align="center">${a.penDate}</td>  
            <td class="penName" style="cursor:pointer" align="center">${a.penStatus}</td>  
         </tr>   
         </c:forEach>
        </c:otherwise>
      </c:choose>
                     </table>
                     
                     
                     
                  </div>
                  <div class="clear"></div>
               </div>
               <!-- // tables // -->

               <!-- // counters // -->
               <div class="counters">
                  <div class="typography-heading fly-in">허가 요청 현황</div>
                  <div class="counters-four-colls fly-in">
                  <div class="counters_wrap">
                     <div class="counters-row-i">
                        <b class="numscroller" data-slno='1' data-min='0' data-max='10'
                           data-delay='1' data-increment="1">${countday.penDay}</b> <span>오늘</span>
                           
                     </div>
                     <div class="counters-row-i">
                        <b class="numscroller" data-slno='1' data-min='0' data-max='10'
                           data-delay='1' data-increment="1">${countmonth.penMonth}</b> <span>이번 달</span>
                     </div>
                     
                     <div class="counters-row-i">
                        <b class="numscroller" data-slno='1' data-min='0' data-max='10'
                           data-delay='1' data-increment="1">${countok.penOk}</b> <span>수락</span>
                     </div>
                  </div>
                  </div>
                  <div class="clear"></div>
               </div>
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
         
//          아코디언 JS 추가
         $('.accordion').find('.accordion-toggle').click(function() {
            $(this).next().slideToggle('600');
            $(".accordion-content").not($(this).next()).slideUp('600');
         });
         $('.accordion-toggle').on('click', function() {
            $(this).toggleClass('active').siblings().removeClass('active');
            });
         
      });
   </script>
   <!-- \\ scripts \\ -->
<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>
</html>