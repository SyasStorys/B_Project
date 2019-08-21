<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	String Ctx = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 작성</title>

<script type="text/javascript" src="<%=Ctx%>/resources/js/jquery-3.1.1.min.js"></script>

<script>
    
    $(function(){
    	
    	$('#boardSave').click(function(){
    		
    		var brdno = $('#brdno').val();
        	var brdtitle = $('#brdtitle').val();
        	var brdwriter = $('#brdwriter').val();
        	var brdmemo = $('#brdmemo').val();
    		
    		if(brdtitle == null || brdtitle == ''){
    			alert('제목을 작성해 주세요.');
    			return;
    		}
    		if(brdwriter == null || brdwriter == ''){
    			alert('작성자를 작성해 주세요.');
    			return;
    		}
    		
    		if(brdmemo == null || brdmemo == ''){
    			alert('내용을 작성해 주세요.');
    			return;
    		}
    		
    		if(brdno == null || brdno == ''){
    			$.ajax({
        			url : 'boardSave.ino',
        			type : 'get',
        			data : {
        				brdtitle : brdtitle,
        				brdwriter : brdwriter,
        				brdmemo : brdmemo
        			},
        			success : function(data) {
        				alert('저장 하였습니다.');
        				location.href='boardList.ino';
        			},
        			error : function(error) {
        				alert('실패 하였습니다.');
        			}
        		});
    		}
    		else {
    			$.ajax({
        			url : 'boardSave.ino',
        			type : 'get',
        			data : {
        				brdno : brdno,
        				brdtitle : brdtitle,
        				brdwriter : brdwriter,
        				brdmemo : brdmemo
        			},
        			success : function(data) {
        				alert('저장 하였습니다.');
        				location.href='boardList.ino';
        			},
        			error : function(error) {
        				alert('실패 하였습니다.');
        			}
        		});
    		}
    		
    		
    		
    	});
    	
    	
    	$('#boardDelete').click(function(){
    		
    		var brdno = $('#brdno').val();
    		
    		$.ajax({
    			url : 'boardDelete.ino',
    			type : 'get',
    			data : {
    				brdno : brdno
    			},
    			success : function(data) {
    				alert('삭제 하였습니다.');
    				location.href='boardList.ino';
    			},
    			error : function(error) {
    				alert('실패 하였습니다.');
    			}
    		});
    	});
    });
    
</script>

</head>
<body>

	<h2>게시글 보기</h2>

	<div>        <!-- 원하는 날짜형식으로 출력하기 위해 fmt태그 사용 -->
       작성일자 : <fmt:formatDate value="${boardInfo.brddate}" pattern="yyyy-MM-dd hh:MM"/>
    </div>
    <div>
        조회수 : ${boardInfo.brdcnt }
    </div>
    <div>
        제목
        <input name="brdtitle" id="brdtitle" size="80" value="${boardInfo.brdtitle}" placeholder="제목을 입력해주세요">
    </div>
    <div>
        내용
        <textarea name="brdmemo" id="brdmemo" rows="4" cols="80" placeholder="내용을 입력해주세요" excapeXml="false">${boardInfo.brdmemo}</textarea>
    </div>
    <div>
        이름
        <input name="brdwriter" id="brdwriter" value="${boardInfo.brdwriter}" placeholder="이름을 입력해주세요">
    </div>
    <div style="width:650px; text-align: center;">
        <!-- 게시물번호를 hidden으로 처리 -->
        <input type="hidden" id="brdno" name="brdno" value="${boardInfo.brdno}">
       	<input type="button" id="boardSave" name="boardSave" value="저장 " />
        <input type="button" id="boardDelete" name="boardDelete" value="삭제 " />
    </div>

</body>
</html>