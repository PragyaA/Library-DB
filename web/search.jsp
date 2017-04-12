<%-- 
    Document   : search
    Created on : 13 Apr, 2017, 12:06:59 AM
    Author     : pragya
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
            
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Library Database</title>

		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css">

	</head>


	<body>
		<div id="site-content">
			<header class="site-header">
				<div class="container">
					<a ef="index.jsp" id="branding">
						<div class="logo-copy">
							<h1 class="site-title">Library Database</h1>
						</div>
					</a> <!-- #branding -->

					<div class="main-navigation">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<form action="#" class="search-form">
							<input type="text" placeholder="Search...">
							<button><i class="fa fa-search"></i></button>
						</form>
					</div> <!-- .main-navigation -->

					<div class="mobile-navigation"></div>
				</div>
			</header>
                    <div class="main-content">
                    <div class="table-title">
                    <h3 align="center">Following books are available : </h3>
                    </div>
                        <ol>
                    
<%@ page import="java.sql.*" %>
<%
    Connection con = null;
    String query;
    ResultSet rs = null, cara = null;
    Statement st = null;
    try {
    Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
    e.printStackTrace();
    }
    
    try{        
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LibraryDB", "root", "password");
        st = con.createStatement();
    }catch(Exception e){
            out.println(e);
        }
    String val = request.getParameter("search");
    try{
    query = "SELECT * from books";
    rs = st.executeQuery(query);
    while(rs.next()){
        if(val.equals(cara.getString("name")) ||val.equals(cara.getString("year_pub")) || val.equals(cara.getString("pub")) || val.equals(cara.getString("authors")) || val.equals(cara.getString("isbn")) )
        {
    %>
    
    <a href="detail.jsp?name=<%=cara.getString("name")%>"><li> <%=cara.getString("name")%> </li> </a>
    
    <%
        }
        }
    }
    catch(Exception e){
            out.println(e);
    } 
    %>
                        </ol>
                    </div>
    <br><br>
                            <form align="center">
                                
                            
                            <input type="submit" class="btn btn-primary btn-lg" value="BACK" onclick="form.action='index.jsp';">
                            </form>

               </div>
        </body>
</html>

