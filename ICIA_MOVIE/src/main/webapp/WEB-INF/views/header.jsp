<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	

<!-- Header start -->
<header id="header" class="header-one">
  <div class="bg-white">
    <div class="container">
      <div class="logo-area">
          <div class="row align-items-center">
            <div class="logo col-lg-3 text-center text-lg-left mb-3 mb-md-5 mb-lg-0">
                <a class="d-block" href="/movie/">
                  <img loading="lazy" src="resources/images/logo.png" alt="movie">
                </a>
            </div><!-- logo end -->
  
            <div class="col-lg-9 header-right">
                <ul class="top-info-box">
                <c:if test="${not empty login.mId && login.mId ne 'admin'}">
	                 <li>
	                    <div class="info-box">
	                      <div class="info-box-content">
	                      	<p class="info-box-title">일반회원</p>
	                      	<p class="info-box-subtitle">${login.mId}님! 환영합니다.</p>
	                      	
	                      </div>
	                    </div>  
	                  </li>
                  </c:if>
                  <c:if test="${login.mId eq 'admin'}">
	                 <li>
	                    <div class="info-box">
	                      <div class="info-box-content">
	                      	<p class="info-box-title">관리자</p>
	                      	<p class="info-box-subtitle">${login.mId}님! 환영합니다.</p>	                      	
	                      </div>
	                    </div>  
	                  </li>
                  </c:if>
                  <c:if test="${not empty login.mId}">
                  	<li class="header-get-a-quote">
                    	<a class="btn btn-primary" href="memberInfo?mId=${login.mId}">내 정보</a>
                  	</li>
                  	<li class="header-get-a-quote">
                    	<a class="btn btn-primary" href="logout">로그아웃</a>
                  	</li>
                  </c:if>
              
                  
                
                 <!-- <li class="last">
                    <div class="info-box last">
                      <div class="info-box-content">
                          <p class="info-box-title">Global Certificate</p>
                          <p class="info-box-subtitle">ISO 9001:2017</p>
                      </div>
                    </div>
                  </li> -->
                  <c:if test="${empty login.mId}">               
	                  <li class="header-get-a-quote">
	                    <a class="btn btn-primary" href="loginForm">로그인</a>	                  
	                  </li>
	                  <li class="header-get-a-quote">
	                    <a class="btn btn-primary" href="registForm">회원가입</a>                  
	                  </li>
                  </c:if>
                </ul><!-- Ul end -->
            </div><!-- header right end -->
          </div><!-- logo area end -->
  
      </div><!-- Row end -->
    </div><!-- Container end -->
  </div>

  <div class="site-navigation">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
              <nav class="navbar navbar-expand-lg navbar-dark p-0">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                <div id="navbar-collapse" class="collapse navbar-collapse">
                	
			
					<c:if test="${not empty login.mId && login.mId ne 'admin'}">
							<ul class="nav navbar-nav mr-auto">
		                      <li class="nav-item"><a class="nav-link" href="/movie/">메인</a></li>
		                      <li class="nav-item"><a class="nav-link" href="movieReserve">예매하기</a></li>
		                      <li class="nav-item"><a class="nav-link" href="movies">상영 목록</a></li>
		                      
		                    </ul>
						</c:if>
						
						<c:if test="${login.mId eq 'admin'}">
							  <ul class="nav navbar-nav mr-auto">
			                      <li class="nav-item"><a class="nav-link" href="/movie/">메인</a></li>
			                      <li class="nav-item"><a class="nav-link" href="movieReserve">예매하기</a></li>
			                      <li class="nav-item"><a class="nav-link" href="movies">상영 목록</a></li>
			                      <li class="nav-item"><a class="nav-link" href="movieForm">영화등록</a></li>
			                      <li class="nav-item"><a class="nav-link" href="theaterForm">영화관등록</a></li>
			                      <li class="nav-item"><a class="nav-link" href="TheaterList">영화관목록</a></li>
			                      <li class="nav-item"><a class="nav-link" href="schedulesForm">시간표등록</a></li>
			                  </ul>
						
						</c:if>
						<c:if test="${empty login.mId}">
							<ul class="nav navbar-nav mr-auto">
				                  <li class="nav-item"><a class="nav-link" href="/movie/">메인</a></li>
				                  <li class="nav-item"><a class="nav-link" href="movieReserve">예매하기</a></li>
				                  <li class="nav-item"><a class="nav-link" href="movies">상영 목록</a></li>				                  
				           	</ul>
						</c:if>
                  
                </div>
              </nav>
          </div>
          <!--/ Col end -->
        </div>
        <!--/ Row end -->

        <div class="nav-search">
          <span id="search"><i class="fa fa-search"></i></span>
        </div><!-- Search end -->

        <div class="search-block" style="display: none;">
          <label for="search-field" class="w-100 mb-0">
            <input type="text" class="form-control" id="search-field" placeholder="Type what you want and enter">
          </label>
          <span class="search-close">&times;</span>
        </div><!-- Site search end -->
    </div>
    <!--/ Container end -->

  </div>
  <!--/ Navigation end -->
</header>
<!--/ Header end -->

	

</body>
</html>