<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
================================================== -->
  <meta charset="utf-8">
  <title>Constra - Construction Html5 Template</title>

  <!-- Mobile Specific Metas
================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <!-- Favicon
================================================== -->
  <link rel="icon" type="resources/image/png" href="resources/images/favicon.png">

  <!-- CSS
================================================== -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="resources/plugins/bootstrap/bootstrap.min.css">
  <!-- FontAwesome -->
  <link rel="stylesheet" href="resources/plugins/fontawesome/css/all.min.css">
  <!-- Animation -->
  <link rel="stylesheet" href="resources/plugins/animate-css/animate.css">
  <!-- slick Carousel -->
  <link rel="stylesheet" href="resources/plugins/slick/slick.css">
  <link rel="stylesheet" href="resources/plugins/slick/slick-theme.css">
  <!-- Colorbox -->
  <link rel="stylesheet" href="resources/plugins/colorbox/colorbox.css">
  <!-- Template styles-->
  <link rel="stylesheet" href="resources/css/style.css">
  <link href="resources/css/memberInfo.css?ver=1" rel="stylesheet">
<style type="text/css">
		form {
	width: 500px;
}
table {
	border-collapse:collapse;
	margin-bottom: 10px;
}
th, td {
	padding: 3px 10px;
}
.off-screen {
	display: none;
}
#nav {
	width: 500px;
	text-align: center;
}
#nav a {
	display: inline-block;
	padding: 3px 5px;
	margin-right: 10px;
	font-family:Tahoma;
	background: #ccc;
	color: #000;
	text-decoration: none;
}
#nav a.active {
	background: #333;
	color: #fff;
}
	</style>
</head>
<body>
<content class="regist-frame">
  <div class="body-inner">
<c:choose>
<c:when test="${(not empty login.mId && login.mId eq rvMid) || login.mId eq 'admin'}">

    <jsp:include page="header.jsp"></jsp:include>

<div id="banner-area" class="banner-area" style="background-image:url(resources/images/banner/banner1.jpg)">
  <div class="banner-text">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
              <div class="banner-heading">
                <h1 class="banner-title">예매 정보</h1>
                <nav aria-label="breadcrumb">               
                </nav>
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end --> 

