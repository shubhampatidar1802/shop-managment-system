<%-- 
    Document   : product.jsp
    Created on : 19 Apr, 2021, 1:16:17 AM
    Author     : SHUBHAM
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.cj.xdevapi.Statement"%>

<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     
    if(request.getParameter("submit")!=null)
    {
        String pname=request.getParameter("pname");
        String brand=request.getParameter("brand");
        int price = Integer.parseInt(request.getParameter("price"));
        Connection con;
        PreparedStatement pst;
      
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/store","root","");   
        
        pst = con.prepareStatement("insert into product (pname,brand,price) values(?,?,?)");
//        pst.setString(1,pname);
        pst.setString(1,pname);
        pst.setString(2,brand);
        pst.setInt(3, price);        
            
        try{
          pst.executeUpdate(); 
    %>
            <script>
                alert("Racord ADDED Sucessfully");
            </script>   
    <%
        }catch(Exception e) {
    %>
          <script>   
              alert("Customer Mobile Number already registerd");           
          </script>
     <%
          }
     
       %>
       
    

<%    
  }
%>

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
             
             .form{
                 margin-left: 45px;
                 margin-top: 30px;
             }
           
/*            body{
                background-color: #ccc;
            }*/
            
            
            input[type=text], select {
            width: 40%; /* Full width */
            padding: 12px; /* Some padding */ 
            border: 1px solid black; /* Gray border */
            border-radius: 4px; /* Rounded borders */
            box-sizing: border-box; /* Make sure that padding and width stays in place */
            margin-top: 6px; /* Add a top margin */
            margin-bottom: 10px; /* Bottom margin */
            resize: vertical ; /* Allow the user to vertically resize the textarea (not horizontally) */
            background-color: white; 
          }
          input[type=number], select {
            width: 40%; /* Full width */
            padding: 12px; /* Some padding */ 
            border: 1px solid black; /* Gray border */
            border-radius: 4px; /* Rounded borders */
            box-sizing: border-box; /* Make sure that padding and width stays in place */
            margin-top: 6px; /* Add a top margin */
            margin-bottom: 10px; /* Bottom margin */
            resize: vertical ; /* Allow the user to vertically resize the textarea (not horizontally) */
            background-color: white; 
          }
            
            input[type=submit] {
            background-color: #4CAF50;
            color: white;
            height: 40px;
            width: 140px;
            font-size: 16px;
            
            padding: 8px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            }
            
            input[type=reset] {
            background-color: #4CAF50;
            color: white;
            height: 40px;
            width: 140px;
            font-size: 20px;
            padding: 8px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            }
            
            .lab{
                font-size: 20px;
                font-family: monospace;
                margin-left: 5px;
            }
            
            
            input[type=submit]:hover {
            background-color: #45a049;
             }
          
          h1{
              color: #0033cc
          }
          #product{
              margin-left: 40px;
          }
          optgroup { font-size:16px; }
          
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
              <h1> &nbsp; Add Product</h1><br>    
            <form id="product" method="post" action="#">    
                <label><b>Customer Mobile no.</b></label>    <br>
                <input type="text" name="pname" id="mobile" placeholder="Product name">    
                <br>  
                <label><b>Amount</b></label>   <br> 
                <input type="text" name="brand" id="brand" placeholder="Product brand">    
                <br>
                <label for="Payment_status"><b>Payment Status :</b></label><br>
                <input type="number" name="price" id="price" placeholder="Product price">    
                  
                <br><br>    
                
                <input type="submit" name="submit" id="submit" value="ADD Bill">       
                  
                    
            </form>     
       </div>    
    </body>    
</html>

