<%-- 
    Document   : delete
    Created on : 13 Apr, 2017, 12:11:37 AM
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
    
    String name = request.getParameter("name2");
    
    try{        
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LibraryDB", "root", "password");
        st = con.createStatement();
    }catch(Exception e){
            out.println(e);
        }
    try{
    query = "DELETE FROM books WHERE name='"+name+"'";
    int res = st.executeUpdate(query);
    %>
    <div class="main-content">
                        <div>
                            <h1 align  = "center">Congratulations, <%=name%> has been deleted successfully from our database. Thank you!</h1>
                        </div>

                    </div>
                        <%
    }
    catch(Exception e){
            out.println(e);
%>
                    

<div class="main-content">
    <div class="container">
	<div class="page">
                        <div>
                            <h1 align  = "center">Sorry! <%=name%> has not been deleted. Please resolve the error!</h1>                           
                        </div>
        </div>
    </div>
                        
</div>

<%
}
%>
<br><br>
<form align="center">
                                
                            
                            <input type="submit" class="btn btn-primary btn-lg" value="BACK" onclick="form.action='index.jsp';">
                            </form>
               </div>
        </body>
</html>