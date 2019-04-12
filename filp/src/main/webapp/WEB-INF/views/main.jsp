<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800"
	rel="stylesheet">
<link rel="stylesheet" href="resources/fonts/icomoon/style.css">

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<link rel="stylesheet" href="resources/css/jquery-ui.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">

<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">

<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/rangeslider.css">

<link rel="stylesheet" href="resources/css/style.css">



</head>
<body>
	<div class="site-wrap">
		<div class="site-mobile-menu">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>

		<!-- header -->
		<jsp:include page="header.jsp" />
		<!-- header 종료 -->

		<div class="site-blocks-cover overlay"
			style="background-image: url('resources/images/제빵.png');"
			data-aos="fade" data-stellar-background-ratio="0.5">
			<div class="container">
				<div
					class="row align-items-center justify-content-center text-center">
					<div class="col-md-12">
						<div class="row justify-content-center mb-4">
							<div class="col-md-8 text-center">
								<h1 class="" data-aos="fade-up">
									지루한 일상을 뒤엎다!!<span class="text-warning">플</span><span
										class="text-primary">립</span>
								</h1>
								<p data-aos="fade-up" data-aos-delay="100">You can buy, sell
									anything you want.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section bg-light">
			<div class="container">
				<div class="overlap-category mb-5">
					<!-- 카테고리 시작 -->
					<div class="row align-items-stretch no-gutters">
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-1 col-lg-1">
							<a href="#" class="popular-category h-100">
							 <span class="icon">
							 	<span class="flaticon-meeting"></span>
							 </span>
							 <span class="caption mb-2 d-block"><b>인기수업</b></span> 
							 <span class="number">219</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="#" class="popular-category h-100"> <span
								class="icon"><span class="flaticon-running"></span></span> <span
								class="caption mb-2 d-block"><b>운동</b></span> <span
								class="number">3,921</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="#" class="popular-category h-100"> <span
								class="icon"><span class="flaticon-microphone"></span></span> <span
								class="caption mb-2 d-block"><b>음악</b></span> <span
								class="number">398</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="#" class="popular-category h-100"> <span
								class="icon"><span class="flaticon-cameras"></span></span> <span
								class="caption mb-2 d-block"><b>사진</b></span> <span
								class="number">1,229</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="#" class="popular-category h-100"> <span
								class="icon"><span class="flaticon-dance"></span></span> <span
								class="caption mb-2 d-block"><b>YOLO</b></span> <span
								class="number">32,891</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="#" class="popular-category h-100"> <span
								class="icon"><span class="flaticon-money"></span></span> <span
								class="caption mb-2 d-block"><b>재태크</b></span> <span
								class="number">29,221</span>
							</a>
						</div>


						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="#" class="popular-category h-100"> <span
								class="icon"><span class="flaticon-soap"></span></span> <span
								class="caption mb-2 d-block"><b>뷰티</b></span> <span
								class="number">32,891</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="#" class="popular-category h-100"> <span
								class="icon"><span class="flaticon-book"></span></span> <span
								class="caption mb-2 d-block"><b>외국어</b></span> <span
								class="number">29,221</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="#" class="popular-category h-100"> <span
								class="icon"><span class="flaticon-video-player"></span></span>
								<span class="caption mb-2 d-block"><b>영상편집</b></span> <span
								class="number">32,891</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="#" class="popular-category h-100"> <span
								class="icon"><span class="flaticon-airplane"></span></span> <span
								class="caption mb-2 d-block"><b>여행</b></span> <span
								class="number">29,221</span>
							</a>
						</div>


						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="#" class="popular-category h-100"> <span
								class="icon"><span class="flaticon-workstation"></span></span> <span
								class="caption mb-2 d-block"><b>IT</b></span> <span
								class="number">219</span>
							</a>
						</div>

						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="#" class="popular-category h-100"> <span
								class="icon"><span class="flaticon-presenter"></span></span> <span
								class="caption mb-2 d-block"><b>디자인</b></span> <span
								class="number">219</span>
							</a>
						</div>
					</div>
				</div>
				<!-- 카테고리 메뉴 종료 -->

				<!-- 선생님 찾기 세션 -->
				<div class="row mb-5">
					<div class="col-md-7 text-left border-primary">
						<h2 class="font-weight-light text-primary">
							<b>선생님<span class="text-warning">찾기</span></b>
						</h2>
						<p class="color-black-opacity-5">Find a tutor</p>
					</div>
				</div>

				<div class="row">
					<div class="col-12  block-13">
						<div class="owl-carousel nonloop-block-13">

							<!-- 선생님 찾기  -->
							<div class="d-block d-md-flex listing vertical">
								<a href="#" class="img d-block"
									style="background-image: url('resources/images/img_4.jpg')"></a>
								<div class="lh-content">
									<span class="category">Electronics</span> <a href="#"
										class="bookmark"><span class="icon-heart"></span></a>
									<h3>
										<a href="#">iPhone X gray</a>
									</h3>
									<address>Don St, Brooklyn, New York</address>
									<p class="mb-0">
										<span class="icon-star text-warning"></span> <span
											class="icon-star text-warning"></span> <span
											class="icon-star text-warning"></span> <span
											class="icon-star text-warning"></span> <span
											class="icon-star text-secondary"></span> <span class="review">(3
											Reviews)</span>
									</p>
								</div>
							</div>	
							
							<!-- 선생님 찾기 종료 -->			
						</div>
					</div>
				</div>
			</div>
		</div>





		<div class="site-section" data-aos="fade">
			<div class="container">

				<div class="row mb-5">
					<div class="col-md-7 text-left border-primary">
						<h2 class="font-weight-light text-primary">
							<b>학생<span class="text-warning">찾기</span>
						</h2>
						<p class="color-black-opacity-5">Find a student</p>

					</div>
				</div>

				<div class="row">
					<div class="col-12  block-13">
						<div class="owl-carousel nonloop-block-13">

							<div class="d-block d-md-flex listing vertical">
								<a href="#" class="img d-block"
									style="background-image: url('resources/images/img_1.jpg')"></a>
								<div class="lh-content">
									<span class="category">Cars &amp; Vehicles</span> <a href="#"
										class="bookmark"><span class="icon-heart"></span></a>
									<h3>
										<a href="#">Red Luxury Car</a>
									</h3>
									<address>Don St, Brooklyn, New York</address>
									<p class="mb-0">
										<span class="icon-star text-warning"></span> <span
											class="icon-star text-warning"></span> <span
											class="icon-star text-warning"></span> <span
											class="icon-star text-warning"></span> <span
											class="icon-star text-secondary"></span> <span class="review">(3
											Reviews)</span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="site-section bg-light">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-7 text-left border-primary">
					<h2 class="font-weight-light text-primary">
						<b>스터디<span class="text-warning">찾기</span>
					</h2>
					<p class="color-black-opacity-5">Find a student</p>

				</div>
			</div>

			<div class="row">
				<div class="col-12  block-13">
					<div class="owl-carousel nonloop-block-13">

						<div class="d-block d-md-flex listing vertical">
							<a href="#" class="img d-block"
								style="background-image: url('resources/images/img_1.jpg')"></a>
							<div class="lh-content">
								<span class="category">Cars &amp; Vehicles</span> <a href="#"
									class="bookmark"><span class="icon-heart"></span></a>
								<h3>
									<a href="#">Red Luxury Car</a>
								</h3>
								<address>Don St, Brooklyn, New York</address>
								<p class="mb-0">
									<span class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-warning"></span> <span
										class="icon-star text-secondary"></span> <span class="review">(3
										Reviews)</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="site-section bg-white">
		<!-- 배경색 인기 강사 세션 지정-->
		<div class="container">

			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						인기 <span class="text-warning">강사</span>
					</h2>
				</div>
			</div>

			<div class="slide-one-item home-slider owl-carousel">
				<div>
					<div class="testimonial">
						<figure class="mb-4">
							<img src="resources/images/강사1.jpg" alt="Image"
								class="img-fluid mb-3">
							<p>
								박성철<span class="text-warning">강사</span>
							</p>
						</figure>
						<blockquote>
							<p>&ldquo;어렵고 힘든 공부일수록 흥미가 있어야 해낼 수 있습니다.</p>
							<p>
								<span class="text-danger">'공부하는 봉숭아 학당을 만들자!'</span>
							</p>
							<p>가볍게 들릴 수도 있지만 즐거운 분위기의 강의를 위해 항상 마음속으로 상기시키는 말입니다. 정보 보안
								과정이 생소한 용어와 이론들을 배우고, 실제 네트워크 환경과 유사한 망을 구성하여 다양한 공격 기법과 방어 기법을
								익혀야 하는 복잡한 과정이기 때문에 '비유'와 '쉬운 예제'들을 통해 쉽게 이해하고 습득할 수 있도록 노력하고
								있습니다. 처음부터 잘 할 수 있는 일은 없습니다. 해커들도 처음부터 해킹을 잘하지는 않았을 것입니다. 부단한
								노력과 열정으로 해커라는 타이틀을 부여받았겠죠. 분야가 많아서, 내용이 어려울 것 같아서, IT에 대한 기본 지식이
								없어서... 등의 두려운 마음이 든다면 열정과 자신감으로 못할 일이 없다는 각오로 모두 떨쳐버리시기 바랍니다. 할
								수 있습니다!&rdquo;</p>
						</blockquote>
					</div>
				</div>
				<div>
					<div class="testimonial">
						<figure class="mb-4">
							<img src="resources/images/강사2.jpg" alt="Image"
								class="img-fluid mb-3">
							<p>
								노민수<span class="text-warning">강사</span>
							</p>
						</figure>
						<blockquote>
							<p>
								&ldquo;<span class="text-danger">포기하지 않으면 기회는 반드시 온다!</span>.&rdquo;
							</p>
							<p>가만히 있으면 기회는 오지 않습니다. 항상 자신감을 가지고 질문도 자신감 있게! 못해도 자신감 있게!
								안된다고 생각하는 순간 공부는 힘들어집니다. 불가능은 없다는 마음가짐으로 공부하세요. 포기하지 않으면 기회는 반드시
								옵니다</p>
						</blockquote>
					</div>
				</div>

				<div>
					<div class="testimonial">
						<figure class="mb-4">
							<img src="resources/images/강사3.jpg" alt="Image"
								class="img-fluid mb-3">
							<p>
								김무건<span class="text-warning">강사</span>
							</p>
						</figure>
						<blockquote>
							<p>&ldquo;현장에서 활발히 활동하고 있는 포토그래퍼 입니다. 로케이션 촬영 시 자체 장비 공수하여
								촬영된다는 점이 강점입니다. 뷰티/패션/포트레이트/푸드 분야의 사진 전문입니다.&rdquo;</p>
							<p>
								<span class="text-danger">1인 작업이 아닌 팀 작업도 가능하며, 팀 내부에
									디자이너 있습니다. (상세페이지 제작 가능)</span>
							</p>
						</blockquote>
					</div>
				</div>

				<div>
					<div class="testimonial">
						<figure class="mb-4">
							<img src="resources/images/강사4.jpg" alt="Image"
								class="img-fluid mb-3">
							<p>시옷</p>
						</figure>
						<blockquote>
							<p>
								&ldquo;취미, 입문자를 위한 음악 전반적인 레슨을 진행합니다.저는 '<span
									class="text-danger">시옷</span>' 이라는 이름으로 작곡가 겸 보컬로 활동 중입니다.
								음반작업을 개인이 작업한 경험이 있고, R&B, Soul 장르를 기반으로 보컬, 음악이론, 음악제작 프로그램, 믹싱
								등 음악작업에 필요한 전반적인 내용에 대해서 수업을 진행합니다! 간단한 송메이킹에서부터 음원유통까지의 필요한 과정을
								직접 해보면서 배우는 방향으로 수업을 준비하고 있습니다!&rdquo;
							</p>
						</blockquote>
					</div>
				</div>

			</div>
		</div>
	</div>



	<div class="site-section bg-light">
		<!-- 배경색 스터디 룸 세션 지정 -->
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						스터디 <span class="text-warning">룸</span>
					</h2>
					<p class="color-black-opacity-5">See Our Daily News &amp;
						Updates</p>
				</div>
			</div>
			<div class="row mb-3 align-items-stretch">
				<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
					<div class="h-entry">
						<img src="resources/images/스터디룸1.jpg" alt="Image"
							class="img-fluid rounded">
						<h2 class="font-size-regular">
							<a href="#" class="text-black">종로 더빅스터디</a>
						</h2>
						<div class="meta mb-3">
							평일<span class="mx-1">&bullet;</span> 09:00~21:45 <span
								class="mx-1">&bullet;</span> <a href="#">시간당/12,000원</a>
						</div>
						<p>위치는 종각역/ 종로3가역 을지로입구역/ 을지로3가역 딱 한 가운데 위치했네요 지하철 역에서 도보
							2-5분이면 도착하는 아늑한 스터디룸 이용해보세요.</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
					<div class="h-entry">
						<img src="resources/images/스터디룸2.jpg" alt="Image"
							class="img-fluid rounded">
						<h2 class="font-size-regular">
							<a href="#" class="text-black">전주 몬스터 스터디카페</a>
						</h2>
						<div class="meta mb-3">
							평일<span class="mx-1">&bullet;</span> 09:00~20:45 <span
								class="mx-1">&bullet;</span> <a href="#">시간당/13,000원</a>
						</div>
						<p>스터디벅스 전주 혁신도시점의 성공을 바탕으로 오픈한 전북대 지점으로, 집중이 잘되는 1인실과 편안한 카페형
							분위기의 두 곳을 교차 이용할 수 있는 프리미엄 독서실입니다.</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
					<div class="h-entry">
						<img src="resources/images/스터디룸3.JPG" alt="Image"
							class="img-fluid rounded">
						<h2 class="font-size-regular">
							<a href="#" class="text-black">웹진 스터디 룸</a>
						</h2>
						<div class="meta mb-3">
							평일<span class="mx-1">&bullet;</span> 09:00~20:45 <span
								class="mx-1">&bullet;</span> <a href="#">시간당/13,000원</a>
						</div>
						<p>4개의 스터디 룸이 있으며, 최대 8명까지 사용가능한 좌석이 마련되어 있고, 발표 모니터로 사용할 수 있는
							벽걸이 TV와 화이트 보드가 준비되어 있습니다. 스터디룸 이용은 사전예약(3관2층 안내데스크)을 통해 가능하며,
							최소3명에서 8명까지의 서강인들이 사용할 수 있습니다.</p>
					</div>
				</div>

				<div class="col-12 text-center mt-4">
					<!-- 예약버튼 -->
					<a href="#" class="btn btn-primary rounded py-2 px-4 text-white">예약하러
						가기</a>
				</div>
			</div>
		</div>
	</div>

	<!-- 광고 이미지 세션 -->
	<jsp:include page="advertisor.jsp" />
	<!-- 광고 이미지 세션 종료 -->

	<!-- footer 수정 해야함  -->
	<div>
		<jsp:include page="footer.jsp" />
	</div>

	<!-- footer종료 -->
	<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="resources/js/jquery-ui.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/jquery.countdown.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/bootstrap-datepicker.min.js"></script>
	<script src="resources/js/aos.js"></script>
	<script src="resources/js/rangeslider.min.js"></script>
	<script src="resources/js/main.js"></script>
	<script>
		
	</script>
<a href="tdetail.do?member_name=김일남">test강사1</a>
</body>
</html>