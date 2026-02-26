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
		   out.println("<script>alert('OTP Match Successfull.......!!');</script>"); 
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
				        	<li class="nav-item active"><a href="DoctorHome.jsp" class="nav-link pl-0">Home</a></li>
				        	<li class="nav-item"><a href="PatientsAppointment.jsp" class="nav-link">Appointments</a></li>
				        	<li class="nav-item"><a href="#" class="nav-link">Scheduled</a></li>
				        	<li class="nav-item"><a href="ReadQR.jsp" class="nav-link">Patients Treatment</a></li>
				        	<li class="nav-item"><a href="#" class="nav-link">Abouts</a></li>
				        	<li class="nav-item"><a href="#" class="nav-link">Blog</a></li>
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
						<div class="col-lg-5 col-md-6 appointment-left">
							<br><h1>
								Servicing Hours
							</h1>
							
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
		            <h2 align="center" class="mb-2" style="font-size: 32px;">Patient Treatment Task</h2>
	       
	        <form action="Treatment" method="post">  
           <table align="center" border="10" cellpadding="10px" cellspacing="0px">
                  
              	<%		
              			String username=session.getAttribute("username").toString();
              			String id=session.getAttribute("id").toString();
						Connection con=DBConnection.getConnection();
						PreparedStatement ps=con.prepareStatement("select * from patient where id=?");
						ps.setString(1, id);
						ResultSet rs=ps.executeQuery();
						if(rs.next()) 
						{
				%>
					<tr align="center">
						<td colspan="1"><img src="ProfilePicture/<%=session.getAttribute("ppicture") %>" width="80px" height="80px" style="border-radius: 70%;"></td>
						<td colspan="3"><span style="font-size:20px; color: red">Mr./Ms. <b><%=rs.getString("pfname") %>&nbsp;<%=rs.getString("plname") %>'s</b> Health Treatment Task </span><br>
						<b>Smart Card No.: </b><%=session.getAttribute("SmartCardNo") %></td>
					</tr>
		            <tr align="center">
			            <th><b>CheckUp</b></th>
			            <th><b>n(%)</b></th>
			            <th><b>CheckUp</b></th>
			            <th><b>n(%)</b></th>
			        </tr>
			        <tr> 
			        	<td colspan="2"><b>Health Condition:</b></td>   
						<td colspan="2"><b>Pains:</b></td>
					</tr>
					 <tr> 
			        	<td><b>Good</b></td>   
						<td><input type="text" name="ha" style="width:100px;" required></td>
						<td><b>Good</b></td>   
						<td><input type="text" name="gaa" style="width:100px;" required></td>
					</tr>
					 <tr> 
			        	<td><b>Average</b></td>   
						<td><input type="text" name="hb" style="width:100px;" required></td>
						<td><b>Average</b></td>   
						<td><input type="text" name="gab" style="width:100px;" required></td>
					</tr>
					 <tr> 
			        	<td><b>Poor</b></td>   
						<td><input type="text" name="hc" style="width:100px;" required></td>
						<td><b>Poor</b></td>   
						<td><input type="text" name="gac" style="width:100px;" required></td>
					</tr>
					
					 <tr> 
			        	<th><b>Heart Condition:</b></th>   
						<th><b>n(%):</b></th>
			        	<th><b>Reason for last Visit:</b></th>   
						<th><b>n(%):</b></th>
					</tr>
					<tr>
						<td><b>Noncavitated caries</b></td>   
						<td><input type="text" name="dca" style="width:100px;" required></td>
						<td><b>Pain</b></td>   
						<td><input type="text" name="dva" style="width:100px;" required></td>
					</tr>
					<tr>
						<td><b>Cavitated caries</b></td>   
						<td><input type="text" name="dcb" style="width:100px;" required></td>
						<td><b>Tooth Decay</b></td>   
						<td><input type="text" name="dvb" style="width:100px;" required></td>
					</tr>
					<tr>
						<td><b>Missing teeth</b></td>   
						<td><input type="text" name="dcc" style="width:100px;" required></td>
						<td><b>Bleeding Gums, Mobile teeth</b></td>   
						<td><input type="text" name="dvc" style="width:100px;" required></td>
					</tr>
					<tr>
						<td><b>Stains</b></td>   
						<td><input type="text" name="dcd" style="width:100px;" required></td>
						<td><b>Malocclusion</b></td>   
						<td><input type="text" name="dvd" style="width:100px;" required></td>
					</tr>
					<tr>
						<td><b>Mobility</b></td>   
						<td><input type="text" name="dce" style="width:100px;" required></td>
						<td><b>Discolored teeth</b></td>   
						<td><input type="text" name="dve" style="width:100px;" required></td>
					</tr>
					<tr>
						<td><b>Grossly decayed indicated for extraction</b></td>   
						<td><input type="text" name="dcf" style="width:100px;" required></td>
						<td><b>Trauma</b></td>   
						<td><input type="text" name="dvf" style="width:100px;" required></td>
					</tr>
					<tr>
						<td><b>Nonvital tooth</b></td>   
						<td><input type="text" name="dcg" style="width:100px;" required></td>
						<td><b>Routine dental checkup</b></td>   
						<td><input type="text" name="dvg" style="width:100px;" required></td>
					</tr>
					<tr>
						<!-- <td><b>Submit</b></td>  -->  
						<td><b>Others</b></td>   
						<td><input type="text" name="others" style="width:100px;" required></td>
						<th colspan="2" align="center"><input class="input-rounded-button" type="submit" value="Submit" style="height: 30px;width: 80px;"/></th>
					</tr>	
            <%
				}
			%>
            </table>
            </form>	
            
            <button onclick="generate()">Generate PDF</button>
            <button target="blank" style="cursor: pointer" onclick="window.print();">Print</button>
            <button target="blank" style="cursor: pointer" onclick="jsPDF();">PDF</button>
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
								</ul>
								<a class="viewall-btn" href="#">View all Department</a>			
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