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
    <style type="text/css">
    	.movieForm{
			margin-top: 50px;
		}
    </style>
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

       <div calss="movieForm">
        <form action="movieInsert" method="POST" enctype="multipart/form-data">
		<table>
			<tr>
				<th>영화 이름</th>
				<td><input type="text" required name="movName"/></td>
			</tr>
			<tr>
				<th>영화 감독</th>
				<td><input type="text" required name="movDirector"/></td>
			</tr>
			<tr>
				<th>영화 장르</th>
				<td><input type="text" required name="movGenre"/></td>
			</tr>
			<tr>
				<th>관람등급</th>
				<td><input type="number" required name="movGrade"/></td>
			</tr>
			<tr>
				<th>개봉일</th>
				<td><input type="date" required name="movOpen"/></td>
			</tr>
			<tr>
				<th>포스터</th>
				<td><input type="file" required name="movPosterFile"/></td>
			</tr>
			<tr>
				<th>영화등록</th>
				<td><button type="submit">등록</button></td>
			</tr>
		</table>
	
	</form>
		</div>


    
    
    
    
    </content>


    <script src="resources/js/flex.js"></script>
    <script src="resources/js/logout.js"></script>
    <script src="resources/js/session.js"></script>
</body>

</html>