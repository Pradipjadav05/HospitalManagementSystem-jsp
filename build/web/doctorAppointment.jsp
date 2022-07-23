<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    if (session.getAttribute("d_id") != null) {
        String id = (String) session.getAttribute("d_id");
%>
<%
    Class.forName("com.mysql.jdbc.Driver");

    String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
    Connection con = DriverManager.getConnection(mysqlURL);


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Doctor Appointtment | Medico</title>
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="assests/css/AdminStyle.css">


    </head>
    <body>
        <%@include file="doctorHeader.jsp" %>
        <br>
        <br>
        <br>
        <br>
        <section id="doctors" class="doctors section-bg">
            <div>
                <a class="btn btn-info" href="doctorPenal.jsp" style='font-size:20px'><i class='fas fa-arrow-left'></i>&nbsp;Back</a>

            </div>
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Patient Details</h2>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>New Appointment List</h2>
                        <input class="form-control" id="myInput" type="text" placeholder="Search..">
                        <br>
                        <ul class="list-group" id="myList">
                            <%                                Statement stm = con.createStatement();

                                String sql = "SELECT * FROM appointment WHERE status='0' and doctor_id='" + id + "' ";
                                ResultSet rs = stm.executeQuery(sql);
                                while (rs.next()) {
                                    String Aid = rs.getString(1);
                                    String p_id = rs.getString(2);
                                    String name = rs.getString(3);

                            %>
                            <a href="doctorTreatment.jsp?id=<%= Aid%>" ><li class="list-group-item"><% out.print(name); %><i style='font-size:24px; float:right' class='fas'>&#xf105;</i></li></a>

                            <%
                                }


                            %>
                        </ul>  
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Appointment List</h2>
                        <input class="form-control" id="myInput1" type="text" placeholder="Search..">
                        <br>
                        <ul class="list-group" id="myList1">
                            <%                                Statement stm1 = con.createStatement();

                                String sql1 = "SELECT * FROM appointment where doctor_id='" + id + "' and status='1' ";
                                ResultSet rs1 = stm.executeQuery(sql1);
                                while (rs1.next()) {
                                    String p_id = rs1.getString(2);
                                    String name = rs1.getString(3);


                            %>
                            <a href="doctorTreatmentView.jsp?id=<%= p_id%>" ><li class="list-group-item"><% out.print(name); %><i style='font-size:24px; float:right' class='fas'>&#xf105;</i></li></a>

                            <%
                                }
                                con.close();

                            %>
                        </ul>  
                    </div>
                </div>
            </div>
        </section>

        <!-- ======= Footer ======= -->
        <%@ include file = "footer.jsp" %>
        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <script>
            $(document).ready(function () {
                $("#myInput").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#myList li").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });
            $(document).ready(function () {
                $("#myInput1").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#myList1 li").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });
        </script>
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
<%    } else {
        response.sendRedirect("index.jsp");
    }
%>