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
<link rel="stylesheet" href="../css/footer.css" />
<link rel="stylesheet" href="../css/nav.css" />
<link rel="stylesheet" href="../css/style.css" />
<title>게시글 상세</title>
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
						<div class="view_body_wrap">
							<div class="board_title">
								<h1>국내 여행</h1>
								<div class="back-to-board-wrapper" onclick="history.back()">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24">
                <path
											d="M16.67 0l2.83 2.829-9.339 9.175 9.339 9.167-2.83 2.829-12.17-11.996z" />
              </svg>
									<h1>정보/뉴스</h1>
								</div>
							</div>
							<main class="main">
								<div class="board_view_wrap">
									<div class="board_view">
										<div class="title">${detaildto.title}</div>
										<div class="info2">
											<div class="info2_left">
												<dl>
													<dt>여행 기간</dt>
													<dd>${detaildto.travel_start} ~ ${detaildto.travel_end}</dd>
												</dl>
											</div>

											<div class="info2_right">
												<dl>
													<dt>글쓴이</dt>
													<dd>${detaildto.nickname}</dd>
												</dl>

												<dl>
													<dt>작성일</dt>
													<dd>${detaildto.create_date}</dd>
												</dl>

												<dl>
													<dt>조회</dt>
													<dd>${detaildto.views}</dd>
												</dl>
											</div>
										</div>

										<div class="cont">
											${detaildto.content}
										</div>
									</div>
								</div>
								<div class="post-actions">
									<button class="editButton" id="editButton">
										<a href="edit-post.html">수정</a>
									</button>
									<button class="deleteButton" id="deleteButton">삭제</button>
									<button class="goBackButton" id="goBackButton">목록</button>
								</div>
							</main>

							<div class="Reply_div"></div>

							<div id="cmtPosition" aria-live="polite">
								<div class="comment_header_bar">
									<i class="far fa-comment-dots"> </i>
									<h3>댓글</h3>
								</div>
							</div>

							<ul class="fdb_lst_ul">
								<li id="first_cmt" class="first_cmt">
									<div class="cmt_line" id="cmt_line">
										<span class="cmt_nick">닉네임</span> <span class="cmt_date">2023-05-10
											05:41:33</span>
									</div>
									<div class="first_cmt_na">댓글이 생성되었습니다.</div>
								</li>
							</ul>

							<ul class="fdb_lst_ul">
								<li id="first_cmt" class="first_cmt">
									<div class="cmt_line" id="cmt_line">
										<span class="cmt_nick">가입자</span> <span class="cmt_date">2023-05-10
											06:21:10</span>
									</div>
									<div class="first_cmt_na">두번째 댓글이 생성되었습니다.</div>
								</li>
							</ul>

							<!-- 댓글리스트 -->
							<ul id="comment-list"></ul>

							<div class="cmt_write_input">
								<textarea class="cmt_textarea" id="comment-input"
									placeholder="이 곳에 댓글내용을 입력해주세요."
									style="width: 100%; height: 106px"></textarea>
							</div>

							<div class="post-actions">
								<button type="submit" id="submitButton">등록</button>
							</div>
						</div>
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

	<script>
      //목록 이동 이벤트
      document
        .getElementById('goBackButton')
        .addEventListener('click', function () {
          window.location.href = '/boards.html'; // 목록으로 이동하는 페이지 주소를 입력합니다.
        });

      // 수정 버튼 이벤트
      document
        .getElementById('editButton')
        .addEventListener('click', function () {
          window.location.href = 'edit-post.html';
        });

      // 삭제 버튼 이벤트
      document
        .getElementById('deleteButton')
        .addEventListener('click', function () {
          if (confirm('정말로 삭제하시겠습니까?')) {
            // 삭제 코드 입력
            alert('삭제되었습니다.');
          } else {
            // 취소할 때의 코드 입력
            alert('삭제가 취소되었습니다.');
          }
        });
      //댓글 등록 이벤트
      const commentInput = document.querySelector('#comment-input');
      const commentList = document.querySelector('#comment-list');
      const submitButton = document.querySelector('#submitButton');

      submitButton.addEventListener('click', (e) => {
        console.log(e);
        e.preventDefault(); // 폼 기본 동작 방지

        // 댓글 작성 시간
        const now = new Date();
        const hours = String(now.getHours()).padStart(2, '0');
        const minutes = String(now.getMinutes()).padStart(2, '0');
        const seconds = String(now.getSeconds()).padStart(2, '0');
        const time = `${now.getFullYear()}-${
          now.getMonth() + 1
        }-${now.getDate()} ${hours}:${minutes}:${seconds}`;

        // 새로운 댓글 생성
        const newComment = document.createElement('li');
        newComment.setAttribute('class', 'fdb_lst_ul');

        const cmtLineDiv = document.createElement('div');
        cmtLineDiv.setAttribute('class', 'cmt_line');

        const commentAuthorSpan = document.createElement('span');
        commentAuthorSpan.setAttribute('class', 'cmt_nick');
        const commentAuthor = document.createTextNode('작성자'); // 작성자 이름
        commentAuthorSpan.appendChild(commentAuthor);

        const commentTimeSpan = document.createElement('span');
        commentTimeSpan.setAttribute('class', 'cmt_date');
        const commentTime = document.createTextNode(time); // 작성 시간
        commentTimeSpan.appendChild(commentTime);

        cmtLineDiv.appendChild(commentAuthorSpan);
        cmtLineDiv.appendChild(commentTimeSpan);

        const commentTextDiv = document.createElement('div');
        commentTextDiv.setAttribute('class', 'first_cmt_na');
        commentTextDiv.setAttribute('style', 'white-space: pre-wrap;');
        const commentText = document.createTextNode(commentInput.value); // 댓글 내용
        commentTextDiv.appendChild(commentText);

        newComment.appendChild(cmtLineDiv);
        newComment.appendChild(commentTextDiv);

        // 새로운 댓글을 댓글 리스트의 마지막 자식으로 추가
        commentList.appendChild(newComment);

        // 댓글 입력 필드 초기화
        commentInput.value = '';
      });
    </script>
</body>
</html>