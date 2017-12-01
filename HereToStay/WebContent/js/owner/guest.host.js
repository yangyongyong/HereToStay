$(function () {

	$(document).on('mouseenter','.popover-container',function() {
		$this = $(this);
		if ($this.find('div.popover:visible').length == 0) {
			$this.find('[data-toggle=popover]').popover({
				'placement' : 'left',
				'html' : true,
				'trigger' : 'hover',
				'content' : $this.find('div.hide').html(),
                'viewport' : {selector: $this, padding: 40}
			}).popover('show');
        // $('.popover').css({'top': ($('.popover').offset().top + 165.5)});
        // $('.popover').css({'top': ($('.popover').offset().top - 15)});
        // $('.popover').css({'left': ($('.popover').offset().left - 420.5)});
		}
	}).on('mouseleave','.popover-container',function() {
		$(this).find('[data-toggle=popover]').popover('hide');
	});

	// $('[data-role=add-line]').on('click', function(){
	// 	var prev_rows = $('#event').attr('rows');
	// 	var new_rows = parseInt(prev_rows) + parseInt('5');
	// 	$('#event').attr('rows', new_rows);
	// });

	$('.exam-button').on('click', function(){
		if ($(this).next().hasClass('hide')) {
			$(this).next().removeClass('hide');
			$(this).find('i').attr('class', 'fa fa-angle-up');
		} else {
			$(this).next().addClass('hide');
			$(this).find('i').attr('class', 'fa fa-angle-down');
		}
	});

    //datepicker

    var locale = {
    	applyLabel: '적용',
    	cancelLabel: '취소',
    	fromLabel: '시작',
    	toLabel: '종료',
    	customRangeLabel: '사용자 지정',
    	daysOfWeek: ['일', '월', '화', '수', '목', '금','토'],
    	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    	firstDay: 1
    };

    $('[data-role=datepicker]').each(function(){
    	$(this).daterangepicker({
    		format: 'YYYY-MM-DD',
    		singleDatePicker: true,
    		timePicker24Hour: true,
    		timePicker:false,
    		showDropdowns: true,
    		opens: 'right',
    		drops: 'down',
    		applyClass: 'btn-primary',
    		cancelClass: 'btn-default',
    		separator: ' to ',
    		locale: locale
    	});
    });


	 // 준성수기 아이템 제거
	 $('.subpeak-item').on('click','[data-role=remove-subpeak]',function() {
	 	var id = $(this).prev().prev().prev().prev().val();
	 	$.post('/guest/removeSpecial/'+ id);
	 	$(this).closest('.subpeak-item').remove();
	 });

     // 준성수기 아이템 제거
     $('.form-subpeak').on('click','[data-role=remove-subpeak]',function() {
     	$(this).closest('.subpeak-item').remove();
     });

    // 준성수기 아이템 추가
    $('[data-role=add-subpeak]').on('click',function() {
    	$('.form-subpeak').append($('.subpeak-item.hide').clone().removeClass('hide'));
    	$('[data-role=datepicker]').each(function(){
    		$(this).daterangepicker({
    			format: 'YYYY-MM-DD',
    			singleDatePicker: true,
    			timePicker24Hour: true,
    			timePicker:false,
    			showDropdowns: true,
    			opens: 'right',
    			drops: 'down',
    			applyClass: 'btn-primary',
    			cancelClass: 'btn-default',
    			separator: ' to ',
    			locale: locale
    		});
    	});
    });

    // 성수기 아이템 제거
    $('.peak-item').on('click','[data-role=remove-peak]',function() {
    	var id = $(this).prev().prev().prev().prev().val();
	 	$.post('/guest/removeSpecial/'+ id);
    	$(this).closest('.peak-item').remove();
    });

     // 준성수기 아이템 제거
     $('.form-peak').on('click','[data-role=remove-peak]',function() {
     	$(this).closest('.peak-item').remove();
     });

    // 성수기 아이템 추가
    $('[data-role=add-peak]').on('click',function() {
    	$('.form-peak').append($('.peak-item.hide').clone().removeClass('hide'));
    	$('[data-role=datepicker]').each(function(){
    		$(this).daterangepicker({
    			format: 'YYYY-MM-DD',
    			singleDatePicker: true,
    			timePicker24Hour: true,
    			timePicker:false,
    			showDropdowns: true,
    			opens: 'right',
    			drops: 'down',
    			applyClass: 'btn-primary',
    			cancelClass: 'btn-default',
    			separator: ' to ',
    			locale: locale
    		});
    	});
        alert('성수기 날짜를 추가하신 경우\n[객실 관리 > 요금 설정] 에서 저장하기를 한번 더 눌러주셔야 날짜가 반영됩니다.자세한 사항은 고객센터 (1670-6258)로 문의해주시기 바랍니다.');
    });


    // 요금설정 삭제


    // 기본
    $('.form-body').on('click','[data-role=remove-new-NORMAL]',function() {
        $(this).closest('.room-price').remove();
    });
    $('.form-body').on('click','[data-role=remove-NORMAL]',function() {
        id = $(this).closest('.room-price').find('[data-role=adpno]').val();
        $.post('/guest/removeNormalPrice/'+ id);
        $(this).closest('.room-price').remove();
    });

    // 준성수기
    $('.form-body').on('click','[data-role=remove-new-SUBPEAK]',function() {
        $(this).closest('.room-price').remove();
    });
    $('.form-body').on('click','[data-role=remove-SUBPEAK]',function() {
        id = $(this).closest('.room-price').find('[data-role=adpsino]').val();
        $.post('/guest/removeSpecialPrice/'+ id);
        $(this).closest('.room-price').remove();
    });
    // 준성수기
    $('.form-body').on('click','[data-role=remove-new-PEAK]',function() {
        $(this).closest('.room-price').remove();
    });
    $('.form-body').on('click','[data-role=remove-PEAK]',function() {
        id = $(this).closest('.room-price').find('[data-role=adpsino]').val();
        $.post('/guest/removeSpecialPrice/'+ id);
        $(this).closest('.room-price').remove();
    });

});

