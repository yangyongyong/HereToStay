<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko-KR" class="no-js">
<jsp:include page="/WEB-INF/view/include/owner_header.jsp"></jsp:include>
<head>
    <title>여기없대 사장님 페이지</title>
    <link rel="canonical" href="https://guest.goodchoice.kr"/>
    <link rel="shortcut icon" type="image/x-icon" href="/img/favicon_170822.ico" />
    <link href="/css/owner/bootstrap.min.css" rel="stylesheet">
    <link href="/css/owner/common.host.css" rel="stylesheet">
    <link href="/css/owner/font-awesome.min.css" rel="stylesheet">
    <link href="/css/owner/daterangepicker-bs3.css" rel="stylesheet" />
    <link href="/css/owner/bootstrap-timepicker.css" rel="stylesheet" />
    <link href="/css/fileUpload.css" rel="stylesheet" />
    <script src="/js/owner/jquery-2.1.3.min.js"></script>
    <script src="/js/owner/jquery-ui.min.js"></script>
    <script src="/js/owner/jquery.lazyload.min.js"></script>
    <script src="/js/owner/jquery.cookie.min.js"></script>
    <script src="/js/owner/list.min.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    
	<style>
    	.selProductFile{width:140px; margin:1px;}	
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
                        	<span class="btn-todo on"><img src="/img/owner/asset/icn_2_write_64x64.png"></span>
                        	<span class="todo-desc on">펜션 등록</span>
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
							<a href="#" onclick="aTagSubmit();">
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
            				<span class="btn-todo"><img src="/img/owner/asset/icn_3_rule_64x64.png"></span>
							<span class="todo-desc">완료</span>
						</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="list-layer">
			<div class="guest-title-layer mb_0 pb_0">
				<ul>
					<li>[펜션 등록] 은 펜션 전체를 소개하는 기능입니다. (사진, 편의시설, 펜션 소개글 등)</li>
					<li>우측 물음표를 클릭하시면 앱에서 어떻게 표시되는지 확인이 가능합니다.</li>
				</ul>
			</div>
    <form class="form-horizontal" id="intro-form" method="post" action="/owner/Step2Room.do" name="intro" 
    	enctype="multipart/form-data">
               
        <h3 class="guest-h3">[필수 기입 정보]</h3>
        <table class="table table-bordered">
            <thead></thead>
            <tbody>
                <tr>
                    <th>게스트 하우스<br /> 기본 정보</th>
                    <td class="bd_r_none">
                        <div class="form-layer mb_24">
                            <span class="form-title">펜션명</span>
                            <span class="form-body">
                            <input class="form-control normal-size" type="text" name="penName" placeholder="페션명을 입력하세요." value="${pensiondb.penName}" />
                            </span>
                        </div>
                        <div class="form-layer mb_24">
                            <span class="form-title">펜션 주소</span>
                            <span class="form-body">
                            <input class="form-control normal-size" id="input_roadAddress" type="text" name="penA1" readonly placeholder="업체 주소를 입력하세요." value="${pensiondb.penA1}" />
                            <button type="button" class="btn btn-yeogi btn-normal-layer" onclick="daumPostCode()" >주소 검색</button>
                            </span>
                        </div>
                        <div class="form-layer newline mb_24">
                            <span class="form-body">
                            <input class="form-control normal-size" type="text" name="penA2" placeholder="나머지 주소를 입력하세요." value="${pensiondb.penA2}" />
                            </span>
                        </div>
                                            </td>
                    <td class="help-tooltip popover-container">
                        <a href="javascript:void(0)" data-toggle="popover"><img src="/img/owner/asset/icn_tooltip.png" /></a>
                        <div class="hide">
                            <span><img src="/img/tooltips/intro/img_tooltip01.png" /></span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>펜션 이미지<br />(최대 10장)</th>
                    <td class="bd_r_none">
                        <div class="form-layer mb_15">
                            <p class="description text-normal">* 펜션 및 업체 전경, 로비, 주차장 등 업체의 전반적인 이미지를 업로드해주시기 바랍니다.</p>
                            <p class="description text-normal">* 이미지 등록시 첫 이미지가 메인 이미지 입니다.</p>
                            <p class="description text-normal">* 펜션 정보를 변경할 때 이미지를 다시 업로드해주시기 바랍니다. </p>
                        </div>

                        <div class="form-layer mb_15">
                             <div class="imgs_wrap">
            							<img id="img" />
        					 </div>
                        </div>

                        <div class="form-layer-text" style="width:720px;">
                    	<div class="file_input">
                        			<label>
										파일 첨부
										<input type="file" id="imgInp" name="uploadFile" onchange="javascript:document.getElementById('file_route').value=this.value" multiple="multiple">
									</label>
									<input type="text" readonly="readonly" title="File Route" id="file_route"></div>
                     	</div>

                    </td>
                    <td class="help-tooltip popover-container">
                        <a href="javascript:void(0)" data-toggle="popover"><img src="/img/owner/asset/icn_tooltip.png" /></a>
                        <div class="hide">
                            <span><img src="/img/tooltips/intro/img_tooltip02.png" /></span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>편의시설<br />서비스 안내</th>
                    <td class="bd_r_none">
                    <input type="hidden" value="${pensiondb.penOpt}" id="chkList">
                        <div class="form-layer align_chk">
                            <label for="theme90" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme90" name="penOpt"  value="BBQ"/>BBQ</label>
                            <label for="theme91" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme91" name="penOpt"  value="카페" />카페</label>
                            <label for="theme92" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme92" name="penOpt"  value="레스토랑" />레스토랑</label>
                            <label for="theme93" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme93" name="penOpt"  value="수영장" />수영장</label>
                            <label for="theme94" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme94" name="penOpt"  value="족구장" />족구장</label>
	            	     	<label for="theme95" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme95" name="penOpt"  value="갯벌체험" />갯벌체험</label>
			     			<label for="theme96" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme96" name="penOpt"  value="바다낚시" />바다낚시</label>
			     			<label for="theme97" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme97" name="penOpt"  value="무료주차" />무료주차</label>
			     			<label for="theme98" class="checkbox-inline icon-label">
								<input type="checkbox" id="theme98" name="penOpt"  value="반려견동반" />반려견동반</label>
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
                    <th>주인장 소개글<br />(호스트 소개)</th>
                    <td colspan="2">
                        <div class="form-layer">
                            <textarea class="form-control textarea-layer" rows="6" name="penIntro" placeholder="사장님의 특이 경력 혹은 사장님만의 재밌는 이야기가 있다면 게스트들에 소개해주세요.&#13;&#10;게스트는 숙소의 시설과 위치, 서비스는 물론, 사장님이 어떤 분인지도 관심이 있답니다.">${pensiondb.penIntro}</textarea>
                            <span id="remain-r_comment" class="remain-cnt float-right" >(<span id="count">0</span>/<span id="max">1000</span>)</span>
                        </div>
                        <span class="exam-button"> <i class="fa fa-angle-down" aria-hidden="true"></i></span>
                        <div class="exam-layer-guide1">
                            <div class="exam-detail-layer">
                              <span class="guide-text">
                                전 세계 50여개국 배낭여행 경험을 바탕으로 여행을 사랑하는 여행객들에게 필요한 서비스와 편안한 휴식을 제공하자는 모토로 게스트하우스를 운영하고 있는 홍길동 주인장입니다.
                                <br /><br />
                                세계 일주를 해보았지만 그래도 최고라고 여기는 도시는 서울인데요 서울의 맛과 멋을 함께 즐길 수 있도록 여행쟁이 주인장이 최선을 다해 도와드리겠습니다.
                                <br /><br />
                            </span>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                        <th>확인 사항<br />및 기타</th>
                        <td colspan="2">
                            <div class="form-layer">
                                <textarea class="form-control textarea-layer" rows="6" name="penNoti" placeholder="기재된 숙소 정보 외에 게스트 숙지 사항을 기재해주세요." style="min-height:120px !important;height:120px !important">${pensiondb.penNoti}</textarea>
                            </div>
                            <span class="exam-button"> <i class="fa fa-angle-down" aria-hidden="true"></i></span>
                            <div class="exam-layer-guide8">
                                <div class="exam-detail-layer">
                                    <span class="guide-text">
                                        3박이상 숙박시 20% 할인<br />
                                        시즌별 객실 가격 상이하오니 확인바랍니다.<br />
                                        위의 정보는 게스트하우스 사정에 따라 변경될 수 있습니다.<br />
                                        해당 이미지는 실제와 상이 할 수 있습니다.<br />
                                        예약 확정 이후의 취소는 취소환불규정에 의거하여 적용됩니다.
                                        <br /><br />
                                    </span>
                                </div>
                            </div>
                        </td>
                    </tr>
                    

                    <tr id="season">
                        <th>성수기 설정<br>(매년 적용)</th>
                        <td class="bd_r_none">
                            <div class="form-layer">
                            <span class="form-body">
                         			<div style="height:26px;"></div>
                                    <div class="peak-item form-inline mb_24">
                                        <input type="hidden" data-name="peak_id" value="">
                                        <input class="form-control middle-size datepicker" type="text" data-name="peak_start" data-role="datepicker" value="${pensiondb.penShot}" readonly="readonly" name="penShot">
                                        <span class="range"> ~ </span>
                                        <input class="form-control middle-size datepicker" type="text" data-name="peak_end" data-role="datepicker" value="${pensiondb.penEhot}" readonly="readonly" name="penEhot">
										<!-- 성수기 삭제 버튼 비활성화 -->
