<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.config.DBConnection"%> 
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
  
  <style>
		thead {color:green;}
		tbody {color:blue;}
		tfoot {color:red;}
		
		table, th, td {
		  border: 2px solid black;
		  height: 50px;
		  width: -1px;
		  padding: 10px;
		  text-align: center;
		}
		th {
		  background-color: #4C1110;
		  color: white;
		}
	</style>
  
  </head>
  <body>
  <%
	if(request.getParameter("verify")!=null){
		   out.println("<script>alert('OTP Match Successfull.....');</script>"); 
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
				        	<li class="nav-item active"><a href="PatientHome.jsp" class="nav-link pl-0">Home</a></li>
				        	<li class="nav-item"><a href="Profile.jsp" class="nav-link">Profile</a></li>
				        	<li class="nav-item"><a href="Appointment.jsp" class="nav-link">Appointment</a></li>
				        	<li class="nav-item"><a href="ProgressReport.jsp" class="nav-link">Progress Report</a></li>
				        	<li class="nav-item"><a href="Treatements.jsp" class="nav-link">Treatements</a></li>
				        	<li class="nav-item"><a href="PatientInsurancePlan.jsp" class="nav-link">Insurance Plan</a></li>
				            <li class="nav-item"><a href="index.jsp?logout" class="nav-link">Logout</a></li>
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
								We Care for Your Health	Every Moment		
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
				<div class="col-lg-12 col-md-12 appointment-right pt-60 pb-60">
	          
           <table align="center" border="10" cellpadding="10px" cellspacing="0px">
                  
              	<%		
		              	String username=session.getAttribute("username").toString();
						Connection con=DBConnection.getConnection();
						PreparedStatement ps=con.prepareStatement("select * from patient where username=?");
						ps.setString(1, username);
						ResultSet rs=ps.executeQuery();
						if(rs.next()) 
						{
				%>
					<tr align="center">
						<td><img src="ProfilePicture/<%=rs.getString("ppicture") %>" width="80px" height="80px" style="border-radius: 70%;"></td>
						<td colspan="3"><span style="font-size:20px; color: red">Mr./Ms. <b><%=rs.getString("pfname") %>&nbsp;<%=rs.getString("plname") %></b> Your Insurance Details</span></td>
					</tr>
		            <tr align="center">
		            <th><b>Smart Card No.</b></th>
						<td><%=rs.getString("SmartCardNo") %></td>
					<th><b>Name</b></th>	
						<td><%=rs.getString("pfname") %>&nbsp;<%=rs.getString("plname") %></td>
					</tr>
            <%
				}
					
		              	String SmartCardNo=session.getAttribute("SmartCardNo").toString();
						//Connection con=DBConnection.getConnection();
						PreparedStatement ps1=con.prepareStatement("select * from tblinsurance_details where SmartCardNo=?");
						ps1.setString(1, SmartCardNo);
						ResultSet rs1=ps1.executeQuery();
						if(rs1.next()) 
						{
				%>
				 	<tr align="center">
		            <th><b>Company Name</b></th>
						<td><%=rs1.getString("Company_Name") %></td>
					<th><b>Company Contact</b></th>	
						<td><%=rs1.getString("Contact") %></td>
					</tr>
					<tr align="center">
		            <th><b>Company Email</b></th>
						<td><%=rs1.getString("Email") %></td>
					<th><b>Policy No</b></th>	
						<td><%=rs1.getString("Policy_No") %></td>
					</tr>
					<tr align="center">
		            <th><b>Policy Name</b></th>
						<td><%=rs1.getString("Policy_Name") %></td>
					<th><b>Policy Tenue</b></th>	
						<td><%=rs1.getString("Policy_Tenue") %>Year</td>
					</tr>
					<tr align="center">
		            <th><b>Base Premium</b></th>
						<td><%=rs1.getString("Base_Premium") %></td>
					<th><b>Policy Amount</b></th>	
						<td><%=rs1.getString("Policy_Amount") %></td>
					</tr>
					<%} %>
            </table>	
		  </div>
			</div>
		</div>	
	</section><br>

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