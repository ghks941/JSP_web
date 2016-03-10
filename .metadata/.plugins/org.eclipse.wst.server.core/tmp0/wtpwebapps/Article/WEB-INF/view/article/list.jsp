<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/common/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 총 ${articles.paging.totalArticleCount} 건의 게시물이 있습니다.
<table border="2">
	<tr>
		<th>ARTICLE_ID</th>
		<th>TITLE</th>
		<th>NICK_NAME</th>
		<th>HITS</th>
		<th>RECOMMENDS</th>
	</tr>	

<c:forEach items="${ articles.articleList }" var="articles">
	<tr>
		<td>${ articles.articleId }</td>
		<td><a href="/detail?articleId=${articles.articleId }">${ articles.title }</td>
		<td>${ articles.nickName }</td>
		<td>${ articles.hits }</td>
		<td>${ articles.recommends }</td>
</tr>



</c:forEach>
<tr>
	<td colspan="5">
		<form id="searchForm">
		${articles.paging.getPagingList("pageNo","[@]","[이전]", "[다음]", "searchForm")}
		</form>
	</td>
</tr>
</table>

<a href="/write">글쓰기</a><br/>
<a href="/logout">로그아웃</a>


</br>

<jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
