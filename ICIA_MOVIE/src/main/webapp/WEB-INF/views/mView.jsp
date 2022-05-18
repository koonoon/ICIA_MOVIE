<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <link rel="stylesheet" href="resources/css/style.css?ver=3">
  <link rel="stylesheet" href="resources/css/star.css?ver=1">
  <link href="resources/css/regist-form.css" rel="stylesheet">
  
  <style type="text/css">
  	#nav {
	width: 500px;
	text-align: center;

}
  </style>
</head>
<body>
  <content class="comm-frame">
  <div class="body-inner">

<jsp:include page="header.jsp"></jsp:include>

<div id="banner-area" class="banner-area" style="background-image:url(resources/images/banner/a.PNG)">
  <div class="banner-text">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
              <div class="banner-heading">
                <h1 class="banner-title">영화정보</h1>
              
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end -->

<section id="main-container" class="main-container">
  <div class="container">
    <div class="row">
<!-- 
      <div class="col-xl-3 col-lg-4">
        <div class="sidebar sidebar-left">
          <div class="widget">
            <h3 class="widget-title">Solutions</h3>
            <ul class="nav service-menu">
              <li><a href="service-single.html">Home Construction</a></li>
              <li class="active"><a href="service-single.html">Building Remodels</a></li>
              <li><a href="#">Interior Design</a></li>
              <li><a href="#">Exterior Design</a></li>
              <li><a href="#">Renovation</a></li>
              <li><a href="#">Safety Management</a></li>
            </ul>
          </div>Widget end

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
            </div>Quote item end

          </div>Widget end

        </div>Sidebar end
      </div>Sidebar Col end
 -->
      <div class="col-xl-8 col-lg-8">
        <div class="content-inner-page">

          <h2 class="column-title mrt-0">영화정보</h2>

          

          <div class="gap-40"></div>

          <div id="page-slider" class="page-slider">
            <div class="item">
              <img loading="lazy" class="img-fluid" src="resources/poster/${view.movPoster}"/>
            </div>

           
          </div><!-- Page slider end -->

          <div class="gap-40"></div>

          <div class="row">
            <div class="col-md-6">
              <h3 class="column-title-small">줄거리</h3>

              <p>${view.movStory}</p>
              <ul class="list-arrow">
                <li>영화제목 : ${view.movName}</li>
                <li>감독 : ${view.movDirector}</li>
                <li>장르 : ${view.movGenre}</li>
                <li>관람등급 : ${view.movGrade}</li>
                <li>개봉일 : ${view.movOpen}</li>
               
              </ul>
               	<li class="header-get-a-quote" style="list-style-type: none;">
                    	<a class="btn btn-primary" href="movieModify?movCode=${view.movCode}">수정</a>
                    	<a class="btn btn-primary" href="mView/delete?movCode=${view.movCode}">삭제</a>
                  	  </li>
            </div>

            <div class="col-md-6 mt-5 mt-md-0">
              <h3 class="column-title-small">한줄평</h3>
              <span class="star">
					  ★★★★★
					  <span>★★★★★</span>
					  <input type="range" oninput="drawStar(this)" value="0" step="0.5" min="0" max="5">
					</span>
              <div class="accordion accordion-group accordion-classic" id="construction-accordion">
                <div class="card">
                  <div class="card-header p-0 bg-transparent" id="headingOne">
                    <h2 class="mb-0">
                      <button class="btn btn-block text-left" type="button" data-toggle="collapse"
                        data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        한줄평
                      </button>
                    </h2>
                    
                  </div>
                  
				
                  <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                    data-parent="#construction-accordion" class='commWrite'>
                             
                    
										
                    <textarea rows="5" cols="40" id="cComment"></textarea>
                    <button id="commBtn">등록</button>
                  </div>
                  
                </div>     
                  </div>
                </div>
                
              </div>
                       	
            	
            	<form id="setRows">
			
					<input type="hidden" name="rowPerPage" value="5">
		
				</form>
              <div id="commentArea" ></div>
          
              <!--/ Accordion end -->
            </div>
          </div>
          <!--2nd row end -->
         
         
		
		<input type="hidden" name="movCode" id="movCode" value="${view.movCode}"/>
     	</div>
      </div>
      </section>  
      

  <footer id="footer" class="footer bg-overlay">
    <div class="footer-main">
      <div class="container">
        <div class="row justify-content-between">
          <div class="col-lg-4 col-md-6 footer-widget footer-about">
            <h3 class="widget-title">About Us</h3>
            <img loading="lazy" width="200px" class="footer-logo" src="resources/images/footer-logo.png" alt="Constra">
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
  <script src="plugins/google-map/map.js" defer></script>

  <!-- Template custom -->
  <script src="resources/js/script.js"></script>
  <script defer src="resources/js/star.js?ver=6"></script>
  
  </div><!-- Body inner end -->
  </content>
  </body>
  
  <script
  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  
 <script>

 const modal2 = document.createElement("div");
 const messageBox = document.createElement("div");
 const messageBtn = document.createElement("button");
 const message = document.createElement("span");
 const content = document.querySelector(".comm-frame");
 const input = document.createElement("input");
 input.value = "";



 function popUpMessage(){
 	modal2.className = "modal2";
 	messageBox.id = "message-box";
 	messageBtn.id = "popup-button";
 	
 	messageBtn.innerText = "확인";
 	
 	content.appendChild(modal2);
	modal2.appendChild(messageBox);
	messageBox.appendChild(message);
	messageBox.appendChild(messageBtn);

 		message.innerText = "로그인 이후 가능합니다";
 		messageBtn.focus();
 		
 		messageBtn.addEventListener("click",()=> {
 			
 			location.href='loginForm';
 		});	
 	
 }

 
 
  
  	$(document).ready(function(){
  	  
  		var cmCode = $('#movCode').val();
  		
  		console.log('hidden으로 보낸 movCode : ' + cmCode);
  		
  		$.ajax({
  			type : "POST",
  			url : "comment/cList",
  			data : {"cmCode": cmCode},
  			dataType : "json",
  			success : function(list){
  				commentList(list);
  			},
  			error : function(){
  				alert('댓글 리스트 불러오기 실패!');
  			}
  		});
  	});
  	
  	
  
  	var loginId = '${login.mId}';
  	
  	$('#commBtn').click(function(){
  		if(!loginId){
  			popUpMessage();
  		} else {
  			var auto = setTimeout(function(){ $setRows.submit(); }, 100);
  			
  			var cWriter = loginId;
  			var cComment = $('#cComment').val();
  			var cmCode = $('#movCode').val();
  			/* var starScore = $('.star span').style.width = `${target.value * 20}%` */
  			console.log("ajax star"+starScore);
  			$.ajax({
  				type : "POST",
  				url : "comment/cWrite",
  				data : {"cWriter" : cWriter,
  						"cmCode" : cmCode,
  						"cComment" : cComment,
  						"cStarScore" : starScore},
  				dataType : "json",
  				success : function(list){
  					commentList(list);
  					$('#cComment').val("");
  				},
  				error : function(){
  					alert('댓글 입력 실패');
  				}
  			});
  		}
  	});
  	
  	
  	function commentList(list){
  		var output = "";

  		
  		/* output += "<form action='' id='setRows'> <input type='text' name='rowPerPage' value='5'> </form>"; */
  		output += "<table id='products'>";
  		
  		output += "<thead>"; 		
  		output += "<tr>";
  		output += "<th>작성자</th>";
  		output += "<th>내용</th>";
  		output += "<th>작성일</th>";
  		output += "<th>별점</th>";
  		output += "</tr>";
  		output += "</thead>";
  		
  		output += "<tbody>";
  		for(var i in list){
  			output += "<tr>";
  			output += "<td>" + list[i].cWriter + "</td>";
  			output += "<td>" + list[i].cComment + "</td>";
  			output += "<td>" + list[i].cDate + "</td>";
  			output += "<td>" +
  			"<span class='star'>" + "★★★★★" 
  			+ "<span style='width:" + (list[i].cStarScore*10)*2 + "%'>" + "★★★★★" + "</span>"
  		  	+ "</span>" 
  		  	+ "</td>";
  			output += "</tr>";
  		}
  		output += "</tbody>";
  		output += "</table>";
  		
  		
  		var commentArea = document.getElementById('commentArea');  		
  		commentArea.innerHTML = output;
  		
  	}
  	
  	
  	var $setRows = $('#setRows');
  	console.log(" $setRows : "+ $setRows);
  	$setRows.submit(function (e) {
    	e.preventDefault();
    	var rowPerPage = $("[name='rowPerPage']").val() * 1;// 1 을  곱하여 문자열을 숫자형로 변환
	  	console.log("rowPerPage : "+rowPerPage);

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
    	console.log(rowTotals);

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
	    

    } 
  	
  </script>
 
  
  

  </html>