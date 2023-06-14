<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" href="../css/nav.css" />
<link rel="stylesheet" href="../css/footer.css" />
<title>Insert title here</title>
<script src="../js/navbar.js" defer></script>
<script src="../js/writePost.js"></script>
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
						<main>
							<div class="post-header-wrapper">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" onclick="history.back()">
              <path
										d="M16.67 0l2.83 2.829-9.339 9.175 9.339 9.167-2.83 2.829-12.17-11.996z" />
            </svg>
								<h1>트립온 게시글 작성</h1>
							</div>
							<form id="post-form" action="/board/write-post" method="post">
								<div class="category-title-wrapper">
									<div class="post-category">
										<label for="postCategory"></label> <select id="postCategory"
											name="board_id" placeholder="카테고리">
											<option value=1>국내-여행지정보</option>
											<option value=2>국내-항공/교통</option>
											<option value=3>국내-일행구하기</option>
											<option value=4>국내-여행후기</option>
											<option value=5>해외-여행지정보</option>
											<option value=6>해외-항공/교통</option>
											<option value=7>해외-일행구하기</option>
											<option value=8>해외-여행후기</option>
											<option value=9>커뮤니티-자유</option>
											<option value=10>커뮤니티-질문</option>
											<option value=11>공지사항</option>
											<option value=12>고객지원</option>
										</select>
										
									</div>
									<div class="form-group">
										<label for="postTitle"></label> <input type="text"
											placeholder="제목을 작성해 주세요" id="postTitle" name="title"
											required />
									</div>
								</div>
								<div class="date-wrapper">
									<div class="date-form">
										<label for="startDate">여행 기간</label> <input type="date"
											id="startDate" placeholder="떠난 날" name="travel_start"
											required />
									</div>
									<div class="hypen">-</div>
									<div class="date-form">
										<label for="endDate"></label> <input type="date" id="endDate"
											placeholder="돌아온 날" name="travel_end" required />
									</div>
								</div>
								<div class="form-group">
									<label for="editableDiv"></label>
									<textarea id="editableDiv" name="content"
										placeholder="이번 여행에 대한 정보를 공유해 주세요" required></textarea>
								</div>
								<div class="imgupload-submit-wrapper">
									<div class="post-image-wrapper">
										<label for="imageInput"><svg
												xmlns="http://www.w3.org/2000/svg" width="24" height="24"
												viewBox="0 0 24 24" style="margin: 0 12px 0 0">
                    <path
													d="M19 2c1.654 0 3 1.346 3 3v14c0 1.654-1.346 3-3 3h-14c-1.654 0-3-1.346-3-3v-14c0-1.654 1.346-3 3-3h14zm0-2h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-7 6c-3.313 0-6 2.687-6 6s2.687 6 6 6 6-2.687 6-6-2.687-6-6-6zm0 10c-2.206 0-4-1.794-4-4s1.794-4 4-4c2.205 0 4 1.794 4 4s-1.795 4-4 4zm7-10c-.553 0-1-.448-1-1s.447-1 1-1 1 .448 1 1-.447 1-1 1z" />
                  </svg>
											<div>사진 추가</div></label> <input type="file" id="imageInput"
											multiple="true" accept="image/*" name="image_path" hidden />
									</div>
									<button type="submit" id="submitButton">작성 완료</button>
								</div>
							</form>
						</main>
					</div>
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