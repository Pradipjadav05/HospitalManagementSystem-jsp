<style>
    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f1f1f1;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        font-size:15px;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {
        background-color: #3fbbc0; 
        color: white; 
        font-weight: normal;}

    .dropdown:hover .dropdown-content {display: block;}

    .dropdown:hover .dropbtn {background-color: #3fbbc0;}

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

        <nav id="navbar" class="navbar order-last order-lg-0">
            <ul>
                <li><a class="nav-link scrollto " href="home.jsp">Home</a></li>
                <li><a class="nav-link scrollto" href="about.jsp">About</a></li>
                <li><a class="nav-link scrollto" href="services.jsp">Services</a></li>
                <li><a class="nav-link scrollto" href="departments.jsp">Departments</a></li>
                <li><a class="nav-link scrollto" href="doctor.jsp">Doctors</a></li>

                <!--
                <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
                  <ul>
                    <li><a href="#">Drop Down 1</a></li>
                    <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                      <ul>
                        <li><a href="#">Deep Drop Down 1</a></li>
                        <li><a href="#">Deep Drop Down 2</a></li>
                        <li><a href="#">Deep Drop Down 3</a></li>
                        <li><a href="#">Deep Drop Down 4</a></li>
                        <li><a href="#">Deep Drop Down 5</a></li>
                      </ul>
                    </li>
                    <li><a href="#">Drop Down 2</a></li>
                    <li><a href="#">Drop Down 3</a></li>
                    <li><a href="#">Drop Down 4</a></li>
                  </ul>
                </li>
                -->
                <li><a class="nav-link scrollto" href="contact.jsp">Contact</a></li>
                <li><a class="nav-link scrollto" href="feedback.jsp">FeedBack</a></li>
                <div class="dropdown">
                    <li class="nav-item active"><a class="nav-link" href="profile.jsp"><i class="fa fa-user" style="font-size:29px"></i></a></li>
                    <div class="dropdown-content">
                        <a href="editProfile.jsp">Edit Profile</a>
                        <a href="logout.jsp">Logout</a>
                    </div>
                </div>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->

        <a href="appointment.jsp" class="appointment-btn scrollto"><span class="d-none d-md-inline">Make an</span> Appointment</a>

    </div>
</header>