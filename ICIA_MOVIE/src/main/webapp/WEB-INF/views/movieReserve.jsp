<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<title>Document</title>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/reserve.css">
<link rel="stylesheet" href="resources/css/header.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel='stylesheet'
	href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script
	src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
	  <!-- Basic Page Needs
================================================== -->

  <!-- Mobile Specific Metas
================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

  <!-- Favicon
================================================== -->
  <link rel="icon" type="image/png" href="resources/images/favicon.png">

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
	
<style>
* {
	font-size: 11px;
}

body {
	/* background-color: #2B2B2B; */
}

.label{
	font-size: 20px;
}

/* header */
.header-nav-wrapper {
	background: url(../images/bg_header.gif) repeat-x 0 0;
	background-position: center;
	background-size: contain;
	height: 120px;
	padding-top: 4px;
}

.header-nav-container {
	position: fixed;
}


.header {
	display: flex;
	justify-content: space-between;
	padding-left: 40px;
	padding-right: 150px;
}

.header-inner {
	display: flex;
}

.header-inner>div {
	border-right: 1px solid #DDDDDD;
	margin-left: 8px;
	padding-right: 4px;
}

/* //header */

/* nav */
.nav-line {
	background-color: red;
	border-radius: 50px;
	height: 5px;
	/* background-image: linear-gradient(to right, white 33%, rgba(255, 255, 255, 0) 0%);
  background-position: bottom;
  background-size: 15px 1px;
  background-repeat: repeat-x; */
}

