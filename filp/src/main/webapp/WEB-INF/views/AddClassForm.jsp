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
<title>Flip</title>
<style type="text/css">

body {
  padding: 20px;
  font-family: sans-serif;
  background: #f2f2f2;
}
/* img {
   width: 100%;  /* need to overwrite inline dimensions */
  height: auto;
} */
h2 {
  margin-bottom: .5em;
}
.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(400px, 1fr));
  grid-gap: 1em;
}


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
  background: rgba(90,0,10,0.4);
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
  filter: blur(2px);
}


/* for touch screen devices */
@media (hover: none) { 
  .location-title {
    opacity: 1;
  }
  .location-image img {
    filter: blur(2px);
  }
}

</style>
</head>
<body>
	<div class="site-wrap bg-light">

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
		
		<div class="container">
			<div
				class="row align-items-center justify-content-center text-center">
				<div class="col-md-12">
					<div class="row justify-content-center mb-4">
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
					</div>
				</div>
			</div>
		</div>


	

		<div class="child-page-listing ">

			<h2>Our Locations</h2>
			
			<div class="grid-container ">

				<article id="3685" class="location-listing">

					<a class="location-title" href="#"> San Francisco </a>

					<div class="location-image">
						<a href="#"> <img width="400" height="269"
							src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/san-fransisco-768x432.jpg"
							alt="san francisco">
						</a>

					</div>

				</article>

				<article id="3688" class="location-listing">

					<a class="location-title" href="#"> London </a>

					<div class="location-image">
						<a href="#"> <img width="400" height="269" 
							src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/london-768x432.jpg"
							alt="london">
						</a>

					</div>

				</article>

				<article id="3691" class="location-listing">

					<a class="location-title" href="#"> New York </a>

					<div class="location-image">
						<a href="#"> <img width="400" height="269"
							src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/new-york-768x432.jpg"
							alt="new york">
						</a>

					</div>

				</article>

				
				</div>
			</div>


		
		<div>
			<jsp:include page="footer.jsp" />
		</div>
	</div>
</body>

</html>