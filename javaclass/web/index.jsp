<%-- 
    Document   : index
    Created on : Aug 2, 2017, 2:40:04 PM
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
        update ur profile<a href="update.jsp">update</a><br><hr>
        delete ur profile<a href="delete.jsp">delete</a><br><hr>
        already registerd?<a href="login.jsp">click here</a><br>
        <form action="registration.jsp" name="form1" method="post">
            <label><h1>user register</h1></label>
            <label>id</label>
            <input type="text" name="id" placeholder="id"><br><br>
            <label>fullname</label>
            <input type="text" name="fullname" placeholder="name"><br><br>
            <label>address</label>
            <textarea name="address" placeholder="address"></textarea><br><br>
             <label>dist</label>
            <input type="text" name="dist" placeholder="status"><br><br>
            <input type="submit" name="submit" value="submit"><br><br>
            
            
        </form>
    </body>
</html>
