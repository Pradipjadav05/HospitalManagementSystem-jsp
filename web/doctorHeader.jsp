<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<style>
    .notification .badge {
        position: absolute;
        top: -10px;
        right: -10px;
        padding: 5px 5px;
        border-radius: 50%;
        background-color: red;
        color: white;
    }
</style>
<!-- ======= Top Bar ======= -->
<div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex align-items-center justify-content-center justify-content-md-between">
        <div class="align-items-center d-none d-md-flex">
            <i class="bi bi-clock"></i> Monday - Saturday, 8AM to 10PM
        </div>
        <div class="d-flex align-items-center">
            <i class="bi bi-phone"></i> Call us now :&nbsp; +91 635 334 2209 , &nbsp;&nbsp;+91 635 343 5399 , &nbsp;&nbsp; +91 903 337 2216     
        </div>
    </div>
</div>

<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

        <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <h1 class="logo me-auto"><a href="index.html">Medicio</a></h1> -->
        <%
            int count = 0;
            Class.forName("com.mysql.jdbc.Driver");

            String ncount = "jdbc:mysql://localhost:3306/hssra?user=root";
            Connection conn = DriverManager.getConnection(ncount);
            Statement state = conn.createStatement();

            String query = "SELECT * FROM appointment where status='0'";
            ResultSet result = state.executeQuery(query);
            while (result.next()) {
                count++;
            }

        %>
        <nav id="navbar" class="navbar order-last order-lg-0">
            <ul>
                <li><a class="nav-link scrollto" href="doctorPenal.jsp">Home</a></li>
                <li><a class="nav-link scrollto" href="dAppointment.jsp">Appointment</a></li>
                <li><a class="nav-link scrollto" href="doctorTreatmentList.jsp">Treatment</a></li>
                <li>
                    <a class="nav-link scrollto notification" href="doctorAppointment.jsp">
                        <i class="fa fa-bell" style="font-size:24px"></i>
                        <span class="badge"><% out.print(count);%></span>
                    </a>
                </li>
                <%
                    conn.close();
                %>
                
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->

        <a href="logout.jsp" class="appointment-btn scrollto"><span class="d-none d-md-inline">Logout</span></a>

    </div>
</header>