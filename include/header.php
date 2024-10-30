<!DOCTYPE html>
<html lang="">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="icon" type="image/png" href="images/favicon.png">

	<!-- StyleSheet -->
	<link rel="stylesheet" href="css/style-min.css">
	<link rel="stylesheet" href="css/custom.css">

	<title>Faith & Co.</title>
</head>

<body>
	<!-- Loader -->
	<div class="preloader">
		<div class="d-table">
			<div class="d-table-cell">
				<div class="lds-spinner">
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
				</div>
			</div>
		</div>
	</div>

	<!-- Header -->
	<header class="mainHeader">
		<!-- Menubar -->
		<nav class="navbar navbar-expand-lg">
			<div class="container">
				<a class="navbar-brand" href="#">
					<img src="images/logo.png" alt="">
				</a>
				<a class="navbar-toggler" data-bs-toggle="offcanvas" href="#navbarOffcanvas" role="button" aria-controls="navbarOffcanvas">
					<em class="icon-menu"></em>
				</a>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav mx-auto">
						<li class="nav-item">
							<a class="nav-link scroll active" href="#home">Home</a>
						</li>
						<li class="nav-item">
							<a class="nav-link scroll" href="#about">About Us</a>
						</li>
						<li class="nav-item">
							<a class="nav-link scroll" href="#service">Our Services</a>
						</li>
						<li class="nav-item">
							<a class="nav-link scroll" href="#testimonial">Testimonials</a>
						</li>
						<li class="nav-item">
							<a class="nav-link scroll" href="#contact">Contact Us</a>
						</li>
					</ul>
				</div>
				<div class="rightLink">
					<a href="tel:02085741700">
						<em class="icon-call"></em> 020 8574 1700
					</a>
				</div>
			</div>
		</nav>
	</header>

	<!-- Mobile Menu -->
	<div class="mobileSidebar offcanvas offcanvas-end" data-bs-backdrop="static" tabindex="-1" id="navbarOffcanvas">
		<div class="offcanvas-header">
			<a href="index.html" class="logo">
				<img src="images/logo.png" alt="">
			</a>
			<button type="button" class="closeBtn" data-bs-dismiss="offcanvas" aria-label="Close">
				<em class="icon-close"></em>
			</button>
		</div>
		<div class="offcanvas-body">
			<div class="accordion" id="navbarAccordion">
				<div class="accordion-item">
					<a class="accordion-button noIcon scroll active" href="#home">Home</a>
				</div>
				<div class="accordion-item">
					<a class="accordion-button noIcon scroll" href="#about">About Us</a>
				</div>
				<div class="accordion-item">
					<a class="accordion-button noIcon scroll" href="#service">Our Services</a>
				</div>
				<div class="accordion-item">
					<a class="accordion-button noIcon scroll" href="#testimonial">Testimonials</a>
				</div>
				<div class="accordion-item">
					<a class="accordion-button noIcon scroll" href="#contact">Contact Us</a>
				</div>
			</div>
			<div class="offcanvasBtn">
				<a href="tel:02085741700" class="btn btnPrimary">
					<em class="icon-call"></em> 020 8574 1700
				</a>
			</div>
		</div>
	</div>