<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/include/owner_header.jsp"></jsp:include>>
<!DOCTYPE html>
<html lang="ko-KR" class="no-js">
<head>
    <title>여기없대 사장님 페이지</title>
    <link rel="canonical" href="https://guest.goodchoice.kr"/>
    <link rel="shortcut icon" type="image/x-icon" href="/img/favicon_170822.ico" />
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
     <style>
     .header nav ul li:hover > a span,
    .header nav ul > li > a span.on{
    margin-top:5px;
   } 
     .header nav ul li ul.sub {
    margin-top: 7px;
   }
   .guest-title-layer ul li{
  	text-align:center;
  	list-style:none;
  	padding-left:0;
   }
   
   
     </style>
</head>
<body id="main">
	<section class="container">
        <div class="menu-step3">
        <div class="todo-layer">
 			<nav>
                <ul>
                    <li class="prog">
                    </li>
                    <li>
                    	<a href="#">
                        	<span class="btn-todo"><img src="/img/owner/asset/icn_2_write_64x64.png"></span>
                        	<span class="todo-desc">펜션 등록</span>
                        </a>
                    </li>
                    <li class="prog">
                        <span class="do">&nbsp;</span>
                        <span>&nbsp;</span>
                        <span class="do">&nbsp;</span>
                        <span>&nbsp;</span>
                        <span class="do">&nbsp;</span>
                        <span>&nbsp;</span>
                        <span class="do">&nbsp;</span>
                        <span>&nbsp;</span>
                        <span class="do">&nbsp;</span>
                    </li>
						<li>
							<a href="#">
								<span class="btn-todo"><img src="/img/owner/asset/icn_4_room_64x64.png"></span>
                      			<span class="todo-desc">객실 등록</span>
                      		</a>	
						</li>
						
						<li class="prog">
                        <span class="do">&nbsp;</span>
                        <span>&nbsp;</span>
                        <span class="do">&nbsp;</span>
                        <span>&nbsp;</span>
                        <span class="do">&nbsp;</span>
                        <span>&nbsp;</span>
                        <span class="do">&nbsp;</span>
                        <span>&nbsp;</span>
                        <span class="do">&nbsp;</span>
                    </li>
                    <li>
                    	<a href="#">
            				<span class="btn-todo on"><img src="/img/owner/asset/icn_3_rule_64x64.png"></span>
							<span class="todo-desc on">완료</span>
						</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>    
 <div class="guest-title-layer">
		<ul>
			<li><strong>팬션 과 객실 등록이 완료되었습니다.</strong></li>
			<li><strong></strong></li>
            <li></li>
            <li><strong></strong></li>
			<li><strong></strong></li>
		</ul>
		<div style="width: 85px;
    margin: 0 auto;">
			<button class="btn btn-yeogi btn-submit btn-guest-room" type="button" onclick="mainMode()" style="">돌아가기</button>
	</div>
</div>
</section>
</body>
</html>
  