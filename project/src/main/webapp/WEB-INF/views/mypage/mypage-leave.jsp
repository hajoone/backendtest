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
<link rel="stylesheet" href="./css/mypage-Board.css" />
<link rel="stylesheet" href="./css/nav.css" />
<link rel="stylesheet" href="./css/style.css" />
<link rel="stylesheet" href="./css/footer.css" />

<script src="https://kit.fontawesome.com/7aca531ae5.js"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/83aa94ddcc.js"
	crossorigin="anonymous"></script>
<script src="navbar.js" defer></script>

<style>
.top {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	margin-top: 20px;
	margin-bottom: 20px;
}

.top .mypage {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	margin-top: 20px;
	margin-bottom: 20px;
}

.top .mypage h3, .top .mypage button {
	margin-top: 10px;
	margin-bottom: 10px;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	border: none;
	border-radius: 3rem;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border-radius: 2rem;
	max-width: 400px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.modal-content>*:not(:last-child) {
	margin-bottom: 10px;
}

.modal-content h1 {
	margin-bottom: 10px;
}

.modal-content p {
	margin-bottom: 5px;
}

.modal-content input, .modal-content button {
	margin-bottom: 10px;
}

.modal-content .close {
	align-self: flex-end;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
	cursor: pointer;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.input-container {
	position: relative;
}

input {
	height: 48px;
	width: 280px;
	border: 1px solid #c0c0c0;
	border-radius: 4px;
	box-sizing: border-box;
	padding: 16px;
}

input:focus {
	outline: none;
	border: 2px solid blue;
}

input:focus+.label .text, :not(input[value=""])+.label .text {
	font-size: 12px;
	transform: translate(0, -150%);
	background-color: white;
	padding-left: 4px;
	padding-right: 4px;
}

input:focus+.label .text {
	color: blue;
}

.label {
	position: absolute;
	top: 0;
	bottom: 7px;
	left: 16px;
	display: flex;
	align-items: center;
}

.label .text {
	transition: all 0.15s ease-out;
}

.logo-modal img {
	width: 200px;
}

#withdrawButton {
	background-color: #0e52ea;
	color: white;
	font-size: 15px;
	padding: 10px 25px;
	border: none;
	border-radius: 3rem;
	cursor: pointer;
}

#confirmButton {
	background-color: #0e52ea;
	color: white;
	font-size: 17px;
	padding: 8px 19px;
	width: 100px;
	border: none;
	border-radius: 2rem;
	cursor: pointer;
}
</style>

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
									<strong>회원 탈퇴</strong>
								</div>

							</div>
							<div class="board_list_wrap">
								<div class="board_list">
									<div class="top">
										<div class="mypage">
											<h3>탈퇴하시면 그 동안의 모든 데이터가 사라집니다.</h3>
											<h3>정말로 Trip On을 떠나시겠습니까?</h3>
											<br>
											<button id="withdrawButton">탈퇴하기</button>
										</div>
									</div>
									<div>


										<div id="passwordModal" class="modal">
											<div class="modal-content">
												<span id="closeButton" class="close">&times;</span><br>
												<span class="logo-modal"> <img
													src="./img/logo-img2.png" />
												</span>

												<h1>탈퇴 확인</h1>
												<br>
												<p>Trip On을 떠나시겠습니까?</p>
												<p>탈퇴를 원하신다면 비밀번호를 입력해주세요.</p>
												<br>

												<div class="input-container">
													<input type="password" id="passwordInput"
														name="passwordInput" /> <label class="label"
														for="passwordInput" id="label-password">
														<div class="text">PASSWORD</div>
													</label>
												</div>
												<button id="confirmButton">확인</button>
												<br> <br>
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
						</div>
					</div>
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
	<script>
		document.getElementById("withdrawButton").addEventListener(
				"click",
				function(event) {
					event.preventDefault(); // 기본 이벤트 중지

					var passwordModal = document
							.getElementById("passwordModal");
					passwordModal.style.display = "block";
				});

		document.getElementById("closeButton").addEventListener(
				"click",
				function() {
					var passwordModal = document
							.getElementById("passwordModal");
					passwordModal.style.display = "none";
					document.getElementById("passwordInput").value = ""; // 입력 필드 비움
				});

		window.addEventListener("click", function(event) {
			var passwordModal = document.getElementById("passwordModal");
			if (event.target == passwordModal) {
				passwordModal.style.display = "none";
				document.getElementById("passwordInput").value = ""; // 입력 필드 비움
			}
		});

		document
				.getElementById("confirmButton")
				.addEventListener(
						"click",
						function() {
							var password = document
									.getElementById("passwordInput").value;

							// 비밀번호 확인 로직을 여기에 추가
							if (password === "asdf") {
								alert("회원 탈퇴가 완료되었습니다.");
								window.location.href = "main.html";
							} else {
								alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
								document.getElementById("passwordInput").value = ""; // 입력 필드 비움
							}
						});

		document
				.getElementById("passwordInput")
				.addEventListener(
						"keydown",
						function(event) {
							if (event.key === "Enter") {
								event.preventDefault(); // 기본 이벤트 중지

								var password = document
										.getElementById("passwordInput").value;

								// 비밀번호 확인 로직을 여기에 추가
								if (password === "asdf") {
									alert("회원 탈퇴가 완료되었습니다.");
									window.location.href = "main.html"; // main.html로 이동
								} else {
									alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
									document.getElementById("passwordInput").value = ""; // 입력 필드 비움
								}
							}
						});

		// 페이지 로딩 시 모달창은 숨겨놓음.
		window.addEventListener("DOMContentLoaded", function() {
			var passwordModal = document.getElementById("passwordModal");
			passwordModal.style.display = "none";
		});
	</script>



</body>

</html>