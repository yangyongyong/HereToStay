<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	int num  = Integer.parseInt((String)request.getAttribute("mode"));
%>
<jsp:include page="/WEB-INF/view/include/owner_header.jsp"></jsp:include>
<!DOCTYPE html>

<html lang="ko-KR" class="no-js">
<head>
    <title>여기없대 사장님 페이지</title>
    <link rel="canonical" href="https://guest.goodchoice.kr"/>
    <link rel="shortcut icon" type="image/x-icon" href="/img/favicon_170822.ico" />
    <link href="/css/owner/bootstrap.min.css" rel="stylesheet">
    <link href="/css/owner/common.host.css?rand=1510903898" rel="stylesheet">
    <link href="/css/owner/font-awesome.min.css" rel="stylesheet">
    <link href="/css/owner/daterangepicker-bs3.css" rel="stylesheet" />
    <link href="/css/owner/bootstrap-timepicker.css" rel="stylesheet" />
    <link href="/css/fileUpload.css" rel="stylesheet" />
    <script src="/js/owner/jquery-2.1.3.min.js"></script>
    <script src="/js/owner/jquery-ui.min.js"></script>
    <script src="/js/owner/jquery.lazyload.min.js"></script>
    <script src="/js/owner/jquery.cookie.min.js"></script>
    <script src="/js/owner/list.min.js"></script>
    <script src="/js/owner/common.host.js"></script>
    <script src="/js/owner/guest.host.js"></script>
    <style>
    	.selProductFile{width:140px; margin:1px;}
		.form-title.large {width:144px !important;}
		.input-sm {
   			height: 32px !important;
		    padding: 9px !important;
		    font-size: 14px !important;
		    line-height: 32px !important;
		    border-radius: 3px !important;
		}
		
		.form-body .form-group {
		    margin-bottom:0px !important;
		}

		.room-price:not(:first-child) {
		    padding-top:20px;
		}
		
		.mo {
		    display:    none;
		    position:   fixed;
		    z-index:    1000;
		    top:        0;
		    left:       0;
		    height:     100%;
		    width:      100%;
		    background: rgba( 255, 255, 255, .8 )
		                url('/img/pIkfp.gif')
		                50% 50%
		                no-repeat;
		}
		.room-disable {
		    position: absolute;
		    margin-top: -47px;
		    right: 13px;
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
                    	<a href="/owner/Step1Pension.do">
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
								<span class="btn-todo on"><img src="/img/owner/asset/icn_4_room_64x64.png"></span>
                      			<span class="todo-desc on">객실 등록</span>
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
            				<span class="btn-todo"><img src="/img/owner/asset/icn_3_rule_64x64.png"></span>
							<span class="todo-desc">완료</span>
						</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>    
    <div class="guest-nav">
        <ul class="nav nav-tabs room-tabs">
         	<c:forEach items="${roomTagList}" var="room" varStatus="status">
        		<li class="active"><a href="#" onclick="findMode(${status.count})">${room.romName}</a></li>
        	</c:forEach>
           	<li class="active"><a href="#" onclick="createMode()">+ 객실추가</a></li>
        </ul>
    </div>

	<div class="guest-title-layer">
		<ul>
			<li>[+ 객실추가]를 누르시면 객실을 추가할 수 있으며 최대 개수는 20개 입니다.</li>
			<li>각 객실 유형 (원룸형, 투룸형, 복층형 등)에 따라 설정을 관리 할 수 있습니다.</li>
            <li><strong>해당 페이지의 요금 설정은 객실별 기준가격 입니다. 객실별 판매 금액은 '예약관리 > 실시간 예약 관리' 에서 수정하셔야 합니다.</strong></li>
<!-- 			<li><strong>[객실정보 복사추가]를 누르시면 선택하신 객실의 정보를 복사하여 추가 하실수 있습니다.</strong></li> -->
		</ul>
	</div>
        <div class="list-layer">
        <form id="room-form" class="form-horizontal" method="post"
        	enctype="multipart/form-data">
            <input type="hidden" name="armgno" value="" />
            <input type="hidden" name="data" />
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <th>객실 정보</th>
                        <td class="bd_r_none">
                            <div class="form-layer mb_24">
                                <span class="form-title">객실명</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" type="text" name="romName" placeholder="이름을 입력하세요." value="${roomdb.romName}">
                                </span>
                            </div>
                            <div class="form-layer mb_24">
                                <span class="form-title">객실 유형</span>
                                <span class="form-body">
                                <input type="hidden" value="${roomdb.romType}" id="romType">
                                        <select name="romType">
                                            <option value="0" selected="selected">객실을 선택해주세요</option>
                                            <option value="원룸">원룸</option>
                                            <option value="투룸">투룸</option>
                                            <option value="쓰리룸">쓰리룸</option>
                                            <option value="복층형">복층형</option>
                                            <option value="분리형">분리형</option>
                                        </select>
                                </span>
                            </div>
                            <div class="form-layer">
                                <span id="title-by-room-type" class="form-title">인원</span>
                                <span class="form-body">
										<div class="pull-left">
											<span
												style="height: 48px; line-height: 48px; float: left; width: 36px; font-size: 14px; color: rgba(0, 0, 0, 0.87); font-weight: 500">정원</span>
											<div class="select-style small-size">
													<input class="form-control normal-size" type="text" name="romPeople" id="bunk_bed" value="${roomdb.romPeople}">
											</div>
											<div style="float:right; padding-top:13px;"><label>명</label></div>
										</div>
										
                                </span>
                            </div>
                                                    </td>
                        <td class="help-tooltip popover-container">
                            <a href="javascript:void(0)" data-toggle="popover"></a>
                            <div class="hide">
                                <span></span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>이미지 정보<br />(최대 10장)</th>
                        <td class="bd_r_none">
                             <div class="form-layer mb_15">
                                <p class="description text-normal">* 객실 및 내부 시설 등 객실 내의 전반적인 이미지를 업로드해주시기 바랍니다.</p>
                            	<p class="description text-normal">* 이미지 등록시 첫 이미지가 메인 이미지 입니다.</p>
                            	<p class="description text-normal">* 객실 이미지를 변경할 때 전체 이미지를 다시 업로드해주시기 바랍니다. </p>                                
                                <p class="description text-normal">* 객실 유형을 먼저 선택하신 후 업로드 가능합니다.</p>
                            </div>
                            
                            
                            <div class="form-layer mb_15">
                            <div class="imgs_wrap">
            							<img id="img" />
        							</div>
                        </div>

                        <div class="form-layer-text" style="width:720px;">
                    	<div class="file_input">
                        			<label>
										File Attach
										<input type="file" id="imgInp" name="uploadFile" onchange="javascript:document.getElementById('file_route').value=this.value" multiple="multiple">
									</label>
									<input type="text" readonly="readonly" title="File Route" id="file_route"></div>
                     	</div>
                        
                        </td>
                        <td class="help-tooltip popover-container">
                            <a href="javascript:void(0)" data-toggle="popover"></a>
                            <div class="hide">
                                <span></span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>객실<br>소개글</th>
                        <td colspan="2">
                            <div class="form-layer">
                                <textarea class="form-control textarea-layer"" rows="8" name="romIntro" placeholder="객실 내 침대 구성과, 전용 욕실 여부 등 객실 소개/구성을 자세히 기재해 주세요." >${roomdb.romIntro}</textarea>
                            </div>
                            <span class="exam-button"> <i class="fa fa-angle-down" aria-hidden="true"></i></span>
                            <div class="exam-layer hide" style="width:714px">
                                <div class="exam-layer-guide9">
                                    <div class="exam-detail-layer">
                                        <span class="guide-text">
                                            원룸형<br/>
                                            이층침대 2개 혹은 온돌방으로 개인침구세트 4개 제공<br/>
                                            개인 콘센트, 캐비닛, 전등 구비<br/><br/>
                                            투룸형<br/>
                                            더블침대 1개+인원에 맞는 침구세트 추가제공<br/><br/>
                                            복층형<br/>
                                            방 2개, 거실, 화장실, 부엌,베란다<br/>
                                            취사 전자제품(냉장고,전자레인지,인덕션,밭솥 등)과 식기류 및 기본 양념도 구비되어 있습니다.
                                            <br/><br/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                    <th>편의시설<br />서비스 안내</th>
                    <td class="bd_r_none">
                    <input type="hidden" value="${roomdb.romOpt}" id="chkList">
                        <div class="form-layer align_chk">
                            <label for="theme90" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme90" name="romOpt"  value="침대" />침대</label>
                            <label for="theme91" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme91" name="romOpt"  value="TV" />TV</label>
                            <label for="theme92" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme92" name="romOpt"  value="냉장고" />냉장고</label>
                            <label for="theme93" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme93" name="romOpt"  value="쇼파" />쇼파</label>
                            <label for="theme94" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme94" name="romOpt"  value="옷장" />옷장</label>
	            	     	<label for="theme95" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme95" name="romOpt"  value="화장대" />화장대</label>
			     			<label for="theme96" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme96" name="romOpt"  value="전기밥솥" />전기밥솥</label>
			     			<label for="theme97" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme97" name="romOpt"  value="전자레인지" />전자레인지</label>
			     			<label for="theme98" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme98" name="romOpt"  value="인덕션" />인덕션</label>
			     			<label for="theme99" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme99" name="romOpt"  value="가스레인지" />가스레인지</label>
			     			<label for="theme100" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme100" name="romOpt"  value="취사도구" />취사도구</label>
			     			<label for="theme101" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme101" name="romOpt"  value="커피포트" />커피포트</label>
			     			<label for="theme102" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme102" name="romOpt"  value="헤어드라이기" />헤어드라이기</label>
			     			<label for="theme103" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme103" name="romOpt"  value="정수기" />정수기</label>
			     			<label for="theme104" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme104" name="romOpt"  value="욕실용품" />욕실용품</label>
			     			<label for="theme105" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme105" name="romOpt"  value="스파" />스파</label>
                         </div>
                    </td>
                    <td class="help-tooltip popover-container">
                        <a href="javascript:void(0)" data-toggle="popover"><img src="/img/owner/asset/icn_tooltip.png" /></a>
                        <div class="hide">
                            <span><img src="/img/tooltips/intro/img_tooltip03.png" /></span>
                        </div>
                    </td>
                </tr>
                    <tr>
                        <th>
							요금정보 <br/>
						</th>
                        <td class="bd_r_none">

                                        <div class="form-inline">
                                            <label data-role="price" class="radio-inline" style="margin-right:10px">
                                               	 결제요금 : <input name="romCost" data-role="price" class="form-control input-sm" type="text" value="${roomdb.romCost}" style="width:90px"> 원
                                            </label>
                                       	</div>

                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="submit-layer">
                <button class="btn btn-default btn-submit btn-guest-room" type="button" onclick="deleteRoomInfo(<%=num %>)" >삭제하기</button>
                &nbsp;&nbsp;&nbsp;
                <button class="btn btn-yeogi btn-submit btn-guest-room" type="button" onclick="submitRoom()" >저장하기</button>
                            </div>
             <div class="submit-layer info-text-layer">
                <p><img src="/img/ic_guide.png"></p>
                <p class="description info-text"><strong>"저장하기"</strong>는 객실 정보 등 모든 정보를 <strong>이 페이지 내에서만 저장</strong>가능</p>
            </div>
            <input type="hidden" name="romId" value="${roomdb.romId}"/> 
        </form>
    </div>
</section>

<script>
// DB에서 받아온 값 입력 쿼리
$(function(){

	// db 값 체크 설정
    var list = $('#chkList').val();
    var res = list.split(",");
    
    
    
    var text = document.getElementsByName("romOpt");
   
    for (var i=0; i< res.length; i++){
    	for (var j=0 ; j<text.length;j++){
    		if(res[i] == text[j].value){
    			text[j].checked = true;
    		}
		}
    }
    var type = $("#romType").val();
    $("select option[value="+type+"]").attr("selected", true);

});

//객실 유효성 검사
function submitRoomInfo() { // 저장하기
    $('button').prop('disabled', true);
    if ($('#room-form input[name=romName]').val().length < 3) {
        alert('객실명은 3자 이상 입력해주세요.');
        $('#room-form input[name=armgname]').focus();
        $('button').prop('disabled', false);
        return false;
    }

    var room_type = $('select[name=romType]');
    var introduction = $('textarea[name=romIntro]');
    var personal = $('#bunk_bed');

    if (room_type.val() == 0) {
        alert('객실 유형을 선택해주세요.');
        room_type.focus();
        $('button').prop('disabled', false);
        return false;
    }
    if (personal.val() == "" || personal.val() == 0) {
        alert('정원 인원을 입력해주세요 (최대)');
        personal.focus();
        $('button').prop('disabled', false);
        return false;
    }
    if (introduction.val().length === 0) {
        alert('객실 소개글을 입력해주세요.');
        introduction.focus();
        $('button').prop('disabled', false);
        return false;
    }
    var lowPrice = false;
    $('input[data-role=price]').each(function() {
        if (parseInt($(this).val().replace(/,/g,'')) < 5000) lowPrice = true;
    });

    if (lowPrice) {
        alert('정상가 5,000 원 미만은 등록이 불가능합니다.');
         $('input[data-role=price]').each(function($i) {
            if (parseInt($(this).val().replace(/,/g,'')) < 5000) $('input[data-role=price]')[$i].focus();
        });
        $('button').prop('disabled', false);
        return false;
    }
    return true;
}

//Submit 이벤트
function submitRoom(){
	var result = submitRoomInfo();
	if(!result){
		return result;	
	}	
    $('#room-form').attr('action', '/owner/Step3Ok.do');
    $('#room-form').submit();
}
// ?mode=Create 이벤트
function createMode(){
	var result = submitRoomInfo();
	if(!result){
		return result;	
	}	
	 $('#room-form').attr('action', '/owner/Step2Room.do?mode=create');
	 $('#room-form').submit();
}
//?mode=index 이벤트
function findMode(num){
	var result = submitRoomInfo();
	if(!result){
		return result;	
	}	
	var str = '/owner/Step2Room.do?mode='+num;
	 $('#room-form').attr('action', str);
	 alert($('#room-form').attr('action'));
	 $('#room-form').submit();
}
//delete?mode=index 이벤트
function deleteRoomInfo(num){
	var result = submitRoomInfo();
	if(!result){
		return result;	
	}	
	var str = '/owner/Step2RoomDelete.do?mode='+num;
	 $('#room-form').attr('action', str);
	 //$('#room-form').submit();
}

//미구현
function roomCopy(ano, armgno) {
    if (confirm('선택하신 객실의 정보를 복사합니다.\n객실정보 복사를 하시겠습니까?')) {
        $('button').prop('disabled', true);
        $.post('/guest/roomCopy','ano='+ano+'&armgno='+armgno,function(result) {
            if (jQuery.parseJSON(result).message === 'SUCCESS') {

                alert('객실정보 복사가 완료 되었습니다.');
                var url = '/guest/room?armgno=' + jQuery.parseJSON(result).armgno;
                $(location).attr('href', url);
            } else {
                alert('객실정보 복사 처리에 실패하였습니다. 관리자에게 문의하세요.');
                $('button').prop('disabled', false);
            }
        }).fail(function() {
            alert('오류가 발생했습니다. 관리자에게 문의하세요.');
            $('button').prop('disabled', false);
        });
    }
}


$('.guest-title-layer').css('margin-top', '0');
$('.guest-title-layer').css('box-shadow', '-1px 1px 5px #aaa');
$('.guest-title-layer').css('border-top-right-radius', '5px');
$('.guest-title-layer').css('border-bottom-left-radius', '5px');
$('.guest-title-layer').css('border-bottom-right-radius', '5px');
$('.list-layer').css('margin-top', '0');


</script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="/js/owner/ie10-viewport-bug-workaround.js"></script>
<script src="/js/owner/bootstrap.min.js"></script>
<script src="/js/owner/moment.min.js"></script>
<script src="/js/owner/daterangepicker.js"></script>
<script src="/js/owner/bootstrap-timepicker.js"></script>
<script src="/js/owner/pension.js"></script>   
    </body>
</html>