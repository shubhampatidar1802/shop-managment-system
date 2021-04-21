<%-- 
    Document   : salesList
    Created on : 20 Apr, 2021, 10:45:47 AM
    Author     : SHUBHAM
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color: #ccc;
            }
            table {
              font-family: arial, sans-serif;
              border-collapse: collapse;
              width: 100%;
            }
            td, th {
              border: 2px solid #dddddd;
              text-align: left;
              padding: 8px;
            }
            tr{
                background-color: white;
            }
            
           
            .myTable { background-color:#FFFFE0;border-collapse:collapse;color:#000;font-size:18px; }
            .myTable th { background-color:#BDB76B;color:white }
            .myTable td, .myTable th { padding:5px;border:0; }
            .myTable td { font-family:Georgia, Garamond, serif; border-bottom:1px dotted #BDB76B; }

        </style>
    </head>
    <body>
        <div class="table">
                

            <h1>Sales List</h1>
            <table class="myTable">
              <tr>
                <th>Cust_id</th>
                <th>Bill No.</th>
                <th>Customer name</th>
                <th>Amount</th>
                <th>Date</th>
                <th>Payment_status</th>
              </tr>
              

              
        <%  
                Connection con;
            
                java.sql.ResultSet rs;

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/store","root","");
                String query = "select * from sales";
                Statement st = con.createStatement();

                rs =  st.executeQuery(query);

                while(rs.next())
                {
                   String id=rs.getString("cus_id");
              
              %>
              
              <tr>
                  <td><%=rs.getString("cus_id") %></td>
                  <td><%=rs.getString("bill_no") %></td>
                  <td><%=rs.getString("cus_name") %></td>
                  <td><%=rs.getString("Amount") %></td>
                  <td><%=rs.getString("date") %></td>
                  <td><%=rs.getString("payment_status") %></td>
<!--                  <td> <a href="update.jsp?id=<%=id%>"> Edit </a> </td>
                  <td> <a href="delete.jsp?id=<%=id%>"> Delete </a></td>-->
              </tr>
              
              <%
                } 
              %>
              
            </table>
                
            </div>
    </body>
</html>