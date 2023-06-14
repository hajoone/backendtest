<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./js/navbar.js" defer></script>
    <link rel="stylesheet" href="./css/join.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="./css/nav.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <title>Join</title>
    <script src="https://kit.fontawesome.com/7aca531ae5.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
	
		
	<script>
	
	 function redirectToMain() {
	        window.location.href = "/main";
	    }
	 
    $(document).ready(function() {
        $('#userid').on('blur', function() {
            var username = $(this).val();
            if (!validateUsername(username)) {
                $(this).siblings('.failure-message').removeClass('hide');
            } else {
                $(this).siblings('.failure-message').addClass('hide');
            }
        });

        $('#password').on('blur', function() {
            var password = $(this).val();
            if (!validatePassword(password)) {
                $(this).siblings('.failure-message').removeClass('hide');
            } else {
                $(this).siblings('.failure-message').addClass('hide');
            }
        });

        $('#password-retype').on('blur', function() {
            var password = $('#password').val();
            var confirmPassword = $(this).val();
            if (password !== confirmPassword) {
                $(this).siblings('.failure-message').removeClass('hide');
            } else {
                $(this).siblings('.failure-message').addClass('hide');
            }
        });

        $('#phone').on('blur', function() {
            var phone = $(this).val();
            if (!validatePhone(phone)) {
                $(this).siblings('.failure-message').removeClass('hide');
            } else {
                $(this).siblings('.failure-message').addClass('hide');
            }
        });

        $('#email').on('blur', function() {
            var email = $(this).val();
            if (!validateEmail(email)) {
                $(this).siblings('.failure-message').removeClass('hide');
            } else {
                $(this).siblings('.failure-message').addClass('hide');
            }
        });

        $('#signUp').on('click', function(e) {
            e.preventDefault();
            if (validateForm()) {
              showSuccessPopup();
              setTimeout(function() {
                $('#joinForm').submit();
              }, 3000);
            } else {
              showErrorPopup();
            }
          });

        function validateForm() {
            var isValid = true;

            var username = $('#userid').val();
            if (!validateUsername(username)) {
                isValid = false;
                $('#userid').siblings('.failure-message').removeClass('hide');
            } else {
                $('#userid').siblings('.failure-message').addClass('hide');
            }

            var password = $('#password').val();
            if (!validatePassword(password)) {
                isValid = false;
                $('#password').siblings('.failure-message').removeClass('hide');
            } else {
                $('#password').siblings('.failure-message').addClass('hide');
            }

            var confirmPassword = $('#password-retype').val();
            if (password !== confirmPassword) {
                isValid = false;
                $('#password-retype').siblings('.failure-message').removeClass('hide');
            } else {
                $('#password-retype').siblings('.failure-message').addClass('hide');
            }

            var phone = $('#phone').val();
            if (!validatePhone(phone)) {
                isValid = false;
                $('#phone').siblings('.failure-message').removeClass('hide');
            } else {
                $('#phone').siblings('.failure-message').addClass('hide');
            }

            var email = $('#email').val();
            if (!validateEmail(email)) {
                isValid = false;
                $('#email').siblings('.failure-message').removeClass('hide');
            } else {
                $('#email').siblings('.failure-message').addClass('hide');
            }

            return isValid;
        }

        function validateUsername(username) {
            var regex = /^[a-zA-Z0-9]{4,11}$/;
            return regex.test(username);
        }

        function validatePassword(password) {
            var regex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,14}$/;
            return regex.test(password);
        }

        function validatePhone(phone) {
            var regex = /^010-\d{4}-\d{4}$/;
            return regex.test(phone);
        }

        function validateEmail(email) {
            var regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return regex.test(email);
        }
        
        
        function showSuccessPopup() {
        	  var popupHtml = `
        	    <div class="popup">
        	      <div class="popup-content">
        	        <div class="popup-message">환영합니다. Tripon의 여행자가 되셨습니다.</div>
        	        <button class="popup-button">확인</button>
        	      </div>
        	    </div>`;
        	  $('body').append(popupHtml);

        	  $('.popup-button').on('click', function() {
        	    $('.popup').remove();
        	    $('#joinForm').submit(); // 회원가입 폼 제출
        	    // 또는
        	    // location.href = "/login"; // 로그인 페이지로 이동
        	  });
        	}

        function showErrorPopup() {
            var popupHtml = `
            <div class="popup">
                <div class="popup-content">
                    <div class="popup-message">회원가입에 실패하였습니다. 양식을 다시 한 번 확인해 주세요.</div>
                    <button class="popup-button">확인</button>
                </div>
            </div>`;
            $('body').append(popupHtml);

            $('.popup-button').on('click', function() {
                $('.popup').remove();
            });
        }
    });
	</script>

		</head>
