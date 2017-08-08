<%-- 
    Document   : delete
    Created on : Aug 2, 2017, 3:04:04 PM
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
       <form action="deleteaction.jsp" name="form1" method="post">
            <label><h1>user delete</h1></label>
            <label>id</label>
            <input type="text" name="id" placeholder="id"><br><br>
            
            <input type="submit" name="submit" value="submit"><br><br>
             Back to home page...<a href="index.jsp">back</a>
            
        </form>
    </body>
</html>
