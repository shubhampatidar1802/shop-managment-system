<%-- 
    Document   : login
    Created on : 17 Apr, 2021, 4:58:20 PM
    Author     : SHUBHAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           body{  
            margin: 0;  
            padding: 0;  
            background-color:#6abadeba;  
            font-family: 'Arial';  
             }  
         .login{  
                width: 382px;  
                overflow: hidden;  
                margin: auto;  
                margin: 20 0 0 450px;  
                padding: 80px;  
                background: #5B42D0;  
                border-radius: 15px ;  
              }  
        h2{  
            text-align: center;  
            color: black;  
            padding: 30px; 
            font-size: 30px;
        }  
        label{  
            color:white;  
            font-size: 17px;  
        }
        
        #aid{  
            width: 300px;  
            height: 30px;  
            border: none;  
            border-radius: 3px;  
            padding-left: 8px;  
            background-color: #C5F4EC;
        }
        
        #password{  
            width: 300px;  
            height: 30px;  
            border: none;  
            border-radius: 3px;  
            padding-left: 8px;  
            background-color: #C5F4EC;
            }  
        #log{  
            width: 300px;  
            height: 30px;  
            border: none;  
            border-radius: 17px;  
            padding-left: 7px;  
            color: black;  
            }  
        span{  
            color: white;  
            font-size: 17px;  
            }  
          
          
       </style>
    </head>

    <body>    
          <h2>Admin Login Page</h2><br>    
          <div class="login">    
            <form id="login" method="post" action="validation.jsp">    
                <label><b>Admin Id</b></label>    <br>
                <input type="text" name="aid" id="aid" placeholder="Admin Id">    
                <br><br>    
                <label><b>Password</b></label>    
                <input type="Password" name="password" id="password" placeholder="Password">    
                <br><br>    
                <input type="submit" name="login" id="login" value="Log In">       
                  
                    
            </form>     
       </div>    
    </body>    
</html>
