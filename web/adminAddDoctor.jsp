<%-- 
    Document   : feedback
    Created on : Sep 6, 2021, 6:01:29 PM
    Author     : HP
--%>
<%
    if (session.getAttribute("email") != null) {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Doctor | Medico</title>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>ADMIN</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
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
                background:#65c9cd;
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
                <div>
                    <a class="btn btn-info" href="adminDoctorList.jsp" style='font-size:20px'><i class='fa fa-arrow-left' style='font-size:20px'></i>&nbsp;Back</a>
                    <a href="" onclick="window.print()" style="float: right;font-size: 20px;padding-right: 10px;"><i class="fa fa-print" style="font-size:20px"></i>Print</a>
                </div>
                <div class="col-lg-12">

                    <center>
                        <form action="adminAddDoctor_pro.jsp" method="POST" enctype=""

                              <center>
                                <table style="border: 3px solid #65c9cd;" width="70%" >
                                    <tr>
                                        <th colspan="2"><center><h1>Add new Doctor</h1></center></th>
                                    </tr>
                                    <tr>
                                        <th style="padding: 3px 0 3px 5px;">First Name</th>
                                        <td><input type="text" class="form-control" name="fname"  style="width: 98%;margin-left: 5px" required></td>
                                    </tr>
                                    <tr>
                                        <th style="padding: 3px 0 3px 5px;">Last Name</th>
                                        <td><input type="text" class="form-control" name="lname" style="width: 98%; margin-left: 5px" required></td>
                                    </tr>
                                    <tr>
                                        <th style="padding: 3px 0 3px 5px;">Email</th>
                                        <td><input type="text" class="form-control" name="email" style="width: 98%;margin-left: 5px" required></td>
                                    </tr>
                                    <tr>
                                        <th style="padding: 3px 0 3px 5px;">Mobile No</th>
                                        <td><input type="text" class="form-control" name="mobile" style="width: 98%; margin-left: 5px" required></td>
                                    </tr>
                                    <tr>
                                        <th style="padding: 3px 0 3px 5px;">Department</th>
                                        <td>
                                            <select class="form-control" style="width: 98%; margin-left: 5px" name="department">
                                                <option>-- Select --</option>
                                                <option>Anesthesia</option>
                                                <option>Cardiac Surgery</option>
                                                <option>Dermatology</option>
                                                <option>Gynecology, Obstetrics, Fetal Medicine & Genetic Sciences</option>
                                                <option>GI Surgery</option>
                                                <option>Liver Transplant </option>
                                                <option>Neurology</option>
                                                <option>Radiology</option>
                                                <option>Urology</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="padding: 3px 0 3px 5px;">Type</th>
                                        <td><input type="text" class="form-control" name="degree" style="width: 98%; margin-left: 5px" required></td>
                                    </tr>
                                    <tr>
                                        <th style="padding: 3px 0 3px 5px;">City</th>
                                        <td><input type="text"class="form-control" name="city" style="width: 98%; margin-left: 5px;" required></td>
                                    </tr>

                                    <tr>
                                        <th style="padding: 3px 0 3px 5px;">Password</th>
                                        <td><input type="password" class="form-control" name="password" style="width: 98%;margin-left: 5px" required></td>
                                    </tr>
                                    <tr>
                                        <th style="padding: 3px 0 3px 5px;">Photo</th>
                                        <td><input type="file"class="form-control" name="photo" style="width: 98%; margin-left: 5px" required></td>
                                    </tr>
                                    <tr>
                                        <th colspan="2" style="padding: 3px 0 3px 0;">
                                    <center>
                                        <input type="submit"class="btn2" name="addDoctor" value="Add" />
                                    </center>
                                    </th>
                                    </tr>

                                </table>

                        </form>
                    </center> 
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