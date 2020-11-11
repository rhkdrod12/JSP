<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>res_ex02.jsp</title>

<!-- 디자인 문법을 적는 영역 -->
<style type="text/css"> /* type은 생략가능 */
	
	/* 
		. :  선택자, 태그의 class에 접근하는 문법
	
	*/

	.form-content{
		margin: 0 auto;
		width: 200px;
		
	}
	.form-group{
		text-align: center;
		width: 200px;
	}
	.form-control{
		width:100%;
		box-sizing: border-box;
	}
</style>

</head>
<body>
	<!-- 
		css를 지정하는 방법 3가지
		
		1.인라인시트	: tag안에다가 css문법을 직접 쓰는 것, style속성을 사용해 직접 작성
		2.내부스타일시트 	: 헤더에 css문법을 작성
		3.외부스타일시트	: 외부에서 css문법을 가져오는 방식
	
		# 내부스타일 시트
		내부스타일시트 태그에 class 속성을 이용해 이름을 부여
		Head 태그에서 css문법으로 디자인을 적용
	
	  -->
	
	<section>
		<div class="form-content">
			<form action="res_ex02_result.jsp" method="post" class="form-group">
				<span>로그인 폼</span>
				<input type="text" name="id" placeholder="아이디" class="form-control"><br>
				<input type="password" name="pw" placeholder="비밀번호" class="form-control"><br>
				<input type="submit" value="로그인" class="form-control">			
			</form>
		</div>
	</section>
	
</body>
</html>