<%-- 
    Document   : validation
    Created on : 18 Apr, 2021, 11:44:35 PM
    Author     : SHUBHAM
--%>

<%@ page import ="java.sql.*" %>
<%
    try{
        String aid = request.getParameter("aid");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","");    
        PreparedStatement pst = conn.prepareStatement("Select admin_id,passward from admin where admin_id=? and passward=?");
        pst.setString(1,aid);
        pst.setString(2,password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
        {
           // out.println("Valid login credentials");        
           response.sendRedirect("home.jsp");  
        }
        
        else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>