<%-- 
    Document   : student
    Created on : Jun 2, 2018, 5:58:26 PM
    Author     : Lenovo
--%>

<%@ page language="java" import="java.sql.*"%>

<html>

    <head></head>

    <body bgcolor="black"><font color="red">

        <h1>This is a User Page</h1>

        <%

            String str = (String) session.getAttribute("username");

            out.print("Welcome " + str);

        %>

        </font>

 

    </body>

</html>