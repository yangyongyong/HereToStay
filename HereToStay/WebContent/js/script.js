$(document).ready(function(){
    "use strict";
    init_validation();
    var $slideHover = function() {
		$('.offer-slider-i').on({
			mouseenter: function(){
				$(this).find('.offer-slider-overlay').fadeIn(170);
				$(this).find('.offer-slider-btn').animate({top: "50%"}, 170);
			},
			mouseleave: function(){
				$(this).find('.offer-slider-overlay').fadeOut(170);
				$(this).find('.offer-slider-btn').css('top','-200px');
			}
		}, $(this));
	}
	
	
	var header_a = $('.header-a');
	var header_b = $('.header-b');
	var header_logo = $('.header-logo');
	var header_right = $('.header-right');
		
		
	var $headerDown = function() {
		header_a.slideUp(120);
		header_b.css('height','59px');
		header_b.addClass('fixed');
		header_logo.css('margin-top','10px')
		header_right.css('margin-top','21px');
		header_logo.find('img').attr('src','/img/logo-a.png');

	}
	var $headerUp = function() {
		header_a.slideDown(150);
		header_b.removeClass('fixed');
		header_b.css('height','89px');
		header_logo.css('margin-top','26px');
		header_right.css('margin-top','37px');
		header_logo.find('img').attr('src','/img/logo.png');
	}

	$(window).scroll(function(){
		var $scrollTop = $(window).scrollTop();
		if ( $scrollTop>140 ) {
			$headerDown();
		} else {
			$headerUp();
		}
	});

	$('.mobile-menu a.has-child').on('click',function(){
	 if ( $(this).is('.open') ) {
		$(this).removeClass('open');
		$(this).closest('li').find('ul').slideUp(); 
	 } else {
		$('.mobile-menu li ul').slideUp();
		$('.mobile-menu li a').removeClass('open');
		$(this).addClass('open');
		$(this).closest('li').find('ul').slideDown(); 
	 }

	 
	 return false;
	});

	$('.menu-btn').on('click',function(){
	 var mobile_menu = $('.mobile-menu');
	 if ( $(this).is('.open') ) {
		$(this).removeClass('open') 
		mobile_menu.slideUp(); 
	 } else {
		$(this).addClass('open') 
		mobile_menu.slideDown();
	 }
	 return false;
	 
	});


	$('.header-nav ul li').on({
		mouseenter: function() {
			$(this).find('ul').show();
		}, 
		mouseleave: function() {
			$(this).find('ul').hide();
		}
	});
	
	$('.header-lang').on({
		mouseenter: function() {
			$('.langs-drop').fadeIn();
		}, 
		mouseleave: function() {
			$('.langs-drop').hide();
		}
	});	
	
	$('.header-viewed').on({
		mouseenter: function() {
			$('.viewed-drop').fadeIn();
		},
		mouseleave: function() {
			$('.viewed-drop').hide();
		}
	});
	
	$('.header-curency').on({
		mouseenter: function() {
			$('.curency-drop').fadeIn();
		},
		mouseleave: function() {
			$('.curency-drop').hide();
		}
	});
	
	$('.flight-line .flight-line-b b').on('click',function(){
	  if ( $(this).is('.open') ) {
		$(this).removeClass('open');
		$(this).closest('.flight-line').find('.flight-details').slideUp();  
	  } else {
		$(this).addClass('open');
		$(this).closest('.flight-line').find('.flight-details').slideDown();  
	  }
	});
	$('.alt-flight .flight-line-b b').on('click',function(){
	  if ( $(this).is('.open') ) {
		$(this).removeClass('open');
		$(this).closest('.alt-flight').find('.alt-details').slideUp();  
	  } else {
		$(this).addClass('open');
		$(this).closest('.alt-flight').find('.alt-details').slideDown();  
	  }
	});
	$('.hdr-srch-btn').on('click',function(){
		$('.hdr-srch-overlay').fadeIn().find('input:text').focus();
		return false;
	});
	$('.srch-close').on('click',function(){
		$('.hdr-srch-overlay').fadeOut();
		return false;
	});

	$('.srch-lbl').on('click',function(){
		if ( $(this).is('.open') ) {
			$(this).closest('.search-tab-content').find('.search-asvanced').hide();
			$(this).text('Advanced Search options').removeClass('open');
		} else {
			
			$(this).closest('.search-tab-content').find('.search-asvanced').fadeIn();
			$(this).text('close search options').addClass('open');	
			
		}
	});

	$('.search-tab').on('click',function(){
		var $index = $(this).index();
		$('.search-tab-content').hide().eq($index).fadeIn();
		$('.search-tab').removeClass('active').eq($index).addClass('active');
		return false;
	});

	$('.header-account a').on('click',function(){
		$('.overlay').fadeIn(function(){
			$('.autorize-popup').animate({top: '50%'}, 300).find('input:text').eq('0').focus();
		});
		return false;
	});
	$('.header-account2 a').on('click',function(){
		$('.overlay').fadeIn(function(){
			$('.autorize-popup2').animate({top: '50%'}, 300).find('input:text').eq('0').focus();
		});
		return false;
	});

	$('.overlay').on('click',function(){
		$('.autorize-popup').animate({top: '-300px'}, 300, function(){
			$('.overlay').fadeOut();	
		});
		$('.autorize-popup2').animate({top: '-300px'}, 300, function(){
			$('.overlay').fadeOut();	
		});
	});

	$('.autorize-tab-content').css('display','block');
	$('.autorize-tab-content2').css('display','block');
	
	$('.autorize-tabs a').on('click',function(){
		if ( $(this).is('.autorize-close') ) {
			$('.autorize-popup').animate({top: '-300px'}, 300, function(){
				$('.overlay').fadeOut();	
			});
		}
		return false;
	});
	$('.autorize-tabs2 a').on('click',function(){
		if ( $(this).is('.autorize-close') ) {
			$('.autorize-popup2').animate({top: '-300px'}, 300, function(){
				$('.overlay').fadeOut();	
			});
		}
		return false;
	});

	// 회원가입 유효성 검사
	$('#memJoin').click(function() {
		var fail = 0;
		
		if($('#memId').parent().find('b').eq(0).html() != '사용 가능한 아이디 입니다.') { alert('아이디를 다시 입력해주세요'); fail++; }
		else if ($('#memPwd').val().length < 8) { alert('비밀번호는 8자리 이상이여야 합니다'); fail++; }
		else if ($('#memPwd').val() == "") { alert('비밀번호를 반드시 입력해주세요'); fail++; }
		else if ($('#memPwd').val() != $('#memPwdCk').val()) { alert('비밀번호를 다시 확인해주세요'); fail++; }
		else if ($('#memName').val() == "") { alert('이름을 반드시 입력해주세요'); fail++; }
		else if ($('#memTel').val() == "") { alert('전화번호를 반드시 입력해주세요'); fail++; }
		else if ($('#memMail').val() == "") { alert('이메일을 반드시 입력해주세요'); fail++; }
		else if ($('#memBirth').val() == "") { alert('주민등록번호 7자리를 입력해주세요'); fail++; }
		
		if(fail != 0) { return false;}
		else { $('#joinInsert').submit(); alert('회원가입 완료');}
	});
	
	// member 로그인 유효성 검사
	$('#memLogin').click(function() {
		$.ajax({
	        type: 'post',
	        dataType:'text',
	        url:'/member/memCheck.do',
	        contentType:'application/x-www-form-urlencoded;charset=UTF-8',
	        data: {"memId" : $("#logId").val(),
	        	   "memPwd" : $('#logPwd').val() },
	        success:function(resultData){
	        	if(resultData == '0') {
	        		alert('아이디와 비밀번호를 다시 확인해주세요.');
	        		$('#logId').val("");
	        		$('#logPwd').val("");
	        		return false;
	        	} else {
	        		$('#loginOk').attr('action',"/member/index.do?session=" + $('#logId').val());
					$('#loginOk').submit();
	        	}
			}
	    });
	});
	
	$('map area').on({
		mouseenter: function(){
			var $id = $(this).attr('id');
			$('.regions-holder .'+$id).css('background-position','left -177px');
			$('.regions-nav a.'+$id).addClass('chosen');
		},
		mouseleave: function(){
			var $id = $(this).attr('id');
			$('.regions-holder .'+$id).css('background-position','left 0px');
			$('.regions-nav a.'+$id).removeClass('chosen');
		}
	}, $(this));
	
	
	$('map1 area').on({
		mouseenter: function(){
			var $id = $(this).attr('id');
			$('.regions-holder .'+$id).css('background-position','left -177px');
			$('.regions-nav a.'+$id).addClass('chosen');
		},
		mouseleave: function(){
			var $id = $(this).attr('id');
			$('.regions-holder .'+$id).css('background-position','left 0px');
			$('.regions-nav a.'+$id).removeClass('chosen');
		}
	}, $(this));
	
	
	$('.regions-nav a').on({
		mouseenter: function(){
			var $id = $(this).attr('class');
			$('.regions-holder .'+$id).css('background-position','left -177px');
		},
		mouseleave: function(){
			var $id = $(this).attr('class');
			$('.regions-holder .'+$id).css('background-position','left 0px');
		}
	}, $(this));

	$('.gallery-i a').on('click',function(){
		var $href = $(this).attr('href');
		$('.gallery-i').removeClass('active');
		$(this).closest('.gallery-i').addClass('active');
		$('.tab-gallery-big img').attr('src',$href);
		return false;
	});
	$('.content-tabs-head a').on('click',function(){
		var $index = $(this).closest('li').index();
		$('.content-tabs-head a').removeClass('active');
		$('.content-tabs-head li').eq($index).find('a').addClass('active');
		$('.content-tabs-i').hide().eq($index).fadeIn();
		return false;
	});
	$('.faq-item-a').on('click',function(){
	  var $parent = $(this).closest('.faq-item');
	  if ($parent.is('.open')) {
		$parent.find('.faq-item-p').hide(); 
		$('.faq-item').removeClass('open');
	  } else {
		$('.faq-item').removeClass('open');
		$('.faq-item-p').hide();
		$parent.addClass('open').find('.faq-item-p').fadeIn();  
	  }
	});
	
	
	$('.h-tab-i a').on('click',function(){
	 var $index = $(this).closest('.h-tab-i').index();
	 $('.h-tab-i').removeClass('active');
	 $('.h-tab-i').eq($index).addClass('active');
	 
	 if ( $(this).is('.initMap') ) {
	 $('.tab-map').css('opacity','0');
	 $('#preloader').show();
	 


	 function kakaoMap()
	 {
			// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
		 var placeOverlay = new daum.maps.CustomOverlay({zIndex:1}), 
		     contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
		     markers = [], // 마커를 담을 배열입니다
		     currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
//		  
		 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		     mapOption = {
		         center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		         level: 5 // 지도의 확대 레벨
		     };  

		
		 // 지도를 생성합니다    
		 var map = new daum.maps.Map(mapContainer, mapOption); 
		 
		// 주소-좌표 변환 객체를 생성합니다
		 var geocoder = new daum.maps.services.Geocoder();

		 // 주소로 좌표를 검색합니다
		 geocoder.addressSearch($("#ad").val(), function(result, status) {

		     // 정상적으로 검색이 완료됐으면 
		      if (status === daum.maps.services.Status.OK) {

		         var coords = new daum.maps.LatLng(result[0].y, result[0].x);

		         // 결과값으로 받은 위치를 마커로 표시합니다
		         var marker = new daum.maps.Marker({
		             map: map,
		             position: coords
		         });

		         // 인포윈도우로 장소에 대한 설명을 표시합니다
		         var infowindow = new daum.maps.InfoWindow({
		             content: '<div style="width:150px;text-align:center;padding:6px 0;">'+$("#na").val()+'</div>'
		         });
		         infowindow.open(map, marker);

		         // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		         map.setCenter(coords);
		     } 
		 });    

		 // 장소 검색 객체를 생성합니다
		 var ps = new daum.maps.services.Places(map); 

		 
		 
		 
		 // 지도에 idle 이벤트를 등록합니다
		 daum.maps.event.addListener(map, 'idle', searchPlaces);

		 // 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
		 contentNode.className = 'placeinfo_wrap';

		 // 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
		 // 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 daum.maps.event.preventMap 메소드를 등록합니다 
		 addEventHandle(contentNode, 'mousedown', daum.maps.event.preventMap);
		 addEventHandle(contentNode, 'touchstart', daum.maps.event.preventMap);

		 // 커스텀 오버레이 컨텐츠를 설정합니다
		 placeOverlay.setContent(contentNode);  

		 // 각 카테고리에 클릭 이벤트를 등록합니다
		 addCategoryClickEvent();
		

			// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
			 function addEventHandle(target, type, callback) {
			     if (target.addEventListener) {
			         target.addEventListener(type, callback);
			     } else {
			         target.attachEvent('on' + type, callback);
			     }
			 }

			 // 카테고리 검색을 요청하는 함수입니다
			 function searchPlaces() {
			     if (!currCategory) {
			         return;
			     }
			     
			     // 커스텀 오버레이를 숨깁니다 
			     placeOverlay.setMap(null);

			     // 지도에 표시되고 있는 마커를 제거합니다
			     removeMarker();
			     
			     ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
			 }

			 // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
			 function placesSearchCB(data, status, pagination) {
			     if (status === daum.maps.services.Status.OK) {

			         // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
			         displayPlaces(data);
			     } else if (status === daum.maps.services.Status.ZERO_RESULT) {
			         // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

			     } else if (status === daum.maps.services.Status.ERROR) {
			         // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
			         
			     }
			 }

			 // 지도에 마커를 표출하는 함수입니다
			 function displayPlaces(places) {

			     // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
			     // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
			     var order = document.getElementById(currCategory).getAttribute('data-order');

			     

			     for ( var i=0; i<places.length; i++ ) {

			             // 마커를 생성하고 지도에 표시합니다
			             var marker = addMarker(new daum.maps.LatLng(places[i].y, places[i].x), order);

			             // 마커와 검색결과 항목을 클릭 했을 때
			             // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
			             (function(marker, place) {
			                 daum.maps.event.addListener(marker, 'click', function() {
			                     displayPlaceInfo(place);
			                 });
			             })(marker, places[i]);
			     }
			 }

			 // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
			 function addMarker(position, order) {
			     var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			         imageSize = new daum.maps.Size(27, 28),  // 마커 이미지의 크기
			         imgOptions =  {
			             spriteSize : new daum.maps.Size(72, 208), // 스프라이트 이미지의 크기
			             spriteOrigin : new daum.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
			             offset: new daum.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
			         },
			         markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
			             marker = new daum.maps.Marker({
			             position: position, // 마커의 위치
			             image: markerImage 
			         });

			     marker.setMap(map); // 지도 위에 마커를 표출합니다
			     markers.push(marker);  // 배열에 생성된 마커를 추가합니다

			     return marker;
			 }

			 // 지도 위에 표시되고 있는 마커를 모두 제거합니다
			 function removeMarker() {
			     for ( var i = 0; i < markers.length; i++ ) {
			         markers[i].setMap(null);
			     }   
			     markers = [];
			 }

			 // 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
			 function displayPlaceInfo (place) {
			     var content = '<div class="placeinfo">' +
			                     '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   

			     if (place.road_address_name) {
			         content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
			                     '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
			     }  else {
			         content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
			     }                
			    
			     content += '    <span class="tel">' + place.phone + '</span>' + 
			                 '</div>' + 
			                 '<div class="after"></div>';

			     contentNode.innerHTML = content;
			     placeOverlay.setPosition(new daum.maps.LatLng(place.y, place.x));
			     placeOverlay.setMap(map);  
			 }


			 // 각 카테고리에 클릭 이벤트를 등록합니다
			 function addCategoryClickEvent() {
			     var category = document.getElementById('category'),
			         children = category.children;

			     for (var i=0; i<children.length; i++) {
			         children[i].onclick = onClickCategory;
			     }
			 }

			 // 카테고리를 클릭했을 때 호출되는 함수입니다
			 function onClickCategory() {
			     var id = this.id,
			         className = this.className;

			     placeOverlay.setMap(null);

			     if (className === 'on') {
			         currCategory = '';
			         changeCategoryClass();
			         removeMarker();
			     } else {
			         currCategory = id;
			         changeCategoryClass(this);
			         searchPlaces();
			     }
			 }

			 // 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
			 function changeCategoryClass(el) {
			     var category = document.getElementById('category'),
			         children = category.children,
			         i;

			     for ( i=0; i<children.length; i++ ) {
			         children[i].className = '';
			     }

			     if (el) {
			         el.className = 'on';
			     } 
			 } 	 
			 
	 }


	 $('.tab-item').hide().eq($index).fadeIn(function(){	
		 

	
		 if($index==2)
		 	findMap();
		 if($index==1)
		 	kakaoMap();
		 	
		 	
			$('.tab-map').css('opacity','1');
			$('#preloader').hide();
			$('#preloader1').hide();	
			
			$('.map-contacts').each(function(index){	
				$(this).delay(141*index).fadeIn();     
			}); 
		

	 }); 
	 } else {
		$('.tab-item').hide().eq($index).fadeIn();
	 } 
	 return false;
	 
	 
	});	
	
	$('.tabs-nav a').on('click',function(){
	 var $parent = $(this).closest('.tabs-block')
	 var $index = $(this).closest('li').index();
	 $parent.find('.tabs-nav li a').removeClass('active');
	 $parent.find('.tabs-nav li').eq($index).find('a').addClass('active');
	 $parent.find('.tabs-content-i').hide().eq($index).fadeIn();
	 return false;
	});

	$('.accordeon-a').on('click',function(){
		var $parent = $(this).closest('.accordeon-item');
		$('.accordeon-item').removeClass('open');
		$('.accordeon-b').hide();
		$parent.addClass('open').find('.accordeon-b').fadeIn();
	});

	$('.toggle-trigger').on('click',function(){
		var $parent = $(this).closest('.toggle-i');
		if ( $parent.is('.open') ) {
			$parent.removeClass('open').find('.toggle-txt').hide();	
		} else {
			$parent.addClass('open').find('.toggle-txt').fadeIn();
		}
		return false;
	});

	$('.shareholder span').on('click',function(){
		if ( $(this).is('.open') ) {
			$('.share-popup').hide();
			$(this).removeClass('open');
		} else {
			$('.share-popup').fadeIn();
			$(this).addClass('open');	
		}

		return false;
	});

	$('.payment-tabs a').on('click',function(){
		var $index = $(this).index();
		$('.payment-tab').hide().eq($index).fadeIn();
		$('.payment-tabs a').removeClass('active').eq($index).addClass('active');
		return false;
	});

	$('.solutions-i').on({
		mouseenter: function(){
			$(this).find('.solutions-over').css('background','rgba(0,0,0,0.7)');
			$(this).find('.solutions-over-c').hide();
			$(this).find('.solutions-over-d').fadeIn(500);
		},
		mouseleave: function(){
			$(this).find('.solutions-over').css('background','rgba(0,0,0,0.5)');
			$(this).find('.solutions-over-d').hide();
			$(this).find('.solutions-over-c').fadeIn(700);
		}
	}, $(this));
		
		
    
    $('.date-inpt').datepicker();
    $('.custom-select').customSelect(); 
    $(".owl-slider").owlCarousel({
        items:4, 
        autoPlay: 3000,
        itemsDesktop : [1120,4], //5 items between 1000px and 901px
        itemsDesktopSmall : [900,2], // betweem 900px and 601px
        itemsTablet: [620,2], //2 items between 600 and 479
        itemsMobile: [479,1], //1 item between 479 and 0
        stopOnHover: true
    });

    $('#testimonials-slider').bxSlider({
        infiniteLoop: true,
        speed: 600,
        minSlides: 1,
        maxSlides: 1,
        moveSlides: 1,
        auto: false,
        slideMargin: 0
    });

    $slideHover();
	
	$(window).on('resize',function(){
		var $width = $(document).width();
		if ($width > 900) {
			$('.mobile-menu').hide();
			$('.menu-btn').removeClass('open');
		}
	});

});

function init_validation(target) {
	"use strict";
	function validate(target) {
		var valid = true;
		$(target).find('.req').each(function() {
			if($(this).val() == '') {
				valid = false;
				$(this).parent().addClass('errored');
			}
			else {
				$(this).parent().removeClass('errored');
			}
		});
		return valid;
	}
	
	$('form.w_validation').on('submit', function(e) {
		var valid = validate(this);
		if(!valid) e.preventDefault();
	});
	
	if(target) {return validate(target);}
}