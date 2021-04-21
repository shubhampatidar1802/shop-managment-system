<%-- 
    Document   : customerValidation
    Created on : 19 Apr, 2021, 3:38:22 PM
    Author     : SHUBHAM
--%>

<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.sql.*"  %>



<%
     
    if(request.getParameter("submit")!=null)
    {
        String name=request.getParameter("name");
        String number=request.getParameter("MobileNo");
        String address=request.getParameter("address");
        

        String sql="INSERT INTO customer (name,mobile_no,address) VALUES(?,?,?)";
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","");
        PreparedStatement ps;
        ps = con.prepareStatement(sql);
        
        
       // System.out.println(n+" ROW ADDED");
        ps.setString(1,name);
        ps.setString(2, number);
        ps.setString(3, address);
        Pattern p=Pattern.compile("^[7-9][0-9]{9}$");
        Matcher m=p.matcher(number);
        if(m.matches())
        {
        try{
          ps.executeUpdate(); 
          response.sendRedirect("customerList.jsp"); 
        
        }catch(Exception e) {
    %>
          <script>   
              alert("Customer Mobile Number already registerd");           
          </script>
     <%
          }
     
       }
       else
       {
     %>
          <script>   
              alert("Incorrect Mobile Number");           
          </script>
      <% 
        }
      %>
    

<%    
  }
%>
