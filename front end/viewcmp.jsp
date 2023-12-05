<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Admin</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />
</head>

<body>
    <div class="wrapper">
       <%String dist = request.getParameter("dist");
    		String uname=request.getParameter("uname");
    		%>
       <%String tal= null;
    		String add = null;
    		int max=0;
    		int booking=0;
    		String cid =null;
    		int bal =0;
    		%>
     
            <!-- End Navbar -->
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                       
                        <div class="col-md-12">
                            <div class="card card-plain table-plain-bg">
                                <div class="card-header ">
                                    <h4 class="card-title">View Camp</h4>
                                    
                                </div>
                                <div class="card-body table-full-width table-responsive">
                                    <table class="table table-hover">
                                    <tr>
                                       
                                            
                                            <th>District</th>
                                            <th>Taluk</th>
                                            <th>Address</th>
                                            <th>Maximum Capacity</th>
                                            <th>Current Bookings</th>
                                            <th>Balance</th>
                                             <th>Book Now</th>
                                       
                                       </tr>
                                       <tr>
                                         <%
													Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camp", "root", "");
													Statement st = con.createStatement();

													ResultSet rs = st.executeQuery("select * from camp where dist='"+dist+"' and booking < max");
													while (rs.next()) {
														tal = rs.getString("taluk");
														add = rs.getString("address");
														max = Integer.parseInt(rs.getString("max"));
														booking = Integer.parseInt(rs.getString("booking"));
														cid = rs.getString("cid");
														bal = max- booking;
													
													%>
                                            
                                            <td><%=dist %></td>
                                            <td><%=tal %></td>
                                            <td><%=add %></td>
                                            <th><%=max %></th>
                                            <td><%=booking %></td>
                                            <td><%=bal %></td>
                                            <td><form action="lockSpot.jsp">
                                            <input type="hidden" name="uname" value="<%=uname%>">
                                            <input type="hidden" name="cid" value="<%=cid%>">
                                            <input type="hidden" name="action" value="bookCamp">
                                            <input type="submit" value="Book Now">
                                            </form></td>
                                             
                                       
                                       </tr>
                                       <%} %>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
   
</body>
<!--   Core JS Files   -->
<script src="assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>

</html>
