<%-- 
    Document   : update
    Created on : Aug 2, 2017, 3:03:49 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="updateaction.jsp" name="form1" method="post">
            <label><h1>user update</h1></label>
            <label>id</label>
            <input type="text" name="id" placeholder="id"><br><br>
            <label>address</label>
            <textarea name="address" placeholder="address"></textarea><br><br>
            <label>fullname</label>
            <input type="text" name="name" placeholder="name"><br><br>
             <label>status</label>
            <input type="text" name="dist" placeholder="status"><br><br>
            
            <input type="submit" name="submit" value="submit"><br><br>
            Back to home page...<a href="index.jsp">back</a>
            
        </form>
    </body>
</html>
