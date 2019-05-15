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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
<title>강의등록선택</title>
<style type="text/css">

body {
  padding: 0px;
  font-family: sans-serif;
  
}


/*  h2 {
  margin-bottom: .5em;
}  */
/*  .grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(400px, 1fr));
  grid-gap: 1em;
}  */


/* hover styles */
.location-listing {
  position: relative;
}

.location-image {
  line-height: 0;
  overflow: hidden;
}

.location-image img {
  filter: blur(0px);
  transition: filter 0.3s ease-in;
  transform: scale(1.1);
}

.location-title {
  font-size: 1.5em;
  font-weight: bold;
  text-decoration: none;
  z-index: 1;
  position: absolute;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  opacity: 0;
  transition: opacity .5s;
  background: rgba(105,105,105,0.4);
  color: white;
  
  /* position the text in t’ middle*/
  display: flex;
  align-items: center;
  justify-content: center;
}

.location-listing:hover .location-title {
  opacity: 1;
}

.location-listing:hover .location-image img {
  filter: blur(0px);
}


/* for touch screen devices */
@media (hover: none) { 
  .location-title {
    opacity: 1;
  }
  .location-image img {
    filter: blur(0px);
  }
}

</style>
</head>
<body>
<!-- header -->
<jsp:include page="header.jsp"/>
<!-- header 종료 -->
	
<div class="site-wrap">

<div class="site-mobile-menu">
<div class="site-mobile-menu-header">
<div class="site-mobile-menu-close mt-3">
<span class="icon-close2 js-menu-toggle"></span>
</div>
</div>
<div class="site-mobile-menu-body"></div>
</div>


<div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(resources/images/사진기.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
<div class="container">
<div class="row align-items-center justify-content-center text-center">

<div class="col-md-10" data-aos="fade-up" data-aos-delay="400">


<div class="row justify-content-center mt-5">
<div class="col-md-8 text-center">
<h1>일상을 뒤집다.플립</h1>
</div>
</div>

</div>
</div>
</div>
</div>
	<br>
				<br>
				<br>
			
				

			
			<div class="site-section bg-white">

			<div class="container" >
			
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						강의<span class="text-warning">등록</span>
					</h2>
					<p class="color-black-opacity-5">Lecture&amp;Registration</p>
				</div>
			</div>
			
			
				<div class="row mb-3 align-items-stretch">
	
				<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
				<article id="3685" class="location-listing">

					<a class="location-title" href="class_addform.do?classType=W"" style="border-radius: 5%; color: white; " >선생님 찾기 등록</a>

					<div class="location-image" style="border-radius: 5%;">
						<a href="class_addform.do?classType=W"> <img width="100%" height="auto"
							src="resources/images/run.jpg"
							alt="running">
						</a>

					</div>
					

				</article>
				</div>
				<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
				<article id="3688" class="location-listing">

					<a class="location-title" href="class_addform.do?classType=C" style="border-radius: 5%; color: white;">학생 찾기 등록</a>

					<div class="location-image" style="border-radius: 5%;">
						<a href="class_addform.do?classType=C"> <img width="100%" height="100%" 
							src="resources/images/dj.jpg"
							alt="dj">
						</a>

					</div>

				</article>
				</div>
				<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
				<article id="3691" class="location-listing">

					<a class="location-title" href="class_addform.do?classType=S" style="border-radius: 5%; color: white;">스터디 찾기 등록</a>

					<div class="location-image" style="border-radius: 5%;">
						<a href="class_addform.do?classType=S"> <img width="100%" height="100%" 
							src="resources/images/qes.jpeg"
							alt="study">
						</a>

					</div>

				</article>
				</div>
				</div>
				</div>
				
			</div>
				<br>
				<br>
				<br>
				<br>
				<br>
			
			
				
			

		</div>
		<div>
			<jsp:include page="footer.jsp" />
		</div>
	
	
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
	<script src="resources/js/signup.js"></script> 
	
</body>

</html>