<%-- 
    Document   : home
    Created on : 17 Apr, 2021, 9:28:08 PM
    Author     : SHUBHAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Original+Surfer&family=Zen+Dots&display=swap" rel="stylesheet">
        <title>JSP Page</title>

        <style>
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

            .main {
              padding-top: 0;
              margin-left: 180px; /* Same as the width of the sidenav */
              font-size: 28px; /* Increased text to enable scrolling */
              padding: 0px 10px;
              margin-top: 0px;
              /*width: 100vw;*/
              /* background-color: gray; */
              background-color: #ffbaaa;

            }

            @media screen and (max-height: 450px) {
              /*.sidenav {padding-top: 15px;}*/
              /*.sidenav a {font-size: 18px;}*/
              }
              
            .profile{
                background: rgb(192, 226, 206);
               }

            .profile .content{
                display: flex;
                justify-content: center;
                flex-wrap: wrap;
                flex-direction: row;
               }


            .profile .content .profileBox{
                width: 250px;
                margin: 10px;
                padding: 20px;
            }
            
            .profile .content .profileBox p{
                text-align: center;
                }

            .profile .content .profileBox a:link,
            .profile .content .profileBox a:visited,
            .profile .content .profileBox a:active
                {
                color: #161616;
                text-decoration: none;
                font-weight: 600;
                }
            .profile .content .profileBox img{
                width: 200px;
                height:200px;
                size: inherit;
                border:1px solid rgba(0, 0, 0, .5);
                justify-content: space-between;
                }

            .profile .content .profileBox img:hover{
                box-shadow: 0 0 20px 5px #ccc;
                transform: scale(1.03);
                transition: 0.5s;
                }  
            .btn-group{
                margin:40px;
            }
            .btn-group button {
              background-color: #4CAF50; /* Green background */
              border: 1px solid green; /* Green border */
              border-radius: 20px;
              color: white; /* White text */
              padding: 10px 24px; /* Some padding */
              cursor: pointer; /* Pointer/hand icon */
              float: left; /* Float the buttons side by side */
              margin:20px 20px;
              /*margin-top: 120px;*/
              width: 200px;
              height:100px;
              font-size: 20px;
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


            .main h1{
                margin-top: 0px;
                color: #1C2833 ;
                background-color: #BDB76B;
                padding: 20px;
                /* margin-left: 40px; */
                 font-family: 'Zen Dots', cursive;
            }

            /* Clear floats (clearfix hack) */
               
            body{
                background-color: #ccc;
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
            <a href="salesList.jsp">Sales List</a>
        </div>

    <div class="main">
            <h1> &nbsp &nbsp  Patidar Hardware Boda</h1>

        <div class="btn-group">
            <button onclick="window.location.href='newCustomer.jsp';">New Customer</button>
            <button onclick="window.location.href='product.jsp';">Add Product</button>
            <button onclick="window.location.href='sales.jsp';">Add Sales</button>
            <button onclick="window.location.href='supplier.jsp';">Add Supplier</button>
            <button onclick="window.location.href='purchase.jsp';">Add Purchase</button>
            <button onclick="window.location.href='customerList.jsp';">Customer List</button>
            <button onclick="window.location.href='purchaseList.jsp';">Purchase List</button>
            <button onclick="window.location.href='salesList.jsp';">Sales List</button>
         </div>
    </div>
    </body>
</html>