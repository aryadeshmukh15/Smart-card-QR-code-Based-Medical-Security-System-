<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="shortcut icon" href="img/fav.png">
		<meta name="author" content="colorlib">
		<meta name="description" content="">
		<meta name="keywords" content="">
		<meta charset="UTF-8">
		<title>Healthcare</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/jquery-ui.css">				
			<link rel="stylesheet" href="css/nice-select.css">							
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="css/owl.carousel.css">			
			<link rel="stylesheet" href="css/jquery-ui.css">			
			<link rel="stylesheet" href="css/main.css">
		</head>
		<body>	
		<%
			if(request.getParameter("logout")!=null)
			{
				session.invalidate();
				Thread.sleep(2000);
				out.println("<script>alert('Logout Successfully')</script>");
			}
		%>
    <header id="header">
	  		<div class="header-top">
	  			<div class="container">
			  		<div class="row align-items-center">
			  			<div class="col-lg-6 col-sm-6 col-4 header-top-left">
			  				<a href="tel:+9530123654896"><span class="lnr lnr-phone-handset"></span> <span class="text"><span class="text">+953 012 3654 896</span></span></a>
				  			<a href="mailto:support@colorlib.com"><span class="lnr lnr-envelope"></span> <span class="text"><span class="text">support@colorlib.com</span></span></a>			
			  			</div>
			  			<div class="col-lg-6 col-sm-6 col-8 header-top-right">
							<a href="#" class="primary-btn text-uppercase">Book Appointment</a>
			  			</div>
			  		</div>			  					
	  			</div>
			</div>
		    <div class="container main-menu">
		    	<div class="row align-items-center justify-content-between d-flex">
			      <div id="logo">
			        <a href="index.html"><img src="img/logo.png" alt="" title="" /></a>
			      </div>
			      
			     <nav id="nav-menu-container">
			        <ul class="nav-menu">
			        	<li class="nav-item active"><a href="index.jsp" class="nav-link pl-0">Home</a></li>
			        	<li class="nav-item"><a href="Patients.jsp" class="nav-link">Patient</a></li>
			        	<li class="nav-item"><a href="Doctor.jsp" class="nav-link">Doctor</a></li>
			        	<li class="nav-item"><a href="Hospital.jsp" class="nav-link">Hospital</a></li>
			        	<li class="nav-item"><a href="Insurance.jsp" class="nav-link">Insurance</a></li>
			        	<li class="nav-item"><a href="Pharmacy.jsp" class="nav-link">Pharmacy</a></li>
			        	<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
			        	<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
			            <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	       			</ul>
			      </nav>		    		
		    	</div>
		    </div>
		  </header>
		  
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>	
				<div class="container">
					<div class="row fullscreen d-flex align-items-center justify-content-center">
						<div class="banner-content col-lg-8 col-md-12">
							<h1>
								We Care for Your Health Every Moment		
							</h1>
							
							<a href="#" class="primary-btn text-uppercase">Get Started</a>
						</div>										
					</div>
				</div>					
			</section>
			<!-- End banner Area -->

			<!-- Start appointment Area -->
			<section class="appointment-area">			
				<div class="container">
					<div class="row justify-content-between align-items-center pb-120 appointment-wrap">
						<div class="col-lg-5 col-md-6 appointment-left">
							<h1>
								Servicing Hours
							</h1>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua.
							</p>
							<ul class="time-list">
								<li class="d-flex justify-content-between">
									<span>Monday-Friday</span>
									<span>08.00 am - 10.00 pm</span>
								</li>
								<li class="d-flex justify-content-between">
									<span>Saturday</span>
									<span>08.00 am - 10.00 pm</span>
								</li>
								<li class="d-flex justify-content-between">
									<span>Sunday</span>
									<span>08.00 am - 10.00 pm</span>
								</li>																
							</ul>
						</div>
						<div class="col-lg-6 col-md-6 appointment-right pt-60 pb-60">
							<form class="form-wrap" action="#">
								<h3 class="pb-20 text-center mb-30">Book an Appointment</h3>		
								<input type="text" class="form-control" name="name" placeholder="Patient Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Patient Name'" >
								<input type="text" class="form-control" name="phone" placeholder="Phone " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone'" >
								<input type="email" class="form-control" name="email" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'" >
								<input id="datepicker1" name="dop" class="dates form-control"  placeholder="Date of Birth" type="text">   
								<div class="form-select" id="service-select">
									<select>
										<option data-display="">Disease Type</option>
										<option value="1">Type One</option>
										<option value="2">Type Two</option>
										<option value="3">Type Three</option>
										<option value="4">Type Four</option>
									</select>
								</div>	
								<input id="datepicker2" class="dates form-control"  placeholder="appointment Date" type="text">  
								<textarea name="messege" class="" rows="5" placeholder="Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege'"></textarea> 
								<button class="primary-btn text-uppercase">Confirm Booking</button>
							</form>
						</div>
					</div>
				</div>	
			</section>
			
			<section class="offered-service-area section-gap">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-8 offered-left">
							<h1 class="text-white">Our Offered Services</h1>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua.
							</p>
							<div class="service-wrap row">
								<div class="col-lg-6 col-md-6">
									<div class="single-service">
										<div class="thumb">
											<img class="img-fluid" src="img/s1.jpg" alt="">		
										</div>
										<a href="#">
											<h4 class="text-white">Cardiac Treatment</h4>
										</a>	
										<p>
											inappropriate behavior Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
										</p>
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="single-service">
										<div class="thumb">
											<img class="img-fluid" src="img/s2.jpg" alt="">		
										</div>
										<a href="#">
											<h4 class="text-white">Routine Checkup</h4>
										</a>	
										<p>
											inappropriate behavior Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
										</p>
									</div>
								</div>								
							</div>
						</div>
						<div class="col-lg-4">
							<div class="offered-right relative">
								<div class="overlay overlay-bg"></div>
								<h3 class="relative text-white">Departments</h3>
								<ul class="relative dep-list">
									<li><a href="#">Pediatric Diagnosis</a></li>
									<li><a href="#">Outpatient Rehabilitation</a></li>
									<li><a href="#">Laryngological Functions</a></li>
									<li><a href="#">Ophthalmology Unit</a></li>
									<li><a href="#">Cardiac Unit</a></li>
									<li><a href="#">Outpatient Surgery</a></li>
									<li><a href="#">Gynaecological Wings</a></li>
								</ul>
								<a class="viewall-btn" href="#">View all Department</a>			
							</div>	
						</div>
					</div>
				</div>	
			</section>
			<!-- End offered-service Area -->
		
			<!-- Start team Area -->
		    <section class="team-area section-gap">
		        <div class="container">
		            <div class="row d-flex justify-content-center">
		                <div class="menu-content pb-70 col-lg-7">
		                    <div class="title text-center">
		                        <h1 class="mb-10">Our Consultants</h1>
		                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
		                    </div>
		                </div>
		            </div>
		            <div class="row justify-content-center d-flex align-items-center">
		                <div class="col-lg-3 col-md-6 single-team">
		                    <div class="thumb">
		                        <img class="img-fluid" src="img/t1.jpg" alt="">
		                        <div class="align-items-end justify-content-center d-flex">
									<div class="social-links">
										<a href="#"><i class="fa fa-facebook"></i></a>
										<a href="#"><i class="fa fa-twitter"></i></a>
										<a href="#"><i class="fa fa-dribbble"></i></a>
										<a href="#"><i class="fa fa-behance"></i></a>
									</div>			                        	
		                            <p>
		                            	inappropriate behavior
		                            </p>
		                            <h4>Andy Florence</h4>		                            
		                        </div>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-6 single-team">
		                    <div class="thumb">
		                        <img class="img-fluid" src="img/t2.jpg" alt="">
		                        <div class="align-items-end justify-content-center d-flex">
									<div class="social-links">
										<a href="#"><i class="fa fa-facebook"></i></a>
										<a href="#"><i class="fa fa-twitter"></i></a>
										<a href="#"><i class="fa fa-dribbble"></i></a>
										<a href="#"><i class="fa fa-behance"></i></a>
									</div>			                        	
		                            <p>
		                            	inappropriate behavior
		                            </p>
		                            <h4>Andy Florence</h4>		                            
		                        </div>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-6 single-team">
		                    <div class="thumb">
		                        <img class="img-fluid" src="img/t3.jpg" alt="">
		                        <div class="align-items-end justify-content-center d-flex">
									<div class="social-links">
										<a href="#"><i class="fa fa-facebook"></i></a>
										<a href="#"><i class="fa fa-twitter"></i></a>
										<a href="#"><i class="fa fa-dribbble"></i></a>
										<a href="#"><i class="fa fa-behance"></i></a>
									</div>			                        	
		                            <p>
		                            	inappropriate behavior
		                            </p>
		                            <h4>Andy Florence</h4>		                            
		                        </div>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-6 single-team">
		                    <div class="thumb">
		                        <img class="img-fluid" src="img/t4.jpg" alt="">
		                        <div class="align-items-end justify-content-center d-flex">
									<div class="social-links">
										<a href="#"><i class="fa fa-facebook"></i></a>
										<a href="#"><i class="fa fa-twitter"></i></a>
										<a href="#"><i class="fa fa-dribbble"></i></a>
										<a href="#"><i class="fa fa-behance"></i></a>
									</div>			                        	
		                            <p>
		                            	inappropriate behavior
		                            </p>
		                            <h4>Andy Florence</h4>		                            
		                        </div>
		                    </div>
		                </div>		                		                		                
		            </div>
		        </div>
		    </section>
		    <!-- End team Area -->				
						
			<!-- Start feedback Area -->
			<section class="feedback-area section-gap relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-md-12 pb-60 header-text text-center">
							<h1 class="mb-10 text-white">Enjoy our Client Feedback</h1>
							<p class="text-white">
								Who are in extremely love with eco friendly system..
							</p>
						</div>
					</div>			
					<div class="row feedback-contents justify-content-center align-items-center">
						<div class="col-lg-6 feedback-left relative d-flex justify-content-center align-items-center">
							<div class="overlay overlay-bg"></div>
							<a class="play-btn" href="https://www.youtube.com/watch?v=ARA0AxrnHdM"><img class="img-fluid" src="img/play-btn.png" alt=""></a>
						</div>
						<div class="col-lg-6 feedback-right">
							<div class="active-review-carusel">
								<div class="single-feedback-carusel">
									<img src="img/r1.png" alt="">
									<div class="title d-flex flex-row">
										<h4 class="text-white pb-10">Fannie Rowe</h4>
										<div class="star">
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>								
										</div>										
									</div>
									<p class="text-white">
										Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
									</p>
								</div>
								<div class="single-feedback-carusel">
									<img src="img/r1.png" alt="">
									<div class="title d-flex flex-row">
										<h4 class="text-white pb-10">Fannie Rowe</h4>
										<div class="star">
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star"></span>								
										</div>										
									</div>
									<p class="text-white">
										Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
									</p>
								</div>
								<div class="single-feedback-carusel">
									<img src="img/r1.png" alt="">
									<div class="title d-flex flex-row">
										<h4 class="text-white pb-10">Fannie Rowe</h4>
										<div class="star">
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked	"></span>								
										</div>										
									</div>
									<p class="text-white">
										Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
									</p>
								</div>																
							</div>
						</div>
					</div>
				</div>	
			</section>
		
		    <section class="brands-area">
		        <div class="container">
		            <div class="brand-wrap section-gap">
		                <div class="row align-items-center active-brand-carusel justify-content-start no-gutters">
		                    <div class="col single-brand">
		                        <a href="#"><img class="mx-auto" src="img/l1.png" alt=""></a>
		                    </div>
		                    <div class="col single-brand">
		                        <a href="#"><img class="mx-auto" src="img/l2.png" alt=""></a>
		                    </div>
		                    <div class="col single-brand">
		                        <a href="#"><img class="mx-auto" src="img/l3.png" alt=""></a>
		                    </div>
		                    <div class="col single-brand">
		                        <a href="#"><img class="mx-auto" src="img/l4.png" alt=""></a>
		                    </div>
		                    <div class="col single-brand">
		                        <a href="#"><img class="mx-auto" src="img/l5.png" alt=""></a>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </section>
		    
			<footer class="footer-area section-gap">
				
					<div class="row footer-bottom d-flex justify-content-between" align="center">
						<p class="col-lg-8 col-sm-12 footer-text m-0">
						Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#" target="_blank">Healthcare</a>
						</p>				
					</div>
			
			</footer>
			
			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="js/popper.min.js"></script>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
 			<script src="js/jquery-ui.js"></script>					
  			<script src="js/easing.min.js"></script>			
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>	
    		<script src="js/jquery.tabs.min.js"></script>						
			<script src="js/jquery.nice-select.min.js"></script>	
			<script src="js/owl.carousel.min.js"></script>									
			<script src="js/mail-script.js"></script>	
			<script src="js/main.js"></script>	
		</body>
	</html>