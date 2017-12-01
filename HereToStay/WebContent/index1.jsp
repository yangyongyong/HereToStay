<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Sparrow | Travel Agency</title>
  <meta name="description" content="" />
  <meta name="keywords" content="" />
  <meta charset="utf-8" /><link rel="icon" href="favicon.png" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> 
  <link rel="stylesheet" href="source/jquery.fancybox.css">
  <link rel="stylesheet" href="css/jquery.formstyler.css">  
  <link rel="stylesheet" href="css/style.css" />
  <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Lora:400,400italic' rel='stylesheet' type='text/css'>    
  <link href='http://fonts.googleapis.com/css?family=Raleway:300,400,500,700' rel='stylesheet' type='text/css'>  
  <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css'>
   <link rel="stylesheet" href="/css/jquery-ui.css"> 
  <link rel="stylesheet" href="/css/owl.carousel.css">
  <link rel="stylesheet" href="/css/idangerous.swiper.css">
  <link rel="stylesheet" href="/css/style.css" />
  <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Lora:400,400italic' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Raleway:300,400,500,700' rel='stylesheet' type='text/css'>  
  <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css'>   
  <link href='http://fonts.googleapis.com/css?family=Lato:400,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css'>   
  <style>
   .portfolio-i-text b{
      font-size:16px;
   }
   .portfolio-i-text span{
      font-size:14px;
      color:#ff6638;
   }
   
   .bg_event{
      position: fixed;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background: url(img/bg_event1.jpg) no-repeat center;
      background-size: cover;
   }

   .portfolio-three-colls .portfolio-i {
      position:absolute;
      left:175px;
   }

   .portfolio-three-colls .portfolio-i:last-child {
      position:absolute;
      left:575px;
   }
   
   .autorize-tab-content input[type='password']{
   border: 1px solid #ebebeb;
    background: #fff;
    width: 381px;
    border-radius: 3px;
    font-size: 11px;
    padding: 10px 8px 10px 8px;
    font-family: 'Raleway';
    font-weight: 600;
    color: #8a8a8a;
    margin-bottom: 15px;
   }
  </style>
</head>  
<body>  

<!------------------------------ START OF 관리자 로그인 모달 ------------------------------ -->
   <div class="overlay"></div>
   <form id="form" action="/manager/loginCheck.do" method="post">
   <div class="autorize-popup">
      <div class="autorize-tabs">
         <a href="#" class="autorize-tab-a current">Sign in</a>

         <a href="#" class="autorize-close"></a>
         <div class="clear"></div>
      </div>
      

      <section class="autorize-tab-content">
         <div class="autorize-padding">
            <h6 class="autorize-lbl">Welocome! Login in to Your Accont</h6>
            <input type="text" value="" placeholder="Insert Id" name="mgrId" style="text-transform: none;" >
            <input type="password" value="" placeholder="Insert Pwd" name="mgrPwd" style="text-transform: none;" >
            <footer class="autorize-bottom">
               <button type="submit" name="Submit" class="authorize-btn">Login</button>

               <div class="clear"></div>
            </footer>
         </div>
      </section>
   
      

   </div>
      </form>
<!------------------------------ END OF 관리자 로그인 모달 ------------------------------ -->
      <div class="bg_event"></div>
      <div class="portfolio-holder portfolio-holder-three">
      <div class="portfolio-three-colls">
         <!-- // -->
         
         <!--  사용자 누르면 사용자가 시작하는 붑 -->
         <div class="header-account1">
         <div class="portfolio-i photography">
            <div class="portfolio-i-img">   
               <div class="portfolio-i-over">
                  <div class="portfolio-i-over-a">
                     <div class="portfolio-i-over-b">
                        <!--<a href="img/portfolio-b-01.jpg" data-fancybox-group="gallery" class="fancybox portfolio-zoom"></a>-->
<!--                         <a href="#" class="portfolio-more"></a>                      -->
                              <a href="#"  >Click Here</a>
                     </div>
                  </div>
               </div>
               <img alt="" src="img/travel.jpg">
            </div>
            <div class="portfolio-i-text">
               <b>사용자  </b>
               <span>Join</span>
            </div>
         </div>
         </div>
         <!-- \\ -->
         <!-- // -->
         
         <div class="header-account2">
         <div class="portfolio-i countries">
            <div class="portfolio-i-img">   
               <div class="portfolio-i-over">
                  <div class="portfolio-i-over-a">
                     <div class="portfolio-i-over-b">
                        <!--<a href="img/portfolio-b-02.jpg" data-fancybox-group="gallery" class="fancybox portfolio-zoom"></a>-->
<!--                         <a href="#" class="portfolio-more"></a>    -->
                                 <a href="#">Click Here</a>
                     </div>
                  </div>
               </div>
               <img alt="" src="img/owner.jpg">
            </div>
            <div class="portfolio-i-text">
               <b>사장님  </b>
               <span>Join</span>
            </div>
         </div>
         </div>         
         <!-- \\ -->
         
         
         <!-- // -->
         <div class="header-account3">
         <div class="portfolio-i countries">
            <div class="portfolio-i-img">   
               <div class="portfolio-i-over">
                  <div class="portfolio-i-over-a">
                     <div class="portfolio-i-over-b">
                        <!--<a href="img/portfolio-b-02.jpg" data-fancybox-group="gallery" class="fancybox portfolio-zoom"></a>-->
<!--                         <a href="#" class="portfolio-more"></a> -->
<!------------------------------------------------------------ START OF 로그인 창 띄어주기 (관리자)------------------------------------------------------------>
<!--                         <div class="header-a"> -->
<!--                            <div class="wrapper-padding"> -->
<!--                               <div class="header-account"> -->
<!--                               <a href="#" class="portfolio-more"></a> -->
                              <a href="#"  >Click Here</a>
<!--                                  <a href="#"></a> -->
<!--                               </div> -->
<!--                            </div>  -->
<!--                         </div> -->
<!------------------------------------------------------------- END OF 로그인 창 띄어주기 (관리자)---------------------------------------------------------- -->
                     </div>
                  </div>
               </div>
            <div class="header-account">
            <img alt="" src="img/paris.jpg" >
            </div>
            </div>
            <div class="portfolio-i-text">
               <b>관리자 </b>
               <span>Join</span>
            </div>
         </div>

         </div>
         <!-- \\ -->
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
  <script src="/js/isotope.js"></script>
  <script src="/source/jquery.fancybox.js"></script>  
  <script type="text/javascript" src="/js/twitterfeed.js"></script>
  <script src="/js/script.js"></script>
  <script>
      $(document).ready(function(){
          'use strict';
            var $container = $('.portfolio-three-colls'); 
            $container.isotope({
                itemSelector: '.portfolio-i',
                columnWidth: 520,
                rowHeight: 220
            });  
            $(".fancybox").fancybox({
              helpers:  {
                overlay : {
                locked : false
              },
              title : { type : 'over' }
              },
              beforeShow : function() {
                this.title = (this.title ? '' + this.title + '' : '')  + (this.index + 1) + ' of ' + this.group.length;
              }
            });   
          
          $('.portfolio-filters li a').on('click', function(){
            var $sort = $(this).data('sort');
            if ($sort=='all') {
              var $sort = '*';
              $container.isotope({ filter: $sort }); 
            } else {
              $container.isotope({ filter: '.'+$sort });      
            }   
            $('.portfolio-filters li').removeClass('active');    
            $(this).closest('li').addClass('active');
            return false;
          });      
      });

  </script>
<!-- \\ scripts \\ --> 
 
</body>  
</html> 