<section id="main-container" class="main-container">
  <div class="container">
    <div class="row">

      <div class="col-xl-3 col-lg-4">
        <div class="sidebar sidebar-left">
          <div class="widget">
            <h3 class="widget-title">메뉴</h3>
            <ul class="nav service-menu">
              <li ><a href="memberInfo?mId=${login.mId}">나의 회원정보</a></li>
              <li class="active"><a href="reserveInfo?mId=${login.mId}">나의 예매정보</a></li>
            </ul>
          </div><!-- Widget end -->

          <div class="widget">
            <div class="quote-item quote-border">
              <div class="quote-text-border">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.
              </div>

              <div class="quote-item-footer">
                <img loading="lazy" class="testimonial-thumb" src="images/clients/testimonial1.png" alt="testimonial">
                <div class="quote-item-info">
                  <h3 class="quote-author">Weldon Cash</h3>
                  <span class="quote-subtext">CEO, First Choice Group</span>
                </div>
              </div>
            </div><!-- Quote item end -->

          </div><!-- Widget end -->

        </div><!-- Sidebar end -->
      </div><!-- Sidebar Col end -->


      <div class="col-xl-8 col-lg-8">
        <div class="content-inner-page">
			<div class="container">
    <div class="row">
    
        <div class="comments-form border-box">
          <h3 class="title-normal">예매 정보</h3>
	
	<form id="setRows">
			
					<input type="hidden" name="rowPerPage" value="1">		
	</form>
	<table id="products"> 
	<c:forEach var="reList" items="${reList}">
	<tr>
	<%-- 	<td>
		<div class="regist-box" >
            <div class="row" >
              <div class="col-md-12" >                            	
                <div class="form-group">
                  <label for="name" class="w-100"><span>예매자 아이디 : ${reList.rvMid}</span>
                  <input type="hidden" id="user-id" class="form-control"
												name="rvMid" value="${reList.rvMid}" />											
				 </label>
                </div>
              </div><!-- Col 4 end -->
              <div class="col-md-12">
                <div class="form-group">
                  <label for="website" class="w-100"><span>예매자 이름 : ${reList.mName}</span>
                  
                  </label>
                </div>
              </div>
              <div class="col-md-12">
                <div class="form-group">
                  <label for="website" class="w-100"><span>예매번호 : ${reList.rvCode}</span>
                  	
                  </label>
                </div>
              </div>
              <div class="col-md-12">
                <div class="form-group">
                  <label for="website" class="w-100"><span>영화 : ${reList.movName}</span>
               	
                  </label>
                </div>
              </div>
              <div class="col-md-12">
                <div class="form-group">
                  <label for="website" class="w-100"><span>인원 : ${reList.rvCount}</span>          
                  </label>
                </div>
              </div>
              
               <div class="col-md-12">
                <div class="form-group">
                  <label for="website" class="w-100"><span>상영관 : ${reList.rvSchall}</span>
                  	
                  </label>
                </div>
              </div>
                          
              <div class="col-md-12">
                <div class="form-group">
                  <label for="website" class="w-100"><span>상영시간 : <fmt:formatDate value=" ${reList.rvSctime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                  <label for="website" class="w-100">
                  상영시간 : ${reList.rvSctime}
                  </label>
                </div>
              </div>
                            
               <div class="col-md-12">
                <div class="form-group">
                  <label for="website" class="w-100"><p>영화 이미지</p>    
        			<img src="resources/profile/${reList.movPoster}" width="300px" >
                  </label>
                </div>
              </div>
            </div><!-- Form row end -->
            
	
          </div>
          
		</td> --%>
		
			<td>				
                  <label for="website" class="w-100">   
        			<img src="resources/poster/${reList.movPoster}" width="200px" >
                  </label>
					<input type="hidden" id="rvMid" value="${reList.rvMid}">
                  <label for="name" class="w-100" ><span >예매자 아이디 : ${reList.rvMid}</span>
                <%--   <input type="hidden" id="user-id" class="form-control"
												name="rvMid" value="${reList.rvMid}" />		 --%>									
				 </label>
			
             
                  <label for="website" class="w-100"><span>예매자 이름 : ${reList.mName}</span>
                  
                  </label>
              
              
                  <label for="website" class="w-100"><span>예매번호 : ${reList.rvCode}</span>
                  	
                  </label>
              
             
                  <label for="website" class="w-100"><span>영화 : ${reList.movName}</span>
               	
                  </label>
           
             
                  <label for="website" class="w-100"><span>인원 : ${reList.rvCount}</span>          
                  </label>
           
              
             
                  <label for="website" class="w-100"><span>상영관 : ${reList.thName} ${reList.rvSchall}</span>
                  	
                  </label>
             
                          
             
                  <%-- <label for="website" class="w-100"><span>상영시간 : <fmt:parseDate value="${reList.rvSctime}" pattern="yyyy-MM-dd HH:mm:ss.s"/> </sapn>--%>
             
                    <label for="website" class="w-100" id="tm">
                    	<span>상영시간 : ${reList.rvSctime}</span>
                 
                  	</label>
                  	<label for="website" class="w-100" id="tm">
                  	 <li class="header-get-a-quote" style="list-style-type: none;">
                    	<a class="btn btn-primary" onclick="popUpMessage2('delBtn','${reList.rvCode}','${reList.rvMid}')">예매취소</a>
                    	
                  	  </li>
                  	  </label>
          
		</td>
	</tr>
		
     </c:forEach>    
    </table>
        </div><!-- Comments form end -->
      
    </div><!-- Main row end -->
  </div><!-- Conatiner end -->
         	
        </div><!-- Content inner end -->
      </div><!-- Content Col end -->



    </div><!-- Main row end -->
  </div><!-- Conatiner end -->
