<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/style2.css">
    <link  rel="stylesheet" href="resources/css/content.css">

    <script src="https://kit.fontawesome.com/c57789436b.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
    <nav class="header">
        <div class="bar">
            <div class="navbar-log">
                <i class="fab fa-app-store-ios"></i>
                <a href="index">app store</a>
            </div>
            <input id="hamburger" type="checkbox" />
            <div class="mobile-menu">

                <label id="label" class="burger" for="hamburger">

                    <div class="line1"></div>
                    <div class="line2"></div>


                </label>

            </div>

            <ul class="navbar-navi">
          	 <c:choose>
		
		
	
				<c:when test="${not empty login.mId}">
					 <li><a href="/movie/"><span>메인</span></a></li>
					 <li><a href="movieForm"><span>영화 등록</span></a></li>
                	 <li><a href="boardList"><span>자유 게시판</span></a></li>
                	 <li><a href="memberList"><span>회원목록</span></a></li>
				</c:when>
				
				<c:otherwise>
					<li><a href="/movie/"><span>메인</span></a></li>
					<li><a href="movieForm"><span>영화 등록</span></a></li>
	                <li><a href="boardList"><span>자유 게시판</span></a></li>
                	<li><a href="registForm"><span>회원가입</span></a></li>
                	<li><a href="memberList"><span>회원목록</span></a></li>
				</c:otherwise>
			</c:choose>
               
                
                
            </ul>
            
            <i class="fab fa-app-store-ios i" id="hidden"></i>

            <ul class="navbar-login" role="checkbox">
                <!-- {{^loginTrue}} -->
                <c:if test="${empty login.mId}">
                
               		<button onclick="location.href='loginForm'">로그인</button>
                </c:if>
                <!-- {{/loginTrue}}
                {{#loginTrue}} -->
                <c:if test="${not empty login.mId}">
	                <input type="checkbox" id="user-menu" />
	
	                <div id="info-div">
	                    <ul id="user-info">
	                        <li>
	                            <span id="loign-ok">${login.mId}님 안녕하세요.</span>
	                        </li>
	                     
	                        <li>
	                            <button id="logout" name="logout" onclick="location.href='logout'">로그아웃</button>
	                        </li>
	
	                    </ul>
	                </div>
	                <label for="user-menu">
	                    <i class="fas fa-user"></i>
	                </label>
				</c:if>
                <!-- {{/loginTrue}} -->

            </ul>

        </div>


    </nav>
    <content class="content">
      
     <c:forEach var="mov" items="${movieList}">
     <div class="item">
     	<div class="box">
     		<img src="resources/poster/${mov.movPosterName}" width="30px"> ${mov.movPoster}
     		<h2>${mov.movName}</h2>
     		<span>${mov.movGenre}</span>
     		<span>${mov.movPoster}</span>
     	</div>
     </div>
    </c:forEach>
    
    
    
    
    </content>


    <script src="resources/js/flex.js"></script>
    <script src="resources/js/logout.js"></script>
    <script src="resources/js/session.js"></script>
</body>

</html>