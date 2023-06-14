<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="./css/mypage-check-board.css" />
<link rel="stylesheet" href="./css/nav.css" />
<link rel="stylesheet" href="./css/style.css" />
<link rel="stylesheet" href="./css/footer.css" />

<script src="https://kit.fontawesome.com/7aca531ae5.js"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/83aa94ddcc.js"
	crossorigin="anonymous"></script>
<script src="navbar.js" defer></script>

<title>커뮤니티</title>
</head>
<body>
	<div
		style="display: flex; flex-direction: column; min-height: 100vh; min-width: 1750px;">
		<div class="containner_nav">
			<nav class="head">
				<div class="logo">
					<a href="main.html"> <img src="img/logo-img2.png" />
					</a>
				</div>

				<ul class="menu">
					<li><a href="local-information-board.html" class="domestic">국내여행</a>
						<ul class="innerdomsestic">
							<li><a href="local-information-board.html">여행지정보</a></li>
							<li><a href="local-gyotong-board.html">항공/교통</a></li>
							<li><a href="local-friends-board.html">일행구하기</a></li>
							<li><a href="local-review-board.html">여행후기</a></li>
						</ul></li>
					<li><a href="world-information-board.html" class="overseas">해외여행</a>
						<ul class="inneroverseas">
							<li><a href="world-information-board.html">여행지정보</a></li>
							<li><a href="world-gyotong-board.html">항공/교통</a></li>
							<li><a href="world-friends-board.html">일행구하기</a></li>
							<li><a href="world-review-board.html">여행후기</a></li>
						</ul></li>
					<li><a href="free-board.html" class="questionfree">커뮤니티</a>
						<ul class="innerquestionfree">
							<li><a href="free-board.html">자유게시판</a></li>
							<li><a href="qna-board.html">질문게시판</a></li>
						</ul></li>
					<li><a href="notice-board.html" class="notice">공지사항</a>
						<ul class="innernotice">
							<li><a href="notice-board.html">공지사항</a></li>
							<li><a href="support-board.html">고객지원</a></li>
						</ul></li>
				</ul>

				<ul class="member">
					<a href="login.html"><li>로그인</li></a>
					<a href="join.html"><li>회원가입</li></a>
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
									<strong>개인 정보 변경</strong>
								</div>

							</div>
							<div class="board_list_wrap">
								<div class="board_list">
									<div class="top">
										<div class="num1">
											<a href="mypage-checked.html">개인정보 변경</a>
										</div>
										<div style="color: #D5D5D5" class="num2">
											<a href="mypage-writing.html">작성글</a>
										</div>
										<div style="color: #D5D5D5" class="num3">
											<a href="mypage-reply.html">작성댓글</a>
										</div>

									</div>
									<div>
										<div></div>
										<div class="mypage">개인정보를 변경하실려면 비밀번호를 입력해주세요.</div>
										<div class="id">
											<input type="text" maxlength='11' id="username"
												placeholder=" 비밀번호를 입력해주세요">
										</div>
										<div class="btn">
											<a href="mypage-information-change.html"><input
												type="button" value=" 확인"></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<aside id="sub-menu"
						style="position: absolute; top: 295px; left: -180px; margin: 0">
						<h3>회원 정보</h3>
						<h4>
							<a href="mypage.html">회원 정보 변경</a>
						</h4>
						<h4>
							<a href="mypage-pw-change.html">비밀번호 변경</a>
						</h4>
						<h4>
							<a href="mypage-leave.html">회원 탈퇴</a>
						</h4>

					</aside>
				</section>
			</div>
		</div>
		<footer>
			<div class="container_footer">
				<div class="logo_line">
					<span class="logo2"> <img src="./img/logo-img2.png" />
					</span>
				</div>

				<div class="menu_line">
					<ul class="menus">
						<span>Menu</span>
						<li><a href="notice-board.html">공지사항</a></li>
						<li><a href="local-information-board.html">국내여행</a></li>
						<li><a href="world-information-board.html">해외여행</a></li>
						<li><a href="free-board.html">커뮤니티</a></li>
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