</section><!-- Main container end -->
</content>

  <footer id="footer" class="footer bg-overlay">
    <div class="footer-main">
      <div class="container">
        <div class="row justify-content-between">
          <div class="col-lg-4 col-md-6 footer-widget footer-about">
            <h3 class="widget-title">About Us</h3>
            <img loading="lazy" width="200px" class="footer-logo" src="images/footer-logo.png" alt="Constra">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor inci done idunt ut
              labore et dolore magna aliqua.</p>
            <div class="footer-social">
              <ul>
                <li><a href="https://facebook.com/themefisher" aria-label="Facebook"><i
                      class="fab fa-facebook-f"></i></a></li>
                <li><a href="https://twitter.com/themefisher" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                </li>
                <li><a href="https://instagram.com/themefisher" aria-label="Instagram"><i
                      class="fab fa-instagram"></i></a></li>
                <li><a href="https://github.com/themefisher" aria-label="Github"><i class="fab fa-github"></i></a></li>
              </ul>
            </div><!-- Footer social end -->
          </div><!-- Col end -->

          <div class="col-lg-4 col-md-6 footer-widget mt-5 mt-md-0">
            <h3 class="widget-title">Working Hours</h3>
            <div class="working-hours">
              We work 7 days a week, every day excluding major holidays. Contact us if you have an emergency, with our
              Hotline and Contact form.
              <br><br> Monday - Friday: <span class="text-right">10:00 - 16:00 </span>
              <br> Saturday: <span class="text-right">12:00 - 15:00</span>
              <br> Sunday and holidays: <span class="text-right">09:00 - 12:00</span>
            </div>
          </div><!-- Col end -->

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0 footer-widget">
            <h3 class="widget-title">Services</h3>
            <ul class="list-arrow">
              <li><a href="service-single.html">Pre-Construction</a></li>
              <li><a href="service-single.html">General Contracting</a></li>
              <li><a href="service-single.html">Construction Management</a></li>
              <li><a href="service-single.html">Design and Build</a></li>
              <li><a href="service-single.html">Self-Perform Construction</a></li>
            </ul>
          </div><!-- Col end -->
        </div><!-- Row end -->
      </div><!-- Container end -->
    </div><!-- Footer main end -->

    <div class="copyright">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <div class="copyright-info text-center text-md-left">
              <span>Copyright &copy; <script>
                  document.write(new Date().getFullYear())
                </script>, Designed &amp; Developed by <a href="https://themefisher.com">Themefisher</a></span>
            </div>
          </div>

          <div class="col-md-6">
            <div class="footer-menu text-center text-md-right">
              <ul class="list-unstyled">
                <li><a href="about.html">About</a></li>
                <li><a href="team.html">Our people</a></li>
                <li><a href="faq.html">Faq</a></li>
                <li><a href="news-left-sidebar.html">Blog</a></li>
                <li><a href="pricing.html">Pricing</a></li>
              </ul>
            </div>
          </div>
        </div><!-- Row end -->

        <div id="back-to-top" data-spy="affix" data-offset-top="10" class="back-to-top position-fixed">
          <button class="btn btn-primary" title="Back to Top">
            <i class="fa fa-angle-double-up"></i>
          </button>
        </div>

      </div><!-- Container end -->
    </div><!-- Copyright end -->
  </footer><!-- Footer end -->
