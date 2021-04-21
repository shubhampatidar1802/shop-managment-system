<%-- 
    Document   : purchaseList
    Created on : 20 Apr, 2021, 1:11:32 PM
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
            
            .btn-group{
                margin:40px;
            }
            .btn-group button {
              background-color: #4CAF50; /* Green background */
              border: 1px solid green; /* Green border */
              border-radius: 3px;
              color: white; /* White text */
              padding: 10px 20px; /* Some padding */
              cursor: pointer; /* Pointer/hand icon */
              float: left; /* Float the buttons side by side */
            
              /*margin-top: 120px;*/
              width: 150px;
              height:50px;
              font-size: 15px;
              font-weight: bold;
            }
            
            .btn-group:after {
              content: "";
              clear: both;
              display: table;
            }

            .btn-group button:not(:last-child) {
              border-right: none; /* Prevent double borders */
            }

            /* Add a background color on hover */
            .btn-group button:hover {
              color: rgb(255, 255, 255);
              background-color: #5a84e0;
              transform: scale(1.2);
            } 


           
            .myTable { background-color:#FFFFE0;border-collapse:collapse;color:#000;font-size:18px; }
            .myTable th { background-color:#BDB76B;color:white }
            .myTable td, .myTable th { padding:5px;border:0; }
            .myTable td { font-family:Georgia, Garamond, serif; border-bottom:1px dotted #BDB76B; }

        </style>
    </head>
    <body>
        <div class="btn-group">
                 <button onclick="window.location.href='home.jsp';">Home</button>
        </div>
        <div class="table">
                

            <h1>Purchase List</h1>
            <table class="myTable">
              <tr>
                <th>Pur_id</th>
                <th>Supllier's id</th>
                <th>Supplier Name</th>
                <th>Supplier Mobile</th>
                <th>Bill No.</th>
                <th>Amount</th>
                <th>Date</th>
                <th>Payment_status</th>
              </tr>
              

              
        <%  
                Connection con;
            
                java.sql.ResultSet rs;

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/store","root","");
                String query = "select * from purchase";
                Statement st = con.createStatement();

                rs =  st.executeQuery(query);

                while(rs.next())
                {
                   String id=rs.getString("pur_id");
              
              %>
              
              <tr>
                  <td><%=rs.getString("pur_id") %></td>
                  <td><%=rs.getString("sup_id") %></td>
                  <td><%=rs.getString("sup_Name") %></td>
                  <td><%=rs.getString("sup_mobile") %></td>
                  <td><%=rs.getString("pur_bill_no") %></td>
                  <td><%=rs.getString("pur_amount") %></td>
                  <td><%=rs.getString("pur_date") %></td>
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