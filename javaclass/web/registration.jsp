<%-- 
    Document   : registration
    Created on : Aug 2, 2017, 3:43:48 PM
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
        <%@page import="Login.userdetails" %>
        <jsp:useBean id="ud" class="Login.userclass"/> 

        <%
          // userclass ud=new userclass();
            userdetails u=new userdetails();
         u.setId(Integer.parseInt(request.getParameter("id")));
         u.setFullname(request.getParameter("fullname"));
          u.setAddress(request.getParameter("address"));
         u.setDist(request.getParameter("dist"));
            if(ud.insert(u)>0);
            response.sendRedirect("login.jsp");
       // response.sendRedirect("index.jsp");
        %>
    </body>
</html>
