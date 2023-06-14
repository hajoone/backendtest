<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="./js/navbar.js" defer></script>
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/nav.css">
<title>Login</title>
<script src="https://kit.fontawesome.com/7aca531ae5.js" crossorigin="anonymous"></script>
<script defer src="./js/login.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
</head>

<body>
	<header>
		<nav class="head">
			<div class="logo">
			    <a href="/">
			        <img src="img/logo-img2.png" alt="Logo">
			    </a>
			</div>

			<ul class="menu">
					<li><a href="board/local-information-board" class="domestic">국내여행</a>
						<ul class="innerdomsestic">
							<li><a href="board/local-information-board">여행지 정보</a></li>
							<li><a href="board/local-gyotong-board">항공/교통</a></li>
							<li><a href="board/local-friends-board">일행구하기</a></li>
							<li><a href="board/local-review-board">여행후기</a></li>
						</ul></li>
					<li><a href="board/world-information-board" class="overseas">해외여행</a>
						<ul class="inneroverseas">
							<li><a href="board/world-information-board">여행지정보</a></li>
							<li><a href="board/world-gyotong-board">항공/교통</a></li>
							<li><a href="board/world-friends-board">일행구하기</a></li>
							<li><a href="board/world-review-board">여행후기</a></li>
						</ul></li>
					<li><a href="board/free-board" class="questionfree">커뮤니티</a>
						<ul class="innerquestionfree">
							<li><a href="board/free-board">자유게시판</a></li>
							<li><a href="board/qna-board">질문게시판</a></li>
						</ul></li>
					<li><a href="board/notice-board" class="notice">공지사항</a>
						<ul class="innernotice">
							<li><a href="board/notice-board">공지사항</a></li>
							<li><a href="board/support-board">고객지원</a></li>
						</ul></li>
				</ul>

				<ul class="member">
					<a href="/login"><li>로그인</li></a>
					<a href="/join"><li>회원가입</li></a>
				</ul>

		</nav>
	</header>
	<div class="main-wrapper">
		<div class="body">
			<div class="bodylogo">
				<img src="img/logo-img2.png">
			</div>
			<div class="text">Enjoy your trip</div>
			<div class="loginform">
				아이디<br> <input type="text" placeholder="ID">
			</div>
			<div class="loginform">
				비밀번호<br> <input type="password" placeholder="Password">
			</div>
			<div class="btn">
			    <input type="submit" value="로그인" class="btn" id="loginButton">
			</div>


			<div class="inlinebox">
				<div class="search">
					<a href="#">아이디 및 비밀번호 찾기</a>
				</div>
				<div class="join">
					<a href="join">신규 회원가입</a>
				</div>
			</div>
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
					<li><a href="board/notice-board">공지사항</a></li>
					<li><a href="board/local-information-board">국내여행</a></li>
					<li><a href="board/world-information-board">해외여행</a></li>
					<li><a href="board/free-board">커뮤니티</a></li>
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
	
	<script>
    document.getElementById('loginButton').addEventListener('click', function() {
        var ID = document.querySelector('.loginform:nth-of-type(1) input').value;
        var password = document.querySelector('.loginform:nth-of-type(2) input').value;

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "/ajaxlogin", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    var response = xhr.responseText;
                    if (response === "login ok") {
                        // 로그인 성공
                        redirectToMain();
                    } else {
                        // 로그인 실패
                        alert("아이디 또는 비밀번호를 다시 확인해주세요.");
                        // 로그인에 실패했을 때 수행할 동작을 여기에 추가
                    }
                } else {
                    alert("오류 발생");
                    // 오류가 발생했을 때 수행할 동작을 여기에 추가
                }
            }
        };
        xhr.send("ID=" + ID + "&pw=" + password);
    });

    function redirectToMain() {
        window.location.href = "/main";
    }
</script>

</body>
</html>
