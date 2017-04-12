<%-- 
    Document   : index
    Created on : 13 Apr, 2017, 12:00:59 AM
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
							<input type="text" placeholder="Search..." name="search">
							<button onclick="search.jsp"><i class="fa fa-search"></i></button>
						</form>
					</div> <!-- .main-navigation -->

					<div class="mobile-navigation"></div>
				</div>
			</header>
                    <div class="main-content">
                        <br><br>
                        <div class="container">
                            <div class="page">
                            <form align="center">
                                
                            <h3 align  = "center">SHOW AVAILABLE BOOKS</h3> 
                            <input type="submit" class="btn btn-primary btn-lg" value="Show" onclick="form.action='show.jsp';">
                            </form>
                        </div>
                    </div>
                        <br><br>
                        <div class="container">
                        <div class="page">
                        <form align="center">
                            <h3 align  = "center">ADD A BOOK</h3>
                            Name : <input type="text" class="" name="name" placeholder="" style="width:40%;"><br><br>
                            Authors : <input type="text" class="" name="authors" placeholder="" style="width:40%;"><br><br>
                            Years published : <input type="text" class="" name="year_pub" placeholder="" style="width:40%;"><br><br>
                            Publisher : <input type="text" class="" name="pub" placeholder="" style="width:40%;"><br><br>
                            ISBN : <input type="text" class="" name="isbn" placeholder="" style="width:40%;"><br><br>
                            Page Count : <input type="text" class="" name="page" placeholder="" style="width:40%;"><br><br>
                            
                            <input type="submit" class="btn btn-primary btn-lg" value="ADD" onclick="form.action='add.jsp';">
                        </form>
                        </div>
                        </div>
                        <br><br>
                        <div class="container">
                            <div class="page">
                            <form align="center">
                                
                            <h3 align  = "center">DELETE A BOOK</h3> 
                            Name : <input type="text" class="" name="name2" placeholder="" style="width:40%;"><br><br>
                            <input type="submit" class="btn btn-primary btn-lg" value="DELETE" onclick="form.action='delete.jsp';">
                            </form>
                        </div>
                    </div>
                    </div>

                </div>
        </body>
</html>