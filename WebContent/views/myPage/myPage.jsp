<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>



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

<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">

<!-- Bootstrap core CSS -->
<link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
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

main {
   height: 800px;
}

.outer {
   height: 70%;
   margin: 5%;
}

.myInfo, .pointShop, .myLecList, .out {
   width: 30%;
   height: 30%;
   border: 1px solid black;
   border-radius: 10px;
   text-align: center;
   float: left;
   margin-left: 12%;
   margin-top: 3%;
   padding-top: 8%;
}

.myInfo:hover, .pointShop:hover, .myLecList:hover, .out:hover {
   cursor: pointer;
}
</style>
<!-- Custom styles for this template -->
<link href="resources/css/mainStyle.css" rel="stylesheet">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%@ include file="../common/menuBar.jsp"%>
   <main role="main">
   <div class="outer">

      <div class="myInfo" id="myInfo" onclick="showMyInfo();">
         <img src="<%=contextPath %>/resources/file/image/myinfo.png" width="20%" style="margin-top:-35%">
         <h3 style="margin-top:-5%">내 정보</h3>
      </div>
      <div class="pointShop" id="pointShop" onclick="showPointShop();">
         <img src="<%=contextPath %>/resources/file/image/shop2.png" width="20%" style="margin-top:-35%">   
         <h3 style="margin-top:-5%">포인트샵</h3>
      </div>
      <br>
      <br>
      <br>
      <div class="myLecList" id="myLecList" onclick="showMyLectList();">
         <img src="<%=contextPath %>/resources/file/image/mylist.png" width="20%" style="margin-top:-35%">
         <h3 style="margin-top:-5%">현재 수강 정보</h3>
      </div>
      <div class="out" id="out" onclick="showOut();">
         <img src="<%=contextPath %>/resources/file/image/logout.png" width="20%" style="margin-top:-35%">
         <h3 style="margin-top:-5%">회원 탈퇴</h3>
      </div>
   </div>
   <form method="post" action="<%=contextPath %>/MyLectList.us">
      <% if(loginUser != null) {%>
      <input type="hidden" name="userCode" value="<%=loginUser.getUserCode() %>">
      <% } %>
   </form>
   <script>
      function showMyInfo(){
         <% if(loginUser != null){ %>
            location.href="myInfo.jsp";
         <% }else{ %>
            location.href="<%=contextPath%>/views/loginPage/loginPage.jsp";
         <% } %>
      }
      function showPointShop(){
         <% if(loginUser != null){ %>
            location.href="<%=contextPath %>/productList.pro";
         <% }else{ %>
            location.href="<%=contextPath%>/views/loginPage/loginPage.jsp";
         <% } %>
         
      }
      function showMyLectList(){
         <% if(loginUser != null){ %>
            <%-- location.href="<%=contextPath %>/MyLectList.us"; --%>
            $("form").submit();
         <% }else{ %>
            location.href="<%=contextPath%>/views/loginPage/loginPage.jsp";
         <% } %>
      }
      function showOut(){
         <% if(loginUser != null){ %>
            location.href="out.jsp";
         <% }else{ %>
            location.href="<%=contextPath%>/views/loginPage/loginPage.jsp";
         <% } %>
      }
   </script> </main>

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