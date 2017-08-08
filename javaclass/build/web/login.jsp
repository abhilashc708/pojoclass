<%-- 
    Document   : login
    Created on : Aug 3, 2017, 1:52:33 PM
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
        <form action="loginaction.jsp" name="form1" method="post">
            <label><h1>login</h1></label><br><br><hr>
            <label>your name</label>
            <input type="text" name="name" placeholder=""><br><br>
            <label>password</label>
            <input type="password" name="pass" placeholder=""><br><br>
            <input type="submit" name="submit" value="submit"><br>
             do not register...<a href="index.jsp">register here</a>
        </form>
    </body>
</html>
