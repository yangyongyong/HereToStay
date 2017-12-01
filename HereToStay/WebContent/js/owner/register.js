
//회원가입 유효성검사
   $(function(){
  	 var re_id = /^[a-z0-9_-]{3,16}$/;
  	 var re_pw = /^[a-z0-9_-]{6,18}$/; 
  	 var re_mail = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; 
  	 var re_tel = /^[0-9]{8,11}$/; 
  	 
  	 var
     form = $('.form'),
     uid = $('#ownId'),
     upw = $('#ownPwd'),
     upw2=$('#ownPwd2'),
     mail = $('#ownMail'),
     tel = $('#ownTel');
  	 acc = $('#ownAcc');
  	 
  	 
  	 form.submit( function() {
  			if (re_id.test(uid.val()) != true) { // 아이디 검사
  				alert('유효한 ID를 입력해 주세요.');
  				uid.focus();
  				return false;
  			} else if(re_pw.test(upw.val()) != true) { // 비밀번호 검사
  				alert('유효한 PW를 입력해 주세요.');
  				upw.focus();
  				return false;
  			} else if(re_mail.test(mail.val()) != true) { // 이메일 검사
  				alert('유효한 이메일 주소를 입력해 주세요.');
  				mail.focus();
  				return false;
  			} else if(re_tel.test(tel.val()) != true) { // 전화번호 검사
  				alert('유효한 전화번호를 입력해 주세요.');
  				tel.focus();
  				return false;
  			}
  		});
  	 
  	  $('#ownId, #ownPwd,#ownPwd2,#ownTel').after('<strong class="register_check"></strong>');
  	  //인풋 onkeyup 이벤트
  	  uid.keyup( function() {
  	        var s = $(this).next('strong');
  	        if (uid.val().length == 0) {
  	            s.text('');
  	        } else if (uid.val().length < 4) {
  	            s.text('4자이상 10자리 이하로 입력해주세요.');
  	        } else if (uid.val().length > 10) {
  	            s.text('4자이상 10자리 이하로 입력해주세요..');
  	        } else {
  	            s.text('');
  	        }
  	    });
  	  
  	    upw.keyup( function() {
  	        var s = $(this).next('strong');
  	        if (upw.val().length == 0) {
  	            s.text('');
  	        } else if (upw.val().length < 6) {
  	            s.text('6자이상 12자리 이하로 입력해주세요.');
  	        } else if (upw.val().length > 12) {
  	            s.text('6자이상 12자리 이하로 입력해주세요.');
  	        } else {
  	            s.text('');
  	            return false;
  	        }
  	    });
  	    
  	  upw2.keyup( function() {
	        var s = $(this).next('strong');
	        if (upw2.val().length == 0) {
	            s.text('');
	        } else if (upw2.val().length < 6) { 
	            s.text('6자이상 12자리 이하로 입력해주세요.');
	        } else if (upw2.val().length > 12) { 
	            s.text('6자이상 12자리 이하로 입력해주세요.'); 
	        } else if (upw2.val()!=upw.val()){
	        	s.text('입력한 비밀번호 와 일치하지 않네요.')
	        } else { 
	            s.text(''); 
	            return false;
	        }
	    });

  	    tel.keyup( function() {
  	        var s = $(this).next('strong'); 
  	        if (tel.val().length == 0) {
  	            s.text(''); 
  	        } else if (tel.val().length < 11) {
  	            s.text('휴대폰 번호 11자리를 입력해주세요.');
  	        } else if (tel.val().length > 12) {
  	            s.text('휴대폰 번호 11자리를 입력해주세요');
  	        } else {
  	            s.text('');
  	        }
  	    });
  	     
   }); 


 
 

