<%-- 
    Document   : feedback
    Created on : Sep 6, 2021, 6:01:29 PM
    Author     : HP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    if (session.getAttribute("d_id") != null) {
%>
<%
    String Aid = request.getParameter("id");

    Class.forName("com.mysql.jdbc.Driver");

    String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
    Connection con = DriverManager.getConnection(mysqlURL);
    Statement stm = con.createStatement();

    String sql = "SELECT * FROM appointment where id='" + Aid + "' ";
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
        <%@include file="doctorHeader.jsp" %>
        <br>
        <br>
        <br>
        <br>
        <section id="doctors" class="doctors section-bg">
            <div class="container" data-aos="fade-up">
                <div>
                    <a class="btn btn-info" href="doctorAppointment.jsp" style='font-size:20px'><i class='fas fa-arrow-left'></i>&nbsp;Back</a>

                </div>
                <div class="section-title">
                    <h2>Patient History</h2>
                    <table class="table table-striped">
                        <thead>

                            <tr>
                                <th>Patient ID</th>
                                <th>Patient Name</th>
                                <th>MObile Number</th>
                                <th>Doctor</th>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Treatment</th>
                                <th>Medicine</th>
                                <th>Status</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%                                if (rs.next()) {
                                    String p_id = rs.getString(2);
                                    String name = rs.getString(3);
                                    String email = rs.getString(4);
                                    String mobile = rs.getString(5);
                                    String date = rs.getString(6);
                                    String time = rs.getString(7);
                                    String doctor_id = rs.getString(8);
                                    String message = rs.getString(9);
                                    
                                   // out.print(doctor_id);


                            %>
                            <%                                Statement stm2 = con.createStatement();

                                String sql2 = "SELECT * FROM treatment where p_id='" + p_id + "' ";
                                ResultSet rs3 = stm2.executeQuery(sql2);


                            %>
                            <%                                while (rs3.next()) {
                                    String p_name = rs3.getString(2);
                                    String doctor = rs3.getString(4);
                                    String treatment = rs3.getString(5);
                                    String medicine = rs3.getString(6);

                            %>
                            <tr>
                                <td><% out.print(p_id); %></td>
                                <td><% out.print(p_name); %></td>
                                <td><% out.print(mobile); %></td>
                                <td><% out.print(doctor); %></td>
                                <td><% out.print(date); %></td>
                                <td><% out.print(time); %></td>
                                <td><% out.print(treatment); %></td>
                                <td><% out.print(medicine); %></td>
                                
                                <td><% out.print("done"); %></td>

                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <section id="doctors" class="doctors section-bg">
            <div class="container" data-aos="fade-up">
                <div class="section-title">
                    <h2>Make Treat</h2>
                </div>

                <div class="container">
                    <div class="row mt-5">

                        <div class="col-lg-12">

                            <center>

                                <center>
                                    <form action="doctorTreatment_pro.jsp" method="POST" enctype="">

                                        <table style="border: 3px solid #65c9cd;" width="70%" >
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">Patient ID</th>
                                                <td><input type="text" class="form-control" name="p_id"  style="width: 98%;margin-left: 5px" value="<% out.print(p_id); %>" required readonly></td>
                                            </tr>
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">Patient Name</th>
                                                <td><input type="text" class="form-control" name="p_name"  style="width: 98%;margin-left: 5px" value="<% out.print(name); %>" required></td>
                                            </tr>
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">Mobile Number</th>
                                                <td><input type="text" class="form-control" name="mobile"  style="width: 98%;margin-left: 5px" value="<% out.print(mobile); %>" required readonly></td>
                                            </tr>
                                            <tr>
                                                <%

                                                    Statement stm1 = con.createStatement();

                                                    String sql1 = "SELECT * FROM doctor where d_id = '" + doctor_id + "' ";
                                                    ResultSet rs1 = stm.executeQuery(sql1);
                                                    if (rs1.next()) {
                                                        String dname = rs1.getString(2) + " " + rs1.getString(3);
                                                        //out.print(dname);

                                                %>
                                                <th style="padding: 3px 0 3px 5px;">Doctor</th>
                                                <td><input type="text" class="form-control" name="doctor" style="width: 98%; margin-left: 5px" value="<% out.print(dname); %>" required readonly> </td>
                                                    <%
                                                        }
                                                    %>
                                            </tr>
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">Treatment</th>
                                                <td>
                                                    <textarea class="form-control" id="message" name="treatment" required="required" data-validation-required-message="Please enter your message"style="width: 98%; margin-left: 5px"></textarea></td>
                                            </tr>
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">Medicine</th>
                                                <td>                                                    
                                                    <textarea class="form-control" id="message" name="medicine" required="required" data-validation-required-message="Please enter your message"style="width: 98%; margin-left: 5px"></textarea>
                                                </td>

                                            </tr>
                                            <tr>
                                                <th style="padding: 3px 0 3px 5px;">Status</th>

                                                <td colspan="2">
                                                    <input type="checkbox" style="margin-left: 5px" required name="status" value="1"/> 
                                                </td>
                                                <td>

                                                </td>
                                            </tr>

                                            <tr>
                                                <th colspan="2" style="padding: 3px 0 3px 0;">
                                            <center>
                                                <input type="submit"class="btn2" name="UpDoctor" value="Submit" />
                                            </center>
                                            </th>
                                            </tr>
                                            <%
                                                }
                                                con.close();
                                            %>
                                        </table>
                                    </form>
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