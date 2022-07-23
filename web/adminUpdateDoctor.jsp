<%-- 
    Document   : feedback
    Created on : Sep 6, 2021, 6:01:29 PM
    Author     : HP
--%>
<%
    if (session.getAttribute("email") != null) {
%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("Did");
    Class.forName("com.mysql.jdbc.Driver");

    String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
    Connection con = DriverManager.getConnection(mysqlURL);
    Statement stm = con.createStatement();

    String sql = "SELECT * FROM doctor WHERE d_id = '" + id + "' ";
    ResultSet rs = stm.executeQuery(sql);

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor List | Medico</title>
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
            .container1 {
                display: flex;

                /* OPTIONAL: Reverse the order of image and content */
                flex-direction: row-reverse;
                /* OPTIONAL: Spacing between items */
                margin: 16px 0;
                box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;

            }

            .container__image {
                width: 180px;
                height: 180px;
                padding: 10px;
            }
            .container__image img{
                border: 5px solid #65c9cd;
                border-radius: 50%;
                height: 100%;
                width: 100%;
            }
            .container__feature {
                /* Take the remaining width */
                flex: 1;
                text-align: left;
                padding: 10px;
                margin-left: 20px;
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
                    <h2>Update Doctor Details</h2>
                </div>
                <div>
                    <a class="btn btn-info" href="adminDoctorList.jsp" style='font-size:20px'><i class='fas fa-arrow-left'></i>&nbsp;Back</a>

                </div>
                <div class="container">
                    <div class="row mt-5">
                        <%  if (rs.next()) {

                                String fname = rs.getString(2);
                                String lname = rs.getString(3);
                                String email = rs.getString(4);
                                String department = rs.getString(6);
                                String degree = rs.getString(7);
                                String photo = rs.getString(9);

                        %>
                        <div class="col-lg-12">

                            <center>
                                <form action="adminUpdateDoctor_pro.jsp?Did=<%=id%>" method="POST" enctype=""

                                      <center>
                                        <table style="border: 3px solid #65c9cd;" width="70%" >
                                            
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">ID</th>
                                                <td><input type="text" class="form-control" name="id"  style="width: 98%;margin-left: 5px" value = "<% out.print(rs.getString(1)); %>"required readonly></td>
                                            </tr>
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">First Name</th>
                                                <td><input type="text" class="form-control" name="fname"  style="width: 98%;margin-left: 5px" value = "<% out.print(rs.getString(2)); %>" required></td>
                                            </tr>
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">Last Name</th>
                                                <td><input type="text" class="form-control" name="lname" style="width: 98%; margin-left: 5px" value = "<% out.print(rs.getString(3)); %>" required></td>
                                            </tr>
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">Email</th>
                                                <td><input type="text" class="form-control" name="email" style="width: 98%;margin-left: 5px" value = "<% out.print(rs.getString(4)); %>" required></td>
                                            </tr>
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">Mobile No</th>
                                                <td><input type="text" class="form-control" name="mobile" style="width: 98%; margin-left: 5px" value = "<% out.print(rs.getString(5)); %>" required></td>
                                            </tr>
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">Department</th>
                                                <td>
                                                    <select class="form-control" style="width: 98%; margin-left: 5px" name="department" required>
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
                                                <td><input type="text" class="form-control" name="degree" style="width: 98%; margin-left: 5px" value = "<% out.print(rs.getString(7)); %>" required></td>
                                            </tr>
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">City</th>
                                                <td><input type="text"class="form-control" name="city" style="width: 98%; margin-left: 5px;" value = "<% out.print(rs.getString(8)); %>" required></td>
                                            </tr>

                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">Password</th>
                                                <td><input type="password" class="form-control" name="password" style="width: 98%;margin-left: 5px" value = "<% out.print(rs.getString(9)); %>" required></td>
                                            </tr>

                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">Photo</th>
                                                <td><input type="file"class="form-control" name="photo" style="width: 98%; margin-left: 5px" value = "<% out.print(rs.getString(10)); %>" required></td>
                                            </tr>
                                            <tr>
                                                <th colspan="2" style="padding: 3px 0 3px 0;">
                                            <center>
                                                <input type="submit"class="btn2" name="UpDoctor" value="Update" />
                                            </center>
                                            </th>
                                            </tr>
                                        </table>
                                </form>
                            </center> 
                        </div>
                        <%                            }
                        %>
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