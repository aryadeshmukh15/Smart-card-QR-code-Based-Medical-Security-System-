package com.dental;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;

import com.config.DBConnection;



@WebServlet("/InsuranceInfo")
public class InsuranceInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
	    public InsuranceInfo() {
	        super();
	    }

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			 
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter pw=response.getWriter();
						
				String SmartCardNo=request.getParameter("SmartCardNo");
				String Company_Name=request.getParameter("txtcompany");
				String Contact=request.getParameter("txtmobile");
				String Email=request.getParameter("txtemail");
				//String Address=request.getParameter("txtaddress");
				String Policy_No=request.getParameter("txtpolicyno");
				String Policy_Name=request.getParameter("txtpolicename");
				String Policy_Tenue=request.getParameter("txtpolicytenue");
				String Base_Premium=request.getParameter("txtbasepremium");
				String Coverage_Info=request.getParameter("txtCoverage");
				String Policy_Amount=request.getParameter("txtamount");
				
				PreparedStatement p1;
				//Connection con = null;
				try {
					Connection con = DBConnection.getConnection();
					PreparedStatement ps1 = con.prepareStatement("select * from tblInsurance_Details where SmartCardNo=?");
					ps1.setString(1, SmartCardNo);
					ResultSet rs = ps1.executeQuery();
					if(!rs.next())
					{
			
				String sql="insert into tblInsurance_Details(SmartCardNo,Company_Name,Contact,Email,Policy_No,Policy_Name,Policy_Tenue,Base_Premium,Coverage_Info,Policy_Amount) values(?,?,?,?,?,?,?,?,?,?)";   
				p1=(PreparedStatement) con.prepareStatement(sql);
				p1.setString(1,SmartCardNo);
				p1.setString(2,Company_Name);
				p1.setString(3,Contact);
				p1.setString(4,Email);
				
				p1.setString(5,Policy_No);
				p1.setString(6,Policy_Name);
				p1.setString(7,Policy_Tenue);
				p1.setString(8,Base_Premium);
				p1.setString(9,Coverage_Info);
				p1.setString(10,Policy_Amount);
				p1.executeUpdate();
			
				pw.println("<script> alert('Save Successfully');</script>");
				response.sendRedirect("InsurancePlan.jsp?Save");
				}
				else
				{
					response.sendRedirect("InsurancePlan.jsp?present");
				}
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		}
				
			/*}catch (SQLException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('Save Successfully');</script>");
			//RequestDispatcher rd = request.getRequestDispatcher("/InsuranceHomePage.jsp");
			//rd.include(request, response); 
			response.sendRedirect("InsurancePlan.jsp?Save");
				}
	}
*/