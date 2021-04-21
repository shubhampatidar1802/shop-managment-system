<%-- 
    Document   : newCustomer
    Created on : 19 Apr, 2021, 1:10:42 AM
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
             
             .form{
                 margin-left: 45px;
                 margin-top: 30px;
             }
           
            body{
                background-color: #ccc;
            }
            table {
              font-family: arial, sans-serif;
              border-collapse: collapse;
              width: 100%;
            }
            
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
            
            input[type=submit] {
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
        <h1> &nbsp;  Customer Registration Form </h1>
        <div class="page1"> 
            <div class="form">
                <form class="card" method="POST" action="customerValidation.jsp">
                  <label for="Cname" class="lab">Customer Name:</label><br>
                  <input type="text" id="name" name="name" value=""><br>
                  <label for="con_no" class="lab">Mobile No :</label><br>
                  <input type="text" id="mobileNo" name="MobileNo" value=""><br>
                  <label for="address" class="lab">Address :</label><br>
                  <input type="text" id="address" name="address" value="">
                  <br><br>
                  <input type="submit" id="submit" value="submit" name="submit">&nbsp;&nbsp;
                  <input type="reset" value="Reset">
                </form> 
            </div>
            
           
      </div>  <!--page1 class end tab-->
    </div>   <!--main class end tab-->
    </body>
</html>