.nav-wrapper {
	/* background: url(../images/bg_header.gif) repeat-x 0 0; */
	/* width: 100%;*/
	height: 94px;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.nav-content {
	padding-top: 15px;
}

.movieLogo-wrapper {
	text-align: center;
}

.cgvLogo {
	width: 120px;
	margin-left: 150px;
	/* margin-right: -40px; */
}

.cgvMovie {
	width: auto;
	height: 28px;
}

.nav-inner {
	display: flex;
	/* margin-left: -250px; */
	margin-left: 150px;
	margin-right: auto;
	align-items: center;
	padding-bottom: 15px;
}

.nav-inner>div>button {
	padding-top: 5px;
	font-size: 14px;
	font-weight: bold;
	margin-left: 15px;
}

.search-wrapper {
	margin-left: 70px;
	height: 20px;
}

.search-wrapper>input {
	width: 100px;
	height: 20px;
}

.searchButton {
	margin: 0 !important;
	padding: 2px !important;
	background-color: red;
	color: white;
	width: 30px;
	height: 100%;
	font-size: 10px !important;
}

/* content */
.reserve-container {
	margin-top: 20px;
	display: flex;
	justify-content: center;
	height: 700px;
	/* border: 1px solid #dddddd; */
}

.reserve-container>div {
	border: 1px solid #dddddd;
}

.reserve-title {
	border-bottom: 1px solid #dddddd;
	background-color: #444444;
	text-align: center;
	color: #dddddd;
	padding: 5px;
	font-size: 13px;
	font-weight: bold;
}

.movie-part {
	width: 284px;
}

.theater-part {
	width: 264px;
}

.day-part {
	width: 91px;
}

.time-part {
	width: 384px;
}

.sort-wrapper {
	margin: 10px 6px 6px 10px;
	/* padding: 3px; */
	display: flex;
	border-bottom: 1px solid #dddddd;
	font-size: 12px;
}

.sort-wrapper>div {
	padding: 3px;
}

.sort-wrapper>div:hover {
	border-bottom: 1px solid #111111;
}

.sort-selected {
	font-weight: bold;
	border-bottom: 1px solid #111111;
}

.sort-korean {
	margin-left: 6px;
}

.reserve-date {
	padding-top: 5px;
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 770px;
	overflow: scroll;
	overflow-x: hidden;
}

.movie-date-wrapper {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 5px 2px;
}

.movie-week-of-day {
	margin-left: 5px;
	font-size: 10px;
	width: 12px;
	height: 22px;
	line-height: 22px;
}

.movie-day {
	text-align: center;
	width: 34px;
	height: 22px;
	font-size: 17px;
	font-weight: bold;
}

.saturday {
	color: #31597E;
	font-weight: bold;
}

.sunday {
	color: #AF2D2D;
	font-weight: bold;
}

.movie-date-wrapper-active {
	background-color: #333333;
}

.movie-date-wrapper-active>* {
	color: white;
}

.reserve-state{		
	width:100vw;
	height:200px;	
	background-color: black;
	margin-bottom: 50px;
	display: flex;	
	align-items: center;
	flex-direction: column;
	justify-content: space-around;	
}

.reserve-state > div > span{
	font-size: 20px;
}
</style>
</head>

<body>
<content class="regist-frame">
  <jsp:include page="header.jsp"></jsp:include>

	<input id="user-id" type="hidden" value="${login.mId}">
	<div class="reserve-container">
		<div class="movie-part">
			<div class="reserve-title">전체영화</div>
			<c:forEach var="mov" items="${mBook}">
				<div>
				 	<div class="clickMovie">
				 		<%-- <label class="label" ><input type="checkbox" id="open" class="form-check-input" value="${mov.movName}" onclick="selectedMovie(this)" style="visibility: hidden;"></label> --%>					
						<label class="label" ><input type="checkbox" id="open" class="form-check-input" value="${mov.movCode}" onclick="checkOnlyOne(this)" style="visibility: hidden;">
						${mov.movName}</label>
					</div>
				</div>
			</c:forEach>

		</div>
		<div class="theater-part">
			<div class="reserve-title">극장</div>
				<div id="theaterArea">
				
				</div>
				
				
				
			<div>
				
			</div>
		</div>
	<!-- 	<div class="day-part">
			<div class="reserve-title">날짜</div>
			
			
			
			
		</div> -->
		<div class="time-part">
			<div class="reserve-title">시간</div>
				
			<div id="timeArea">
				
			</div>
		
		</div>
	</div>
		
		<div class="reserve-state">
			<div>
				<span class="selected-movie" style="color: white">영화 : </span>
			</div>
			<div>
				<span class="selected-theater" style="color: white">상영관 : </span>
			</div>
			<div>
				<span class="selected-day" style="color: white">날짜 : </span>
			</div>
			<div>
				<button class="reserve-btn" style="border: 0; background-color:#000000; outline:0; border-radius: 30px; visibility: hidden;" ><img src="resources/images/btn_reserve.png" width="200px"></button>
			</div>
		</div>
		
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
  </content>
	
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
	
	<script>
   /*      const date = new Date();
        // console.log(date.getFullYear());
        const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
        const reserveDate = document.querySelector(".reserve-date");

      
            const weekOfDay = ["화", "수", "목", "금", "토", "일", "월"]
            const year = date.getFullYear();
            const month = date.getMonth();
            for (i = date.getDate(); i <= lastDay.getDate(); i++) {

                const button = document.createElement("button");
                const spanWeekOfDay = document.createElement("span");
                const spanDay = document.createElement("span");

                //class넣기
                button.classList = "movie-date-wrapper"
                spanWeekOfDay.classList = "movie-week-of-day";
                spanDay.classList = "movie-day";

                //weekOfDay[new Date(2020-03-날짜)]
                const dayOfWeek = weekOfDay[new Date(year + "-" + month + "-" + i).getDay()];

                //요일 넣기
                if (dayOfWeek === "토") {
                    spanWeekOfDay.classList.add("saturday");
                    spanDay.classList.add("saturday");
                } else if (dayOfWeek === "일") {
                    spanWeekOfDay.classList.add("sunday");
                    spanDay.classList.add("sunday");
                }
                spanWeekOfDay.innerHTML = dayOfWeek;
                button.append(spanWeekOfDay);
                //날짜 넣기
                spanDay.innerHTML = i;
                button.append(spanDay);
                //button.append(i);
                reserveDate.append(button);

                dayClickEvent(button);
            }

        


        function dayClickEvent(button) {
            button.addEventListener("click", function() {
                const movieDateWrapperActive = document.querySelectorAll(".movie-date-wrapper-active");
                movieDateWrapperActive.forEach((list) => {
                    list.classList.remove("movie-date-wrapper-active");
                })
                button.classList.add("movie-date-wrapper-active");
            })
        }
        
  */
    </script>
</body>
<script type="text/javascript">
/* 
$(document).on("click",".movie-part > .clickMovie", (e) => {
	const index = $(e. target).index();
	
	console.log(index);	
});
 */
 
/*  document.querySelectorAll(".form-check-input").forEach(el => {	
	 
	 if(el.checked == true){
		 console.log("체크된 영화 : " + el.value);
	 }
	 
 }); */
 
 let selectedMovie = "";
 let selectedTheater = "";
 let selectedDay = "";
 
/*  function selectedMovie(element){
	 console.log("선택된 영화 : "+element);
	 document.querySelector(".selected-movie").innerHTML = "영화 : "+ element.value;
 } */
 
 function checkOnlyOne(element) {
	  
	  const checkboxes 
	      = document.querySelectorAll("#open").forEach(el => {
	    	  el.checked = false;
	    	  el.parentElement.style.background = "white";
	    	  el.parentElement.style.color = "black";
	    	  
	      });
	  console.log(element.value);
	  
	  element.checked = true;
	  element.parentElement.style.background = "#232323";
	  element.parentElement.style.color = "white";	  
	  
	  
	  /* let movName = element.value; */
	  let movCode = element.value;
	  selectedMovie = element.parentElement.innerText;
	  console.log("선택된 영화 : "+selectedMovie);
	  document.querySelector(".selected-movie").innerHTML = "영화 : "+ selectedMovie;
	  document.querySelector(".selected-theater").innerHTML = "극장 : ";
	  document.querySelector(".selected-day").innerHTML = "날짜 : ";
	  $.ajax({
		  type:"POST",
		  url : "movieReserve/thList",
		  data : {movCode : movCode},
		  dataType : "json",
		  success : function(list){
			  thList(list);
			 
			  console.log(list);
		  },
		  error : function(){
			  	alert('영화관 목록 불러오기 실패');
		  }
		  
		  
		  
	  });
	  	  
 }
	 	  
 let movCode
 function checkOnlyOne2(element) {
	  
	  const checkboxes 
	      = document.querySelectorAll("#open2").forEach(el => {
	    	  el.checked = false;
	    	  el.parentElement.style.background = "white";
	    	  el.parentElement.style.color = "black";
	    	  console.log("버튼 비활성화");
				document.querySelector(".reserve-btn").style.visibility = "hidden";
	      });
	  console.log(element.value);
	  element.checked = true;
	  element.parentElement.style.background = "#232323";
	  element.parentElement.style.color = "white";	  
	  selectedTheater = element.parentElement.innerText;
	  
	  /* let movName = element.value; */
	  movCode = element.value;
	  document.querySelector(".selected-theater").innerHTML = "극장 : "+ selectedTheater;
	  document.querySelector(".selected-day").innerHTML = "날짜 : ";
	 
	   $.ajax({
			  type:"POST",
			  url : "movieReserve/thList/schedules",
			  data : {
				  		thCode : movCode.split(",")[0],
				  		scHall : movCode.split(",")[1],
				  		movCode : movCode.split(",")[2],
				  		
			  		 },
			  dataType : "json",
			  success : function(list){
				  scList(list);
				  console.log(list);
				  /* selectedDay = list; */
				  
			  },
			  error : function(){
				  	alert('영화관 목록 불러오기 실패');
			  }
			  
			  
			  
		  });  
	
	  
	
	    
}
 
 
 let scInfo = "";
 
 function reserve(){
	 
	 	
	 
	 	const id = $('#user-id').val();
	 	if(id.length > 0){
	 		
	 		
	 	   $.ajax({
				  type:"POST",
				  url : "movieReserve/thList/schedules/reserve",
				  data : {
					  		rvScthcode : scInfo.split(",")[0],
					  		rvSchall : scInfo.split(",")[1],
					   		rvscMovcode : scInfo.split(",")[2],
					   		scTime : selectedDay,
					   		rvMid : id
				  		 },
				  dataType : "json",
				  success : function(list){
					 
					alert('예매 완료되었습니다.');
					  
				  },
				  error : function(){
					  	alert('예매 정보 불러오기 실패');
				  }
				  
				  
				  
			  });
	 	}else{
	 		$(document).ready( function () {
				popUpMessage();
			});
	 	}
	 	
	
 }
 
 
 function checkOnlyOne3(element) {
	  
	  const checkboxes 
	      = document.querySelectorAll("#open3").forEach(el => {
	    	  el.checked = false;
	    	  el.parentElement.style.background = "white";
	    	  el.parentElement.style.color = "black";
	    	  
	      });
	  console.log(element.value);
	  element.checked = true;
	  element.parentElement.style.background = "#232323";
	  element.parentElement.style.color = "white";	
	  
	  selectedDay = element.parentElement.innerText;
	  
	  document.querySelector(".selected-day").innerHTML = "날짜 : "+ selectedDay;
	  console.log("버튼 활성화");
	  document.querySelector(".reserve-btn").style.visibility = "visible";
	
	 /*  if(selectedDay.length > 0){
			console.log("버튼 활성화");
			document.querySelector(".reserve-btn").style.visibility = "visible";

			
		}else{
			console.log("버튼 비활성화");
			document.querySelector(".reserve-btn").style.visibility = "hidden";
		} */
	  scInfo = element.value;
		
	
}


 
 /* function selectedTh(list){
	 for(var i in list){
		 document.querySelector(".selected-theater").innerHTML = "극장 : "+ list[i].thName + ' '+list[i].scHall;
		 
	 }
	 
	 document.querySelector(".selected-day").innerHTML = "날짜 : ";
 }
  */
 
 /* 극장리스트  */
 function thList(list){
	 var output = "";
	 output += "<table>";
	 for(var i in list){
			output += "<tr>";
			/* output += "<td>" + list[i].thName + ' '+list[i].scHall + "</td>"; */
			output += "<td>"; 
			output += "<label class='label'> <input type='checkbox' id='open2' value='"+list[i].thCode+','+ list[i].scHall+','+list[i].scMovcode+ "' onclick='checkOnlyOne2(this)' style='visibility: hidden;'>"
			+ list[i].thName + ' '+list[i].scHall + "</label>";
			
			output += "</td>";
		
			
			output += "</tr>";
		}
		output += "</tbody>";
		output += "</table>";
		
		var theaterArea = document.getElementById('theaterArea');  		
		theaterArea.innerHTML = output;
		var timeArea = document.getElementById('timeArea');  		
		timeArea.innerHTML = "";
	
 } 
 /* 스케줄(상영시간) 리스트  */
 function scList(list){
	 var output = "";
	 output += "<table>";
	 for(var i in list){
			output += "<tr>";
			/* output += "<td>" + list[i].thName + ' '+list[i].scHall + "</td>"; */
			output += "<td>"; 
			output += "<label class='label'> <input type='checkbox' id='open3' value='"+list[i].thCode+','+ list[i].scHall+','+list[i].scMovcode+ "' onclick='checkOnlyOne3(this)' style='visibility: hidden;'>"
			+ list[i].scTime + "</label>";
			
			output += "</td>";				
			output += "</tr>";
			/* selectedDay = list[i].scTime; */
		
		  
		}
		output += "</tbody>";
		output += "</table>";
		
		
		var timeArea = document.getElementById('timeArea');  		
		timeArea.innerHTML = output;
 }
 

 
  document.querySelector(".reserve-btn").addEventListener("click", reserve); 
 
 

</script>

<script>

const modal = document.createElement("div");
const messageBox = document.createElement("div");
const messageBtn = document.createElement("button");
const messageBtn2 = document.createElement("button");
const message = document.createElement("span");
const content = document.querySelector(".regist-frame");
const input = document.createElement("input");
input.value = "";



function popUpMessage(){
	modal.className = "modal2";
	messageBox.id = "message-box";
	messageBtn.id = "popup-button";
	messageBtn2.id = "popup-button2";
	
	messageBtn.innerText = "확인";
	messageBtn2.innerText = "취소";
	
	content.appendChild(modal); 
	modal.appendChild(messageBox);
	messageBox.appendChild(message);
	messageBox.appendChild(messageBtn);

		message.innerText = "로그인 후 예매 가능합니다";
		
		messageBtn.addEventListener("click",()=>{
			
			location.href='loginForm';
		});	
	
}

</script>


</html>