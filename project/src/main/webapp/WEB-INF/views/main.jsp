<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="/css/nav.css">
<link rel="stylesheet" href="/css/cardlist.css" />
<link rel="stylesheet" href="/css/mainstyle.css">
<link rel="stylesheet" href="/css/footer.css">
<title>Trip On</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/7aca531ae5.js"
	crossorigin="anonymous">
	
</script>
<script src="https://kit.fontawesome.com/83aa94ddcc.js"
	crossorigin="anonymous"></script>
<script src="./js/navbar.js" defer></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<header>
		<nav class="head">
			<div class="logo">
				<a href="/"> <img src="img/logo-img2.png">
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


	<section>
		<div class="container">
			<div class="idx_top">
				<div class="main_top_title">현실이 되는 꿈의 여행 트립온!</div>
				<div class="main_top_sub">전세계 여행지에 대한 모든 정보를 나눠보세요.</div>
				<div class="search-box">
					<input type="text" class="search-txt" name=""
						placeholder="ex) 제주도 숙소 추천"> <a class="search-btn"
						href="search-all.html"> <img class='search-btn2'
						src="img/search-btn2.png">
					</a>
				</div>
			</div>

			<div class="idx_board_wrap">
				<div>
					<div class="idx_board">
						<div class="title">
							<a href="board/UpToDatePosts" class="name">최신글</a> <a
								href="board/UpToDatePosts" class="more"> <img
								src="img/more.png" alt="더 보기">
							</a>
						</div>
						<div class="list">
							<ul>
								<li><a href="board/UpToDatePosts"> <img
										src="img/number/num1.png">아름다운 해안, 매력적인 태양의 나라, 스페인
								</a> <span>2023-01-01</span></li>
								<li><a href="board/UpToDatePosts"> <img
										src="img/number/num2.png">5/20 디즈니랜드 한인택시 일행 구합니다!
								</a> <span>2023-01-01</span></li>
								<li><a href="board/UpToDatePosts"> <img
										src="img/number/num3.png">노르웨이 플롬 산악 열차 질문 있습니다.
								</a> <span>2023-01-01</span></li>
								<li><a href="board/UpToDatePosts"> <img
										src="img/number/num4.png">스위스 내복 챙겨가면 오바일까요?
								</a> <span>2023-01-01</span></li>
								<li><a href="board/UpToDatePosts"> <img
										src="img/number/num5.png">8월 18~21일 파리 남부 렌트 일행 하실분 !
								</a> <span>2023-01-01</span></li>
								<li><a href="board/UpToDatePosts"> <img
										src="img/number/num6.png">오로라 패키지.. 다시보러가고파요
								</a> <span>2023-01-01</span></li>
								<li><a href="board/UpToDatePosts"> <img
										src="img/number/num7.png">영국 입국심사 문의
								</a> <span>2023-01-01</span></li>
								<li><a href="board/UpToDatePosts"> <img
										src="img/number/num8.png">이탈리아 14박15일 일정 문의드립니다.
								</a> <span>2023-01-01</span></li>
							</ul>
						</div>
					</div>

					<div class="idx_board">
						<div class="title">
							<a href="board/PopulartPosts" class="name">인기글</a> <a
								href="board/PopulartPosts" class="more"> <img
								src="img/more.png" alt="더 보기">
							</a>
						</div>
						<div class="list">
							<ul>
								<li><a href="board/PopulartPosts"> <img
										src="img/number/num1.png">그린델발트 호텔 추천-Alpin Hotel Bort
								</a> <span>2023-01-01</span></li>
								<li><a href="board/PopulartPosts"> <img
										src="img/number/num2.png">에미레이트 부분 취소 후기
								</a> <span>2023-01-01</span></li>
								<li><a href="board/PopularPosts"> <img
										src="img/number/num3.png">파리 쇼핑 관련해서 질문드립니다.
								</a> <span>2023-01-01</span></li>
								<li><a href="board/PopulartPosts"> <img
										src="img/number/num4.png">파리 생테노레 거리서 소매치기 당함
								</a> <span>2023-01-01</span></li>
								<li><a href="board/PopulartPosts"> <img
										src="img/number/num5.png">[모로코]주차와 도로 주행시 유의 상황
								</a> <span>2023-01-01</span></li>
								<li><a href="board/PopulartPosts"> <img
										src="img/number/num6.png">노르웨이 페리
								</a> <span>2023-01-01</span></li>
								<li><a href="board/PopulartPosts"> <img
										src="img/number/num7.png">누워서 유럽여행 했습니다!
								</a> <span>2023-01-01</span></li>
								<li><a href="board/PopulartPosts"> <img
										src="img/number/num8.png">2만보 걸어도 편한 여행신발 르무통
								</a> <span>2023-01-01</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="card_wrap">
			<ul>
				<li class="trip_diary">
					<p>일행 구해요</p> <a href="board/local-friends-board">여행 일행 더 보러가기</a>
				</li>

				<li class="item item1"><a href="board/local-friends-board">
						<div class="party">
							<div class="lefthalf">일행 10명</div>
							<div class="righthalf">
								<div class="topright">여행 기간</div>
								<div class="bottomright">01-01 ~ 01-02</div>
							</div>
						</div>
						<div class="image">사진</div>
						<div class="cont">
							<strong>서울 여행!! 아니더라도 국내 여행 그냥 같이 가실분!! 저 날짜에</strong>
							<p>일행인원은 없구 서울로 급 여행 갈 예정입니다. 혹시 같이 가실 사람 있으면 연락 주세요!!! 혼자는
								너무 외로울것 같아서..</p>
						</div>
				</a></li>

				<li class="item item2"><a href="board/local-friends-board">
						<div class="party">
							<div class="lefthalf">일행 10명</div>
							<div class="righthalf">
								<div class="topright">여행 기간</div>
								<div class="bottomright">01-01 ~ 01-02</div>
							</div>
						</div>
						<div class="image">사진</div>
						<div class="cont">
							<strong>대구출발 서울 구경 같이 하실 분이요</strong>
							<p>서울 핫플 좀 돌아 볼 생각입니다. 경기도 지역도 지역도 함께요. 사업 구상 차 가는 거라 목적 비슷한
								분 있으시면 일행해요~일정은 더 늘어나도 됩니다.</p>
						</div>
				</a></li>

				<li class="item item3"><a href="board/local-friends-board">
						<div class="party">
							<div class="lefthalf">일행 10명</div>
							<div class="righthalf">
								<div class="topright">여행 기간</div>
								<div class="bottomright">01-01 ~ 01-02</div>
							</div>
						</div>
						<div class="image">사진</div>
						<div class="cont">
							<strong>2박3일 제주도 일행</strong>
							<p>맛집가서 맥주한잔하실분 모집합니다!</p>
						</div>
				</a></li>

				<li class="item item4"><a href="board/local-friends-board">
						<div class="party">
							<div class="lefthalf">일행 10명</div>
							<div class="righthalf">
								<div class="topright">여행 기간</div>
								<div class="bottomright">01-01 ~ 01-02</div>
							</div>
						</div>
						<div class="image">사진</div>
						<div class="cont">
							<strong>서울 여행 갈 지방분들 찾아요~</strong>
							<p>서울구경도 하고 맛집탐방, 사진찍고 노실 분 같이가요~</p>
						</div>
				</a></li>
			</ul>

			<ul>
				<li class="TravelBuddy">
					<p>여행 후기</p> <a href="board/world-review-board">여행 후기 더 보러가기</a>
				</li>

				<li class="item item5"><a href="board/world-review-board">
						<div class="party">
							<div class="lefthalf">후기</div>
							<div class="righthalf">
								<div class="topright">여행 기간</div>
								<div class="bottomright">01-01 ~ 01-02</div>
							</div>
						</div>
						<div class="image">사진</div>
						<div class="cont">
							<strong>느슨했던 가슴을 뛰게 만드는, 심폐소생술 여행 이탈리아/스위스</strong>
							<p>오르비에토는 높은 바위절벽위에 세워진 도시다. 자연경관도 정말 아름답고, 무엇보다 거리마다 느껴지는
								정취가 소박하면서 어여뻤다.</p>
						</div>
				</a></li>

				<li class="item item6"><a href="board/world-review-board">
						<div class="party">
							<div class="lefthalf">후기</div>
							<div class="righthalf">
								<div class="topright">여행 기간</div>
								<div class="bottomright">01-01 ~ 01-02</div>
							</div>
						</div>
						<div class="image">사진</div>
						<div class="cont">
							<strong>퇴사 후 부모님과 서유럽 3개국 12일 (23.04.13~04.24 )</strong>
							<p>처음과 끝 파리-에펠탑 3층+센 강 유람선 야간과 카프리섬 투어가 베스트 중에 베스트였습니다.</p>
						</div>
				</a></li>

				<li class="item item7"><a href="board/world-review-board">
						<div class="party">
							<div class="lefthalf">후기</div>
							<div class="righthalf">
								<div class="topright">여행 기간</div>
								<div class="bottomright">01-01 ~ 01-02</div>
							</div>
						</div>
						<div class="image">사진</div>
						<div class="cont">
							<strong> 튀르키예 홀릭</strong>
							<p>앙카라로 이동해 한국전쟁 파병 전사자를 추모하는 한국공원과 튀르키예 공화국을 세운 초대 대통령 아타투르크
								영묘를 둘러 보고, 스타워즈 촬영지인 으흘라라 계곡을 둘러 본 후, 지하도시 데린쿠유에 도착했다.</p>
						</div>
				</a></li>

				<li class="item item8"><a href="board/world-review-board">
						<div class="party">
							<div class="lefthalf">후기</div>
							<div class="righthalf">
								<div class="topright">여행 기간</div>
								<div class="bottomright">01-01 ~ 01-02</div>
							</div>
						</div>
						<div class="image">사진</div>
						<div class="cont">
							<strong>스위스 일주 적극 추천합니다!!</strong>
							<p>체르마트, 휘르스트, 융프라우, 겜미패스(토렌트 전망대로 올라감)으로 최소 4개의 전망대를 구경할 수
								있어서 매우 만족도가 높았습니다.</p>
						</div>
				</a></li>
			</ul>
		</div>
	</section>

	<footer>
		<div class="container_footer">
			<div class="logo_line">
				<span class="logo2"> <img src="./img/logo-img2.png">
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
</body>
</html>