<!--                                         <button type="button" class="btn btn-yeogi remove-layer" data-role="remove-peak">삭제</button> -->
                                    </div>
                                

                                <div class="form form-peak">
                                    <div class="peak-item form-inline mb_24 hide">
                                        <input type="hidden" data-name="peak_id" value="">
                                        <input class="form-control middle-size datepicker" type="text" data-name="peak_start" data-role="datepicker" value="" readonly="readonly">
                                        <span class="range"> ~ </span>
                                        <input class="form-control middle-size datepicker" type="text" data-name="peak_end" data-role="datepicker" value="" readonly="readonly">
                                        <!-- 성수기 삭제 버튼 비활성화 -->
<!--                                         <button type="button" class="btn btn-yeogi remove-layer" data-role="remove-peak">삭제</button> -->
                                    </div>
                                </div>
                            </span>
                        </div>
                        <!-- 성수기 추가 설정 버튼 비활성화 -->
<!--                         <div class="form-layer-text"> -->
<!--                             <button type="button" class="btn btn-default" data-role="add-peak">+ 추가</button> -->
<!--                         </div> -->
                    </td>
                    <td class="help-tooltip popover-container">
                        <a href="javascript:void(0)" data-toggle="popover" data-original-title="" title=""><img src="/img/owner/asset/icn_tooltip_16x16.png"></a>
                        <div class="hide">
                            <span><img src="/img/tooltips/detail/img_tooltip06.png"></span>
                        </div>
                    </td>
                </tr>
                    
                    
                    
    </tbody>
