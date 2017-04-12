<%-- 
    Document   : detail
    Created on : 13 Apr, 2017, 12:26:30 AM
    Author     : pragya
--%>
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
    
    //String action = request.getParameter("action");
    String name = request.getParameter("name");
    
    if(name == null){
        if(session == null)
            response.sendRedirect("index.jsp");
        else if(request.getSession(false) == null)
            response.sendRedirect("index.jsp");
        else
            ;
    }
%>
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
                    <%                                            
try{        
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LibraryDB", "root", "password");
        st = con.createStatement();
        query = "SELECT * FROM books where name = '"+name+"'";
        
        cara = st.executeQuery(query);
    
    if(cara.next()){
%>
                                                
                                                <span><%=cara.getString("name")%></span>
						
						<div class="content">
							<div class="row">
								<div class="col-md-12">
									<h2 class="movie-title"><%=cara.getString("name")%></h2>
                                                                        <ul class="starring">
                                                                                <li><strong>Authors:</strong> <%=cara.getString("authors")%></li>
                                                                                <li><strong>Year Published:</strong> <%=cara.getString("year_pub")%></li>
                                                                                <li><strong>Publisher:</strong> <%=cara.getString("pub")%></li>
										<li><strong>ISBN:</strong> <%=cara.getString("isbn")%></li>
                                                                                <li><strong>Page Count:</strong> <%=cara.getString("page")%></li>
									</ul>
                                                                </div>
                                                        </div>
                                                </div>
<%
    }
    }
    catch(Exception e){
            out.println(e);
        }
%>
                </div>
        </body></html>
                                                                        