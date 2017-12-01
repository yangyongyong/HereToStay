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
   href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css'>



<style type="text/css">
.counters-row-i span {
   margin-top: 30px;
}
#storageOrder {
   float : right;
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
width:45%;
}
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
    background-clip: initial;
    background-color: initial;
    
    padding-bottom: 10px;
    margin-bottom: 9px;
}


.counters-four-colls .counters-row-i{
width:31.3%;
}


/****************하이퍼링큰 밑줄 없애고 색깔 주황색 ****************/
a{ color: #ff7200; text-decoration: none;}
.footer-tour-a {
   font-weight:bold;
   color : #000;
   font-family: 'Montserrat';
   font-size : 12px;
}
/****************하이퍼링큰 밑줄 없애고 색깔 주황색  END****************/
.footer-tour-b{
   font-size : 10px;
}
.footer-tour-r{
   
   float : left;
}
/*************************** 테이블 중앙정렬 *****************************/
.tables{
    margin-left: auto;
    margin-right: auto;
}
/*************************** 테이블 중앙정렬 END *****************************/


/*************************** 테이블 tr 비율 *****************************/
#a1{width: 10%}
#a2{width: 20%}
#a3{width: 40%}
#a4{width: 20%}
#a5{width: 10%}
/*************************** 테이블 tr 비율 END *****************************/




</style>
</head>
<body class="inner-body">


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
            <div class="page-title">허가리스트</div>
            <div class="breadcrumbs">
                 <a href="#">관리자페이지</a> / <span>허가리스트</span>
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
      

<!--                  <div class="shortcodes-right"> -->
                     <span><b>허가리스트</b></span>
                     <table class="table-a light">
                        <tr>
                           <th id="a1" align="center">순번</th>
                           <th id="a2" align="center">펜션이름</th>
                           <th id="a3" align="center">주소</th>
                           <th id="a4" align="center">요청날짜</th>
                           <th id="a5" align="center">현재상태</th>
                        </tr>

<!-- 펜션 허가리스트 출력부분 -->
      <c:choose>
        <c:when test="${listmodel == null}">
            <tr><td colspan='4'>등록된 게시물이 없습니다.</td></tr>
        </c:when>
        <c:otherwise>
           <c:forEach items="${listmodel}" var="a" varStatus="status" >
         <tr height="25">
            <td id="num"class="penName" style="cursor:pointer" align="center">${a.rnum}</td>
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
   
   <!--------------------------------페이징처리------------------------------------>
   function fn_movePage(val){
       jQuery("input[name=pageNo]").val(val);
       jQuery("form[name=frm]").attr("method", "post");
       jQuery("form[name=frm]").attr("action","").submit();
   }
   
   <!--------------------------------END OF 페이징처리------------------------------------>
   
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
   </script>
   <!-- \\ scripts \\ -->
<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>
</html>