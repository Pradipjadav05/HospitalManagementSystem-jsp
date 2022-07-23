<%-- 
    Document   : feedback
    Created on : Sep 6, 2021, 6:01:29 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("email") != null) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Admoin Dashboard | Medico</title>
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
        <link href="assests/css/AdminStyle.ss" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            .cards {
                padding: 50px;
                width: 90%;
                margin-bottom: 50px;
                border-radius: 10px;

                box-shadow:
                    0 2.8px 2.2px rgba(0, 0, 0, 0.034),
                    0 6.7px 5.3px rgba(0, 0, 0, 0.048),
                    0 12.5px 10px rgba(0, 0, 0, 0.06),
                    0 22.3px 17.9px rgba(0, 0, 0, 0.072),
                    0 41.8px 33.4px rgba(0, 0, 0, 0.086),
                    0 100px 80px rgba(0, 0, 0, 0.12)
            }

            .cards__item {

                /*flex-basis: 25%;*/
                width: 25%;
                padding-left: 8px;
                padding-right: 8px;
                margin: 20px;
                display: inline-block;
                box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;
            }
        </style>
    </head>
    <body>
        <%@include file="adminHeader.jsp" %>
        <br>
        <br>
        <br>
        <br>
        <section id="doctors" class="doctors section-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Welcome Admin</h2>
                </div>
            </div>
            <div class="container text-center">
                <div class="row">
                    <div class="col-lg-12">
                        <center>
                            <div class="cards">
                                <!-- A card with given width -->
                                <a href="adminDoctorList.jsp">
                                    <div class="cards__item">
                                        <h2>Doctor</h2>
                                        <h2>
                                            <%                                                int count1 = 0;
                                                Class.forName("com.mysql.jdbc.Driver");

                                                String mysqlURL1 = "jdbc:mysql://localhost:3306/hssra?user=root";
                                                Connection con1 = DriverManager.getConnection(mysqlURL1);
                                                Statement stm1 = con1.createStatement();

                                                String sql1 = "SELECT * FROM patient";
                                                ResultSet rs1 = stm1.executeQuery(sql1);

                                                while (rs1.next()) {
                                                    count1++;
                                                }
                                                out.print(count1);

                                                con1.close();
                                            %>
                                        </h2>
                                    </div>
                                </a>
                                <a href="adminPatientList.jsp">
                                    <div class="cards__item">
                                        <h2>Patient</h2>
                                        <h2>
                                            <%
                                                int count2 = 0;
                                                Class.forName("com.mysql.jdbc.Driver");

                                                String mysqlURL2 = "jdbc:mysql://localhost:3306/hssra?user=root";
                                                Connection con2 = DriverManager.getConnection(mysqlURL2);
                                                Statement stm2 = con2.createStatement();

                                                String sql2 = "SELECT * FROM patient";
                                                ResultSet rs2 = stm2.executeQuery(sql2);

                                                while (rs2.next()) {
                                                    count2++;
                                                }
                                                out.print(count2);

                                                con2.close();
                                            %>
                                        </h2>
                                    </div>
                                </a>
                                <a href="">
                                    <div class="cards__item">
                                        <h2>Appointment</h2>
                                        <h2>
                                            <%
                                                int count3 = 0;
                                                Class.forName("com.mysql.jdbc.Driver");

                                                String mysqlURL3 = "jdbc:mysql://localhost:3306/hssra?user=root";
                                                Connection con3 = DriverManager.getConnection(mysqlURL3);
                                                Statement stm3 = con3.createStatement();

                                                String sql3 = "SELECT * FROM appointment";
                                                ResultSet rs3 = stm3.executeQuery(sql3);

                                                while (rs3.next()) {
                                                    count3++;
                                                }
                                                out.print(count3);

                                                con3.close();
                                            %>
                                        </h2>
                                    </div>
                                </a>
                                <a href="adminFeedback.jsp">
                                    <div class="cards__item">
                                        <h2>FeedBack</h2>
                                        <h2>
                                            <%
                                                int count4 = 0;
                                                Class.forName("com.mysql.jdbc.Driver");

                                                String mysqlURL4 = "jdbc:mysql://localhost:3306/hssra?user=root";
                                                Connection con4 = DriverManager.getConnection(mysqlURL4);
                                                Statement stm4 = con4.createStatement();

                                                String sql4 = "SELECT * FROM feedback";
                                                ResultSet rs4 = stm4.executeQuery(sql4);

                                                while (rs4.next()) {
                                                    count4++;
                                                }
                                                out.print(count4);

                                                con4.close();
                                            %>
                                        </h2>
                                    </div>
                                </a>
                                <a href="adminContact.jsp">
                                    <div class="cards__item">
                                        <h2>Contact</h2>
                                        <h2>
                                            <%
                                                int count5 = 0;
                                                Class.forName("com.mysql.jdbc.Driver");

                                                String mysqlURL5 = "jdbc:mysql://localhost:3306/hssra?user=root";
                                                Connection con5 = DriverManager.getConnection(mysqlURL5);
                                                Statement stm5 = con5.createStatement();

                                                String sql5 = "SELECT * FROM contact";
                                                ResultSet rs5 = stm5.executeQuery(sql5);

                                                while (rs5.next()) {
                                                    count5++;
                                                }
                                                out.print(count5);

                                                con5.close();
                                            %>
                                        </h2>
                                    </div>
                                </a>
                                <!-- Repeat other cards -->

                            </div>
                        </center>
                    </div>
                </div>
            </div>
        </section>
        <!-- ======= Footer ======= -->
        <%@ include file = "footer.jsp" %>
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

        <!-- End Footer -->
    </body>
</html>
<%
    } else {
        response.sendRedirect("index.jsp");
    }
%>