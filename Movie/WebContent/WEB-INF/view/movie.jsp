<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="/Movie/resource/js/jquery-1.12.1.js"></script>
<script type="text/javascript">


	// jquery event listner 등록 - 초기화
	// Selector
	// $("selector 대상").이벤트( 기능 );
	
	// alert는 창이 뜨는 것
	// console은 F12를 눌렀을 떄 console창에 정보가 뜬다.
	// console은 화면 진행에 방해받지 않고 정보를 띄울수 있다.
	
	// 이 jsp문서가 실행될 준비가 되었다면 function 을 실행시켜라
	$(document).ready( function() {
		/*alert("jquery를 실행할 준비가 되었습니다.");
		
		
		var windowHeight = $(window).height();
		var windowWidth = $(window).width();
		console.log("브라우저의 높이는" +windowHeight + "입니다.");
		console.log("브라우저의 너비는" +windowWidth + "입니다.");
		
		var documentHeight = $(document).height();
		var documentWidth = $(document).width();
		console.log("문서의 높이는" +documentHeight + "입니다.");
		console.log("문서의 너비는" +documentWidth + "입니다.");*/
		
		// id가 addNewActor인 dom을 클릭했을 떄
		$("#addNewActor").click( function() {
			console.log("배우 등록을 클릭했습니다.");
			//페이지 이동
			location.href = "/Movie/addNewActor";
		} );
		
		$("#addNewMovie").click( function() {
			console.log("영화 등록을 클릭했습니다.");
			location.href = "/Movie/addNewMovie";
		} );
		
		// 그냥 tag를 쓸땐 이름쓰면 됨
		/*$("td").click( function() { 
			//페이지 이동
			console.log( $(this).text() );
		});*/
		
		
		
	} );



</script>
</head>
<body>
<table border= "2">
	<tr>
		<th>MOVIE_ID</th>
		<th>TITLE</th>
		<th>RATE</th>
		<th>RUNNING_TIME</th>
		<th>OPEN_DATE</th>
		<th>GRADE_ID</th>
		<th>GRADE_TITLE</th>
	</tr>
	
<c:forEach items="${ allMovie }" var="movie">
	<tr>
		<td>${ movie.movieId }</td>
		<td>
			<a href="/Movie/detail?movieId=${movie.movieId }"> ${ movie.title } (${ movie.actorCount })
		</td>
		<td>${ movie.rate }</td>
		<td>${ movie.runningTime }</td>
		<td>${ movie.openDate }</td>
		<td>${ movie.gradeId }</td>
		<td>${ movie.gradeTitle }</td>
</tr>



</c:forEach>
</table>

<input type = "button" id="addNewActor" value= "배우 등록" />
<input type = "button" id="addNewMovie" value= "영화 등록" />

</body>
</html>