<%-- 
    Document   : about
    Created on : 18 Aug, 2021, 10:33:08 AM
    Author     : Keyur
--%>
<%
    if (session.getAttribute("p_id") != null) {


%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Appointment | Medico</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

        <!-- =======================================================
        * Template Name: Medicio - v4.3.0
        * Template URL: https://bootstrapmade.com/medicio-free-bootstrap-theme/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About</title>
        <style>
             .btn2 {
                padding: 15px 30px;
                font-size: 16px;
                font-weight: 600;
                letter-spacing: 1px;
                color: #092a49;
                background: none;
                border: 3px solid #65c9cd;
                border-radius: 15px;
                transition: .3s;
                border-radius: 10px
            }

            .btn2:hover {
                color: white;
                background:#3fbbc0;
            }
        </style>
    </head>
    <body>
        <!-- Header -->
        <%@include file="Header.jsp" %>
        <!-- END Header -->

        <br><br><br> <br><br> 

        <!-- ======= Appointment Section ======= -->
        <section id="appointment" class="appointment section-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Make an Appointment</h2>
                </div>
                <form name="sentMessage" id="contactForm" novalidate="novalidate" action="appointment_pro.jsp">
                    <div class="row">
                        <div class="col-md-4 form-group" >
                            <input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required="required" value="<% out.print(session.getAttribute("name")); %>" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="col-md-4 form-group">
                            <input type="email" class="form-control" id="email" name="email" placeholder="Your email" required="required" value="<% out.print(session.getAttribute("email")); %>" data-validation-required-message="Please enter your email" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="col-md-4 form-group" >
                            <input type="text" class="form-control" id="phone" name="mobile" placeholder="Your phone" required="required" value="<% out.print(session.getAttribute("mobile")); %>" data-validation-required-message="Please enter your MObile Number" />
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 form-group" >
                            <input type="date" class="form-control" id="date" name="date" required="required" data-validation-required-message="Please enter date" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="col-md-4 form-group">
                            <select name="time" id="doctor" class="form-select">
                                <option value="">Select Time</option>
                                <option value="9:00 TO 11:30 AM"> 9:00 TO 11:30 AM</option>
                                <option value="1:00 TO 3:00 PM">1:00 TO 3:00 PM</option>
                                <option value="4:00 TO 7:15 PM">4:00 TO 7:15 PM</option>
                            </select>
                        </div>
                        <div class="col-md-4 form-group" >
                            <%
                                Class.forName("com.mysql.jdbc.Driver");

                                String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
                                Connection con = DriverManager.getConnection(mysqlURL);
                                Statement stm = con.createStatement();

                                String sql = "SELECT * FROM doctor";
                                ResultSet rs = stm.executeQuery(sql);

                            %>

                            <select name="doctor_id" id="doctor" class="form-select">
                                <option>-- SELECT --</option>                                 

                                <%                                while (rs.next()) {
                                        String d_id = rs.getString(1);
                                        String fname = rs.getString(2);
                                        String lname = rs.getString(3);
                                        //<%out.print(fname + " " + lname); 
                                %>


                                <option value="<%out.print(d_id); %>"><%out.print(fname + " " + lname); %></option>

                                <%
                                    }
                                    con.close();
                                %>
                            </select>
                        </div>
                    </div>




                    <div class="control-group">
                        <textarea class="form-control" id="message"  rows="5" placeholder="Message" name="message" required="required" data-validation-required-message="Please enter your message"></textarea>
                        <p class="help-block text-danger"></p>
                    </div>

                    <div>
                        <center><button class="btn2" type="submit">Send Message</button></center>
                    </div>
                </form>

            </div>
        </section><!-- End Appointment Section -->



        <!-- Footer -->
        <%@include file="footer.jsp" %>
        <!-- END Footer -->

        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>
        <script src="assets/vendor/purecounter/purecounter.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

    </body>
</html>
<%
    } else {
        response.sendRedirect("index.jsp");
    }
%>