function deleteRoomInfo(armgno) {
    if (confirm('정말 삭제하시겠습니까?\n삭제된 데이터는 복구가 불가능 합니다.')) {
        $('button').prop('disabled', true);
        $.post('/guest/removeRoom/'+ armgno);
        alert('삭제되었습니다.\n! [예약관리] > [실시간 예약 관리]에서 10분 안에 자동으로 삭제가 반영됩니다.'); window.location.href='/guest/room'
    }
}



// daum api 주소
function daumPostCode() {
	new daum.Postcode(
	{
		oncomplete: function (data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
            	extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if (data.buildingName !== '' && data.apartment === 'Y') {
            	extraRoadAddr += (extraRoadAddr !== '' ? ', '
            		+ data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if (extraRoadAddr !== '') {
            	extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if (fullRoadAddr !== '') {
            	fullRoadAddr += extraRoadAddr;
            }

            // 지번 주소 누락 이슈로 인하여 수정
            var jibun = data.jibunAddress == '' ? data.autoJibunAddress : data.jibunAddress;

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('input_roadAddress').value = fullRoadAddr;
            document.getElementById('input_jibunAddress').value = jibun;

            // daumGeo();
        }
    }).open();
}

$('#intro-form').submit(function (event) {
    var aname = $('input[name=penName]');
    var address1 = $('input[name=penA1]');
    var address2 = $('input[name=penA2]');
    var ad_theme = $('input[name=penOpt]:checked').length;
    var r_comment = $('textarea[name=penIntro]');

    if (aname.val().length === 0) {
        alert('업체명을 입력해주세요.');
        aname.focus();
        return false;
    }
    if (address1.val().length === 0) {
        alert('업체 주소를 입력해주세요.');
        address1.focus();
        return false;
    }
    if (address2.val().length === 0) {
        alert('업체 주소를 입력해주세요.');
        address2.focus();
        return false;
    }
    if(ad_theme === 0) {
        alert('편의 시설을 최소 1개 이상 선택 해주세요.');
        $('input[name="ad_theme[]"]').focus();
        return false;
    }
    if (r_comment.val().length === 0) {
        alert('주인장 소개글을 입력해주세요.');
        r_comment.focus();
        return false;
    }


	return true;
	event.preventDefault();
});

function aTagSubmit(){
	$('#intro-form').submit();
}

$('#detail-form').submit(function (event) {

	// 준성수기 체크
	var subpeak = $('input[name=subpeak]');
	var subpeaks = [];
    var subpeaks_validation = true;
    var peaks_validation = true;
	$('.subpeak-item').not('.hide').each(
		function() {
            // subpeak_id, subpeak_start,subpeak_end
            if ($(this).find('[data-name=subpeak_end]').val() < $(this).find('[data-name=subpeak_start]').val()) {
                subpeaks_validation = false;
            }


            var subpeaker = '';

            subpeaker += $(this).find('[data-name=subpeak_id]').val();
            subpeaker += '|' + $(this).find('[data-name=subpeak_start]').val();
            subpeaker += '|' + $(this).find('[data-name=subpeak_end]').val();
            subpeaks.push(subpeaker);
        }
    );
    if (!subpeaks_validation) {
        alert('준 성수기 종료일자가 시작일자보다 작을 수 없습니다.');
        return false;
    }

	subpeak.val(subpeaks);

	// 성수기 체크
	var peak = $('input[name=peak]');
	var peaks = [];
	$('.peak-item').not('.hide').each(
		function() {
            // peak_id, peak_start,peak_end
            if ($(this).find('[data-name=peak_end]').val() < $(this).find('[data-name=peak_start]').val()) {
                peaks_validation = false;
            }
            var peaker = '';

            peaker += $(this).find('[data-name=peak_id]').val();
            peaker += '|' + $(this).find('[data-name=peak_start]').val();
            peaker += '|' + $(this).find('[data-name=peak_end]').val();

            peaks.push(peaker);
        }
    );
    if (!peaks_validation) {
        alert('성수기 종료일자가 시작일자보다 작을 수 없습니다.');
        return false;
    }

	peak.val(peaks);



	return true;
	event.preventDefault();
});