<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
	String Ctx = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
<script type="text/javascript" src="<%=Ctx%>/resources/js/jquery-3.1.1.min.js"></script>

<style>
	#brdtitle {
		max-width: 100px; 
		overflow: hidden; 
		white-space: nowrap; 
		text-overflow: ellipsis;
	}
</style>

<script>
	$(function(){
		$('#boardForm').click(function(){
			location.href='boardForm.ino';
		});
	});
	
	function fn_searchFormSubmit() {
		document.searchForm.submit();
	}
		
</script>
</head>
<body>
	
	<button type="button" id="boardForm">글쓰기</button>
	<table border="1" width="600px">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>이름</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="row" items="${listview }" varStatus="status">
			<c:url var="link" value="boardRead.ino">
				<c:param name="brdno" value="${row.brdno}" />
			</c:url>
			<tr>
				<td>
					<c:out value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
				</td>
				<td id="brdtitle">
					<a href="${link }">${row.brdtitle }</a>
				</td>
				<td>${row.brdwriter }</td>
				<td>
					<fmt:formatDate value="${row.brddate }" pattern="yyyy-MM-dd hh:MM"/>
				</td>
				<td>
					${row.brdcnt }
				</td>
			</tr>
		</c:forEach>
			
	</table>
	
	<c:if test="${searchVO.totPage>1 }">
		<div class="paging">
			<c:forEach var="i" begin="${searchVO.pageStart }" end="${searchVO.pageEnd }" step="1">
				<c:url var="pageLink" value="boardList.ino">
					<c:param name="page" value="${i }" />
				</c:url>
				<c:choose>
					<c:when test="${i eq searchVO.page }">
						<c:out value="${i }"/>
					</c:when>
					<c:otherwise>
						<a href="${pageLink }"><c:out value="${i }" /></a>	
					</c:otherwise>
				</c:choose>
				
			</c:forEach>
		</div>
	</c:if>
	
	<form id="searchForm" name="searchForm" method="post">
		<section>
			<div id="search_Container">
				<input type="checkbox" name="searchType" value="brdtitle" <c:if test="${fn:indexOf(searchVO.searchType, 'brdtitle')!=-1 }">checked="checked"</c:if> />
				<label for="searchType1" class="chkSearch">제목</label>
				<input type="checkbox" name="searchType" value="brdmemo" <c:if test="${fn:indexOf(searchVO.searchType, 'brdmemo')!=-1 }">checked="checked"></c:if> />
				<label for="searchType2" class="chkSearch">내용</label>
				<input type="text" name="searchKeyword" style="width:150px;" maxlength="50" value="<c:out value='${searchVO.searchKeyword }' />" onkeydown="if(event.keyCode == 13) {fn_searchFormSubmit();}" />
				<input type="button" name="btn_search" value="검색" class="btn_search" onclick="fn_searchFormSubmit();"/>
			</div>
		</section>
		
	</form>

</body>
</html>