<body>

	<header>
		<nav class="head">
			<div class="logo">
			    <a href="#" onclick="redirectToMain()">
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

			<!-- <ul class="info">
				<li class="nickname"><a href="#">닉네임님</a></li>
				<a href="#"><li class="logout">로그아웃</li></a>
			</ul> -->
		</nav>
	</header>
  <div class="main-wrapper">
    <div class="body">
        <div class="bodylogo">
            <a href="main.jsp"><img src="img/logo-img2.png"></a>
        </div>

        <div class="text">환영합니다</div>

        <form action="/join" method="POST" id="joinForm">

            <div class="iddiv">
                 아이디<br>
                <input id="userid" placeholder="아이디" type="text" name="id" maxlength="20">
                <button id="btn_idcheck" class="id_check" type="button" onclick="checkDuplicateUsername()">중복확인</button>

                <div class="failure-message hide" style="color: #FF0000">4~11자 이내의 영문, 숫자만 사용 가능합니다.</div>
            </div>
            


            <div class="inputdiv">
                비밀번호<br>
                <input id="password" placeholder="비밀번호" type="password" name="password" maxlength="20">
                <div class="failure-message hide" style="color: #FF0000">8~14자 이내의 영문, 숫자, 특수문자가 포함되어야 합니다.</div>
            </div>


            <div class="inputdiv">
                비밀번호 확인<br>
                <input id="password-retype" placeholder="비밀번호 확인" type="password" name="passwordConfirmation" maxlength="20">
                <div class="failure-message hide" style="color: #FF0000">비밀번호가 일치하지 않습니다.</div>
            </div>

            <div class="inputdiv">
                이름<br>
                <input id="name" placeholder="이름" type="text" name="name" maxlength="15">
            </div>

            <div class="inputdiv">
                닉네임<br>
                <input id="nickname" placeholder="닉네임" type="text" name="nickname" maxlength="15">
            </div>

            <div class="inputdiv">
                휴대폰 번호<br>
                <input id="phone" placeholder="010-1234-5678" type="text" name="phone" maxlength="20">
                <div class="failure-message hide" style="color: #FF0000">올바른 휴대폰 번호 형식이 아닙니다.</div>
            </div>


            <div class="inputdiv">
                이메일<br>
                <input id="email" placeholder="name@example.com" type="text" name="email" maxlength="50">
                <div class="failure-message hide" style="color: #FF0000">유효한 이메일 주소를 입력해주세요.</div>
            </div>


            <div class="btn">
                <input type="submit" value="회원가입" id="signUp" class="btnLogin">
            </div>
        </form>
    </div>
</div>

    <footer>
        <div class="container_footer">
            <div class="logo_line">
                <span class="logo2"> <img src="./img/logo-img2.png" /></span>
            </div>

            <div class="menu_line">
                <ul class="menus">
                    <span>Menu</span>
                    <li><a href="board/notice-board">공지사항</a></li>
					<li><a href="board/local-information-board">국내여행</a></li>
					<li><a href="board/world-information-board">해외여행</a></li>
					<li><a href="board/free-board">커뮤니티</a></li>
                    <!-- 추가적인 메뉴 항목이 있다면 여기에 추가 -->
                </ul>
            </div>

            <div class="address_line">
                <ul class="address">
                    <span>Contact</span>
                    <li><p>대표번호 : 010-1234-5678</p></li>
                    <li><p>팩스 : 070-2345-6789</p></li>
                    <li><p>이메일 : info@tripon.com</p></li>
                </ul>
            </div>
        </div>

        <div class="copyright">
            <p>Copyright © TRIPON Inc. All Rights Reserved.</p>
        </div>
    </footer>
   
</body>
	
</html>