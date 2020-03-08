<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="user.model.vo.User"%>

<!--  메인 페이지 입니다. -->
<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap&subset=korean"
	rel="stylesheet">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.5">
<title>Carousel Template · Bootstrap</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/carousel/">

<!-- 필수 추가 -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- Bootstrap core CSS -->
<!-- <link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous"> -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

#searchAll {
margin-left:150px;
color:black;
}
</style>
<!-- Custom styles for this template -->
<link href="resources/css/mainStyle.css" rel="stylesheet">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../common/menuBar.jsp"%>
	<main role="main"> <br>

	<h2 id="searchAll">통합검색결과	 | </h2>


	
	<div class="container marketing">
		<div class="row" style="border: 1px solid black">
			<form class="form-inline mt-2 mt-md-0" id="Search">
				<input class="form-control mr-sm-2" type="text" placeholder="Search"
					aria-label="Search" style="margin-left: 400px">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
		<br>

		<h4>교실</h4>
		<table align="center" id="serachArea">
			<tr id="senter">
				<th width="100">글번호</th>
				<th width="100">카테고리</th>
				<th width="500" id="title">글제목</th>
				<th width="100">작성자</th>
				<th width="100">조회수</th>
				<th width="150">작성일</th>
			</tr>
			<tr id="searchListBoard">
		
						<td width="100">111</td>
						<td width="100">질문</td>
						<td width="500">영어 강의 어때요? </td>
						<td width="100">폴리둥둥 </td>
						<td width="100">2</td>
						<td width="150">2019-02-11</td>
					</tr>
		</table>
		<hr>

		<h4>쉬는시간</h4>
		<table align="center" id="serachArea">
			<tr id="senter">
				<th width="100">글번호</th>
				<th width="100">카테고리</th>
				<th width="500" id="title">글제목</th>
				<th width="100">작성자</th>
				<th width="100">조회수</th>
				<th width="150">작성일</th>
			</tr>
		</table>
		<hr>

		<h4>내 사물함</h4>
		<table align="center" id="serachArea">
			<tr id="senter">
				<th width="100">글번호</th>
				<th width="100">카테고리</th>
				<th width="500" id="title">글제목</th>
				<th width="100">작성자</th>
				<th width="100">조회수</th>
				<th width="150">작성일</th>
			</tr>
		</table>
		<hr>

		<h4>행정실</h4>
		<table align="center" id="serachArea">
			<tr id="senter">
				<th width="100">글번호</th>
				<th width="100">카테고리</th>
				<th width="500" id="title">글제목</th>
				<th width="100">작성자</th>
				<th width="100">조회수</th>
				<th width="150">작성일</th>
			</tr>
		</table>
		<hr>
	</main>
	<!-- FOOTER -->
	<div id="footer-wrapper">
		<div id="footer1"></div>
		<div id="footer2"></div>
		<div id="footer3">
			<a href="<%=contextPath %>/list.no?n_name=공지사항"> 공지사항 </a> <a href="<%=contextPath %>/list.no?n_name=문의내역"> 문의하기 </a> 
			<a href="https://open.kakao.com/o/s7Qic8Db">실시간 상담</a> <a href="<%=contextPath %>/list.no?n_name=qna"> 자주 찾는 질문 </a> <a href="<%=contextPath %>/views/customerPage/howToCome.jsp"> 찾아오시는 길 </a> 
			<a href="<%=contextPath %>/leclist.le"> 강의보기 </a> <a href="<%=contextPath %>/mainList.bo"> 커뮤니티 </a>
			<p>업체 및 기관 : 주식회사 에잇에듀 | 개인 : EIGHT.co</p>
			<p>Copyright ⓒ www.eightedu.com</p>
		</div>
		</div>
</body>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')
</script>
<script src="/docs/4.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o"
	crossorigin="anonymous"></script>
</html>