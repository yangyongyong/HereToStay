<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<jsp:include page="/WEB-INF/view/include/owner_header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Sparrow | Travel Agency</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta charset="utf-8" />
<link rel="icon" href="favicon.png" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="/build/mediaelementplayer.min.css" />
<link rel="stylesheet" href="/css/jquery.formstyler.css">
</head>
<style>
body{
background:#fff;

}

#reservation {height: 149px;}
.tables {margin-bottom: 30px;}
.table-left {width: 1100px; margin: 0 auto; float: none; height: 389px;
    overflow-y: scroll;
   
    
    }
.counters {width: 1100px; margin: 0 auto;}
.progress-bars {width: 1100px; margin: 0 auto;}
.tabs {width: 1100px; margin: 0 auto;}
.pie-charts {width: 1100px; margin: 0 auto;}
.counters-five-colls .counters-row-i:last-child{float:right;}
.counters-five-colls .counters-row-i{margin-right:29%;}
.counters_wrap{width:520px; margin:0 auto;}


@media screen and (max-width: 1100px){
.table-left {width:100%;}
.counters {width:100%;}
.progress-bars{width:100%;}
.tabs {width:100%;}
.pie-charts{width:100%;}
}

.header-account a{
	border:none;
	padding:0;
	}
</style>
<body>
	<section id="reservation"></section>
	<!-- // tables // -->
	<div class="tables">
		<div class="typography-heading">예약리스트</div>
		<div class="shortcodes-left table-left">
			<table class="table-a light">
				<tr>
					<th>월별</th>
					<th>펜션명</th>
					<th>객실명</th>
					<th>매출액</th>
				</tr>
				<c:forEach items="${listModel}" var="res">
					<tr>
						<td>${res.resOutdate}</td>
						<td>${res.penName}</td>
						<td>${res.romName}</td>
						<td>${res.restot}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="clear"></div>
	</div>
	<!-- // tables // -->



	
							<!-- // counters // -->
						<div class="counters">
							<div class="typography-heading fly-in">전체 이용자수, 총매출액</div>
							<div class="counters-five-colls fly-in">
								<div class="counters_wrap">
									<div class="counters-row-i">
										<img alt="" src="/img/counters-i-02.png" />
										<b class="numscroller" data-slno='1' data-min='2'
											data-max=${listCount.resNumber } data-delay='1' data-increment="10"></b> <span>전체이용자수</span>
									</div>
									<div class="counters-row-i">
										<img alt="" src="/img/counters-i-04.png" />
										<b class="numscroller" data-slno='1' data-min='0'
											data-max='${listCount.restot }' data-delay='3' data-increment="10000"></b> <span>총매출액</span>
									</div>
								<div>
							</div>
							<div class="clear"></div>
						</div>
						</div>
						<!-- \\ counters \\ -->
					</div>
		<div class="clear"></div>
		<!-- \\ progress-bars \\ -->
		<div class="progress-bars">
							<div class="typography-heading fly-in">월별 펜션 이용률</div>
							<div class="shortcodes-left fly-in">
								<c:forEach items="${listRate}" var="rate" begin="0" end="5">
									<div class="about-percent">
										<label>${rate.resOutdate}월 - ${rate.resNumber}%</label>
										<div data-percentage="${rate.resNumber}" class="about-percent-a">
											<span></span>
										</div>
									</div>
								</c:forEach>		
							</div>
							<div class="shortcodes-right fly-in">
									<c:forEach items="${listRate}" var="rate" begin="6" end="12">
									<div class="about-percent">
										<label>${rate.resOutdate}월 - ${rate.resNumber}%</label>
										<div data-percentage="${rate.resNumber}" class="about-percent-a">
											<span></span>
										</div>
									</div>
									</c:forEach>
							</div>
						</div>
							<div class="clear"></div>
						<!-- \\ progress bars \\ -->



	<!-- // scripts // -->
	<script src="/js/jquery-1.11.3.min.js"></script>
	<script src="/js/numscroller-1.0.js"></script>
	
	
	<!-- \\ scripts \\ -->
	


</body>
</html>