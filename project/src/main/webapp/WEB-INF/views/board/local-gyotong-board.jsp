<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="../css/GenBoardStyle.css" />
<link rel="stylesheet" href="../css/nav.css" />
<link rel="stylesheet" href="../css/style.css" />
<link rel="stylesheet" href="../css/footer.css" />
<title>커뮤니티</title>
<script src="https://kit.fontawesome.com/7aca531ae5.js"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/83aa94ddcc.js"
	crossorigin="anonymous"></script>
<script src="../js/navbar.js" defer></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div
		style="display: flex; flex-direction: column; min-height: 100vh; min-width: 1750px;">
		<div class="containner_nav">
			<nav class="head">
				<div class="logo">
					<a href="main.html"> <img src="../img/logo-img2.png" />
					</a>
				</div>

				<ul class="menu">
					<li><a href="local-information-board" class="domestic">국내여행</a>
						<ul class="innerdomsestic">
							<li><a href="local-information-board">여행지정보</a></li>
							<li><a href="local-gyotong-board">항공/교통</a></li>
							<li><a href="local-friends-board">일행구하기</a></li>
							<li><a href="local-review-board">여행후기</a></li>
						</ul></li>
					<li><a href="world-information-board" class="overseas">해외여행</a>
						<ul class="inneroverseas">
							<li><a href="world-information-board">여행지정보</a></li>
							<li><a href="world-gyotong-board">항공/교통</a></li>
							<li><a href="world-friends-board">일행구하기</a></li>
							<li><a href="world-review-board">여행후기</a></li>
						</ul></li>
					<li><a href="free-board.html" class="questionfree">커뮤니티</a>
						<ul class="innerquestionfree">
							<li><a href="free-board">자유게시판</a></li>
							<li><a href="qna-board">질문게시판</a></li>
						</ul></li>
					<li><a href="notice-board" class="notice">공지사항</a>
						<ul class="innernotice">
							<li><a href="notice-board">공지사항</a></li>
							<li><a href="support-board">고객지원</a></li>
						</ul></li>
				</ul>

				<ul class="member">
					<a href="login"><li>로그인</li></a>
					<a href="join"><li>회원가입</li></a>
				</ul>

				<!-- <ul class="info">
				<li class="nickname"><a href="#">닉네임님</a></li>
				<a href="#"><li class="logout">로그아웃</li></a>
			</ul> -->
			</nav>
		</div>
		<!--! 사이드바 -->
		<div style="flex: 1 1 0%">
			<div style="margin-top: 25px; display: flex; justify-content: center">
				<section style="position: relative">
					<div class="main-wrapper">
						<div class="board_wrap">
							<div class="board-title-searchbar-wrapper">
								<div class="board_title">
									<strong>항공/교통</strong>
									<p>자유롭게 글을 작성해보세요!</p>
								</div>

								<div class="search-box">
									<input type="text" class="search-txt" name="" /> <a
										class="search-btn" href="search"> <img
										class="search-btn2" src="../img/search-btn2.png" />
									</a>
								</div>

							</div>
							<div class="board_list_wrap">
								<div class="board_list">
									<div class="top">
										<div class="num">번호</div>
										<div class="title">제목</div>
										<div class="writer">작성자</div>
										<div class="date">등록일</div>
										<div class="count">조회</div>
									</div>
									<c:forEach items="${freeboard }" var="dto">
										<div>
											<div class="num">${dto.post_id }</div>
											<div class="title">
												<a href="post-detail">${dto.title }</a>
											</div>
											<div class="writer">${dto.nickname }</div>
											<div class="date">${dto.created_date }</div>
											<div class="count">${dto.views }</div>
										</div>
									</c:forEach>
								</div>
								<div class="bt_wrap">
									<a href="/board/write-post" class="on">등록</a>
								</div>
								<div class="board-page-wrapper">
									<div class="board_page">
										<a href="#" class="bt first"><<</a> <a href="#"
											class="bt prev"><</a>
										<%
										int totalBoard = (Integer) request.getAttribute("totalBoard");
										int totalPage = 0;
										if (totalBoard % 10 == 0) {
											totalPage = totalBoard / 10;
										} else {
											totalPage = totalBoard / 10 + 1;
										}

										for (int i = 1; i <= totalPage; i++) {
										%>				
											<a class="num" href="/board/local-gyotong-board?page=<%=i%>"><%=i%></a>
										<%
										}
										%>
										<a href="#" class="bt next">></a> <a href="#" class="bt last">>></a>

									</div>
								</div>
							</div>
						</div>
					</div>
					<aside id="sub-menu"
						style="position: absolute; top: 295px; left: -180px; margin: 0">
						<h3>국내여행</h3>
						<h4>
							<a href="local-information-board">여행지정보</a>
						</h4>
						<h4>
							<a href="local-gyotong-board">항공/교통</a>
						</h4>
						<h4>
							<a href="local-friends-board">일행구하기</a>
						</h4>
						<h4>
							<a href="local-review-board">여행후기</a>
						</h4>

					</aside>
				</section>
			</div>
		</div>

		<footer>
			<div class="container_footer">
				<div class="logo_line">
					<span class="logo2"> <img src="../img/logo-img2.png" />
					</span>
				</div>

				<div class="menu_line">
					<ul class="menus">
						<span>Menu</span>
						<li><a href="notice-board">공지사항</a></li>
						<li><a href="local-information-board">국내여행</a></li>
						<li><a href="world-information-board">해외여행</a></li>
						<li><a href="free-board">커뮤니티</a></li>
					</ul>
				</div>

				<div class="address_line">
					<ul class="address">
						<span>Contact</span>
						<li>
							<p>대표번호 : 010-1234-5678</p>
						</li>
						<li>
							<p>팩스 : 070-2345-6789</p>
						</li>
						<li>
							<p>이메일 : info@tripon.com</p>
						</li>
					</ul>
				</div>
			</div>

			<div class="copyright">
				<p>Copyright © TRIPON Inc. All Rights Reserved.</p>
			</div>
		</footer>
	</div>
</body>
</html>