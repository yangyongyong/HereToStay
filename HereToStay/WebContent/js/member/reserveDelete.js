/**
 * reservationDetail.jsp 페이지 유효성 검사 JS
 */

$(document).ready(function(){
	// 예약취소 버튼 클릭 시 이벤트
	$('#reserveDel').click(function() {
		// 예약 취소 메소드 있는 Controller로 이동
		location.href="/member/delReserve.do?resId=" + $('#getResId').val();
	});
});