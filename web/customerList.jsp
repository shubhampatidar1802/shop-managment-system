<%-- 
    Document   : customerList
    Created on : 19 Apr, 2021, 3:52:16 PM
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
                
              /*navlist  content*/
            *{
                  margin: 0;
                  padding: 0;
                  background-color: #ffbaaa;
                  font-family: Arial, Helvetica, sans-serif;

               }



            body {
              font-family: "Lato", sans-serif;
             
            }

            .sidenav {
              height: 100%;
              width: 200px;
              position: fixed;
              z-index: 1;
              top: 0;
              left: 0;
              background-color: #6abadeba;
              overflow-x: hidden;
              padding-top: 20px;
            }

            .sidenav a {
              padding: 6px 8px 6px 16px;
              margin-bottom: 10px;
              text-decoration: none;
              font-size: 18px;
              color: #1C2833;
              background-color: #F1948A;
              border: 2px solid #CCD1D1;
              display: block;
              text-align: center;
            }
            .sidenav img{
                height: 100px;
                width:200px;
                margin-top: 10px;
                margin-bottom: 15px;
/*                size: inherit;
                border:1px solid rgba(0, 0, 0, .5);
                justify-content: space-between;*/
            }

            .sidenav a:hover {
              color: #fff;
              transform: scale(1.2);
              background-color: #5D6D7E ;
              
            }
            
            
            /*navlist  content*/
            
            .main{
              padding-top: 0;
              margin-left: 180px; /* Same as the width of the sidenav */
              font-size: 20px; /* Increased text to enable scrolling */
              padding: 0px 10px;
              margin-top: 0px;
              /*width: 100vw;*/
              /* background-color: gray; */
              background-color: #ffbaaa;

            }
            
             .main h1{

                margin-top: 0px;
                color: #1C2833 ;
                background-color: #BDB76B;
                padding: 20px;
                 margin-left: 0px; 
                font-family: 'Zen Dots', cursive;
             }
               
                
            table {
              font-family: arial, sans-serif;
              border-collapse: collapse;
              width: 100%;
             }
                        
            td, th {
              border: 2px solid black;
              text-align: left;
              padding: 8px;
            }
            tr{
                background-color: white;
            }
            body{
                background-color: #ccc;
            }
                       
            .myTable { 
                background-color:#FFFFE0;
                border-collapse:collapse;
                color:#000;
                font-size:18px;
                margin-left: 20px;
                margin-top: 20px;
            }
            .myTable th { 
                background-color:#5D6D7E;
                color:whitesmoke; 
            }
            .myTable td, .myTable th {
                padding:5px;
                border:0;
            }
            .myTable th,.myTable td,.myTable tr{
                border:1px solid white;
            }
            .myTable td { 
                font-family:Georgia, Garamond, serif; 
                border-bottom:1px dotted #BDB76B; 
            }

        </style>
    </head>
    <body>
        
        
        <div class="sidenav">
            <img src="img/Screenshot (293).png" alt="Shop Logo">
            <a href="home.jsp">Dashboard</a>
            <a href="newCustomer.jsp">New Customer</a>
            <a href="sales.jsp">Add Sales</a>
            <a href="product.jsp">Add Product</a>
            <a href="supplier.jsp">Add Supplier</a>
            <a href="purchase.jsp">Add Purchase</a>
            <a href="customerList.jsp">Customer List</a>
            <a href="purchaseList.jsp">Puchase List</a>
        </div>        

        <div class="main">
            <h1> &nbsp; Customer List</h1>
            <table class="myTable">
              <tr>
                <th>Customer Name</th>
                <th>Contact N0.</th>
                <th>Address</th>
                <th>Edit</th>
                <th>Delete</th>
              </tr>
              

              
        <%  
                Connection con;
            
                java.sql.ResultSet rs;

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/store","root","");
                String query = "select * from customer";
                Statement st = con.createStatement();

                rs =  st.executeQuery(query);

                  while(rs.next())
                   {
                       String id=rs.getString("id");
              
              %>
              
              <tr>
                  <td><%=rs.getString("name") %></td>
                  <td><%=rs.getString("mobile_no") %></td>
                  <td><%=rs.getString("address") %></td>
                  <td> <a href="updateCustomer.jsp?id=<%=id%>"> Edit </a> </td>
                  <td> <a href="delete.jsp?id=<%=id%>"> Delete </a></td>
              </tr>
              
              <%
                } 
              %>
              
            </table>
                
            </div>
    </body>
</html>