</c:when>	
		<c:otherwise>
			<script>
				$(document).ready( function () {
					popUpMessage();
				});
				
				</script>
		</c:otherwise>
	</c:choose>

  <!-- Javascript Files
  ================================================== -->

  <!-- initialize jQuery Library -->
  <script src="resources/plugins/jQuery/jquery.min.js"></script>
  <!-- Bootstrap jQuery -->
  <script src="resources/plugins/bootstrap/bootstrap.min.js" defer></script>
  <!-- Slick Carousel -->
  <script src="resources/plugins/slick/slick.min.js"></script>
  <script src="resources/plugins/slick/slick-animation.min.js"></script>
  <!-- Color box -->
  <script src="resources/plugins/colorbox/jquery.colorbox.js"></script>
  <!-- shuffle -->
  <script src="resources/plugins/shuffle/shuffle.min.js" defer></script>


  <!-- Google Map API Key-->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer></script>
  <!-- Google Map Plugin-->
  <script src="resources/plugins/google-map/map.js" defer></script>

  <!-- Template custom -->
  <script src="resources/js/script.js"></script>
  <script defer src="resources/js/reserveInfo.js?ver=6"></script>

  </div><!-- Body inner end -->
  
  <script>
  var $setRows = $('#setRows');
  
  let time = $('#tm');
  

  $setRows.submit(function (e) {
  	e.preventDefault();
  	var rowPerPage = $('[name="rowPerPage"]').val() * 1;// 1 을  곱하여 문자열을 숫자형로 변환

//  		console.log(typeof rowPerPage);

  	var zeroWarning = 'Sorry, but we cat\'t display "0" rows page. + \nPlease try again.'
  	if (!rowPerPage) {
  		alert(zeroWarning);
  		return;
  	}
  	$('#nav').remove();
  	var $products = $('#products');

  	$products.after('<div id="nav">');


  	var $tr = $($products).find('tbody tr');
  	var rowTotals = $tr.length;
//  	console.log(rowTotals);

  	var pageTotal = Math.ceil(rowTotals/ rowPerPage);
  	var i = 0;

  	for (; i < pageTotal; i++) {
  		$('<a href="#"></a>')
  				.attr('rel', i)
  				.html(i + 1)
  				.appendTo('#nav');
  	}

  	$tr.addClass('off-screen')
  			.slice(0, rowPerPage)
  			.removeClass('off-screen');

  	var $pagingLink = $('#nav a');
  	$pagingLink.on('click', function (evt) {
  		evt.preventDefault();
  		var $this = $(this);
  		if ($this.hasClass('active')) {
  			return;
  		}
  		$pagingLink.removeClass('active');
  		$this.addClass('active');

  		// 0 => 0(0*4), 4(0*4+4)
  		// 1 => 4(1*4), 8(1*4+4)
  		// 2 => 8(2*4), 12(2*4+4)
  		// 시작 행 = 페이지 번호 * 페이지당 행수
  		// 끝 행 = 시작 행 + 페이지당 행수

  		var currPage = $this.attr('rel');
  		var startItem = currPage * rowPerPage;
  		var endItem = startItem + rowPerPage;

  		$tr.css('opacity', '0.0')
  				.addClass('off-screen')
  				.slice(startItem, endItem)
  				.removeClass('off-screen')
  				.animate({opacity: 1}, 300);

  	});

  	$pagingLink.filter(':first').addClass('active');

  });


  $setRows.submit();
  
  
  window.onload=function(){
	    var auto = setTimeout(function(){ $setRows.submit(); }, 100);
	    console.log(typeof time);
  }
	    
  </script>
  
     <script>

     

 const modal7 = document.createElement("div");
 const messageBox7 = document.createElement("div");
 const messageBtn7 = document.createElement("button");
 const messageBtn72 = document.createElement("button");
 const message7 = document.createElement("span");
 const content7 = document.querySelector(".regist-frame");
 const input7 = document.createElement("input");
 input7.value = "";

 function popUpMessage(){
 	modal7.className = "modal2";
 	messageBox7.id = "message-box";
 	messageBtn7.id = "popup-button";
 	messageBtn72.id = "popup-button2";
 	
 	messageBtn7.innerText = "확인";
 	messageBtn72.innerText = "취소";
 	
 	content7.appendChild(modal7); 
 	modal7.appendChild(messageBox7);
 	messageBox7.appendChild(message7);
 	messageBox7.appendChild(messageBtn7);

 		message7.innerText = "해당 아이디로 로그인 해주세요.";
 		
 		messageBtn7.addEventListener("click",()=>{
 			
 			location.href='loginForm';
 		});	
 	
 }
</script>
  
  </body>
  </html>