</table>

            <div class="submit-layer">
                                    <button class="btn btn-yeogi btn-submit" type="submit" id="">저장 후 다음 단계</button>
                            </div>
        </form>
    
		</div>
</section>

<script>
    $(function () {
    	$( "#room-images" ).sortable();
        $( "#room-images" ).disableSelection();
    
        $('div.exam-layer-guide1').addClass('hide');
        $('div.exam-layer-guide8').addClass('hide');
        $('span.exam-button i').attr('class', 'fa fa-angle-down');
        $('div.exam-layer-guide1').removeClass('hide');
        $('div.exam-layer-guide8').removeClass('hide');
        $('span.exam-button i').attr('class', 'fa fa-angle-up');
        $('.guest-title-layer').css('margin-top', '0');
        $('.guest-title-layer').css('border-radius', '5px');
        
        
//         $('div.exam-layer').addClass('hide');
        $('span.exam-button i').attr('class', 'fa fa-angle-down');
        $('.guest-title-layer').css('margin-top', '0');
        $('.guest-title-layer').css('border-radius', '5px');

    
    // 주인장 소개글 글자 수 체크
    $('#remain-r_comment').each(function() {
        var count = $("#count", this);
        var max = $("#max", this);

        var maximumCount = count.text() * 1;
        var maximumNumber = max.text() * 1;

        var input = $(this).prev();

        var update = function() {

            var before = count.text() * 1;
            var now = maximumCount + input.val().length;

            if (now > maximumNumber) {

                var str = input.val();
                alert('글자 입력수가 초과하였습니다.');
                input.val(str.substring(maximumNumber, 0));
            }

            if (before !== now) {

                count.text(now);
            }
        };

        input.bind('input keyup paste', function() {

            setTimeout(update, 0)
        });
        update();
		// db 값 체크 설정
        var list = $('#chkList').val();
        var res = list.split(",");
        
        var text = document.getElementsByName("penOpt");
       
        for (var i=0; i< res.length; i++){
        	for (var j=0 ; j<text.length;j++){
        		if(res[i] == text[j].value){
        			text[j].checked = true;
        		}
			}
        }
        
                
    });
    
});
    
    
</script>
	<script src="/js/owner/bootstrap.min.js"></script>
	<script src="/js/owner/moment.min.js"></script>
	<script src="/js/owner/daterangepicker.js"></script>
	<script src="/js/owner/bootstrap-timepicker.js"></script>       
	<script src="/js/owner/common.host.js"></script>
  	<script src="/js/owner/guest.host.js"></script>
  	<script src="/js/owner/pension.js"></script>  
</body>
</html>