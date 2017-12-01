<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	session.setAttribute("ownId", "test1"); 
	String mode = (String)request.getAttribute("mode");
%>
<jsp:include page="/WEB-INF/view/include/owner_header.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="ko-KR" class="no-js">
<head>
    <title>여기없대 사장님 페이지</title>
<!--     <link rel="canonical" href="https://guest.goodchoice.kr"/> -->
<!--     <link rel="shortcut icon" type="image/x-icon" href="/img/favicon_170822.ico" /> -->
    <link href="/css/owner/bootstrap.min.css" rel="stylesheet">
    <link href="/css/owner/common.host.css" rel="stylesheet">
    <link href="/css/owner/font-awesome.min.css" rel="stylesheet">
    <link href="/css/owner/daterangepicker-bs3.css" rel="stylesheet" />
    <link href="/css/owner/bootstrap-timepicker.css" rel="stylesheet" />
    <script src="/js/owner/jquery-2.1.3.min.js"></script>
    <script src="/js/owner/jquery-ui.min.js"></script>
    <script src="/js/owner/jquery.lazyload.min.js"></script>
    <script src="/js/owner/jquery.cookie.min.js"></script>
    <script src="/js/owner/list.min.js"></script>
    <script src="/js/owner/common.host.js"></script>
    <script src="/js/owner/pension.js"></script>
</head>

<body id="main">
<section class="container">
<div class="menu-step4">
	
	<% if(mode.equals("apply")){%>
		<h1>STEP 2</h1>
        <h1>펜션을 검수 요청해주세요.</h1>
        <h1>
        	<button class="btn btn-yeogi btn-submit btn-guest-room" type="button" onclick="startRoomInsert()">검수 요청하기</button>
        </h1>
	<% }else{ %>
        <h1>STEP 1</h1>
        <h1>펜션을 등록해주세요.</h1>
        <h1>
        	<button class="btn btn-yeogi btn-submit btn-guest-room" type="button" onclick="startRoomInsert()">펜션 등록하기</button>
        </h1>
     <% } %>
        
        
        
        
</div>
    <div class="main-layer">
        <div class="affiliate-layer">
            <div class="not-used"><span>준비중입니다.</span></div>
            <div class="room-layer">
                <a href='/reservation'><span>예약 객실 판매 <i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                <span>
                    <ul>
                        <li>0</li>
                        <li>0</li>
                        <li>0</li>
                    </ul>
                    <ul>
                        <li>오늘</li>
                        <li>이번주</li>
                        <li>이번달</li>
                    </ul>
                </span>
            </div>
            <div class="review-layer">
                <span>등록된 리뷰수 (총 55개) <i class="fa fa-angle-right" aria-hidden="true"></i></span>
                <span>
                    <ul>
                        <li>1</li>
                        <li>5</li>
                        <li>20</li>
                    </ul>
                    <ul>
                        <li>오늘</li>
                        <li>이번주</li>
                        <li>이번달</li>
                    </ul>
                </span>
            </div>

        </div>
 		 <div class="reservation-layer">
                <span class="reservation-title">입실 예정 고객 정보</span>
                <span class="date">2017. 11. 21</span>
                 <a href='/reservation'><span class="more">더보기 <i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                <table>
                    <thead>
                        <tr>
                            <th>예약번호</th>
                            <th>객실명</th>
                            <th>예약자</th>
                            <th>전화번호</th>
                            <th>사용기간</th>
                            <th>예약확인</th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="text-center" colspan="6">예약 내역이 없습니다.</td>
                    </tr>
                    </tbody>
                </table>
            </div>
    </div>
</section>

</body>

</html>