<%-- 
    Document   : checklogin
    Created on : Jun 2, 2018, 6:36:45 PM
    Author     : Lenovo
--%>

<%@ page language="java" import="java.sql.*"%><b><center>     

        <%

            String name = request.getParameter("uname");

            String pass = request.getParameter("upass");

            try {
                
                Class.forName("com.mysql.jdbc.Driver");

               Connection con = DriverManager.getConnection("jdbc:mysql://localhost/reg", "root", "");

              //
             
              

               Statement st = con.createStatement();

                ResultSet rs = st.executeQuery("select * from reg");

                int x = 0;

                while (rs.next()) {

                    if ((rs.getString("uname").equals(name)) && rs.getString("upass").equals(pass)) {

                        String stp = rs.getString("utype");

                        if (stp.equals("admin")) {

                            x = 1;

                            break;

                        } else {

                            x = 2;

                            break;

                        }

                    }

                }

                if (x == 2) {

                    response.sendRedirect("student.jsp");

                } else if (x == 1) {

                    response.sendRedirect("admin.jsp");

                } else {

                    out.println("Either you enter Invalid UserName or Password! Please Try Again");

        %>

        <jsp:include page="index.html" />

        <%}

 

            } catch (Exception e) {

                out.println(e);

            }

 

            session.setAttribute("username", name);

        %> 