<%-- 
    Document   : feedback
    Created on : Sep 6, 2021, 6:01:29 PM
    Author     : HP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    if (session.getAttribute("p_id") != null) {
        String p_id = (String) session.getAttribute("p_id");
        String name = (String) session.getAttribute("name");
        String email = (String) session.getAttribute("email");
        String mobile = (String) session.getAttribute("mobile");
%>
<%
    Class.forName("com.mysql.jdbc.Driver");

    String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
    Connection con = DriverManager.getConnection(mysqlURL);
    Statement stm = con.createStatement();

    String sql = "SELECT * FROM patient where p_id='" + p_id + "' ";
    ResultSet rs = stm.executeQuery(sql);
    if (rs.next()) {
        String city = rs.getString(6);
        String district = rs.getString(7);
        String zipcode = rs.getString(8);
        String address = rs.getString(9);


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile | Medico</title>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Doctor</title>
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
    </head>
    <style>

        /*******************************/
        /********* FEEDBACK / OREDER FORM  CSS *********/
        /*******************************/

        .wrapper {
            position: center;
            display: inline-block;
            border: none;
            font-size: 14px;
            margin: 0px auto;
            left: 50%;
            transform: translateX(-2%);
        }

        .wrapper input {
            border: 0;
            width: 1px;
            height: 1px;
            overflow: hidden;
            position: absolute !important;
            clip: rect(1px 1px 1px 1px);
            clip: rect(1px, 1px, 1px, 1px);
            opacity: 0;
        }

        .wrapper label {
            position: relative;
            float: right;
            color: #C8C8C8;
        }

        .wrapper label:before {
            margin: 5px;
            content: "\f005";
            font-family: FontAwesome;
            display: inline-block;
            font-size: 1.5em;
            color: #ccc;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        .wrapper input:checked ~ label:before {
            color: #65c9cd; 
        }

        .wrapper label:hover ~ label:before {
            color: #65c9cd; 
        }

        .wrapper label:hover:before {
            color: #65c9cd;
        }

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
        }

        .btn2:hover {
            color: white;
            background:#65c9cd;
        }

        /*******************************/
        /********* END FEEDBACK / ORDER FORM  CSS *********/
        /*******************************/
        input.form-control:read-only {
            background-color: #fff;
        }

    </style>

    <body>
        <%@include file="Header.jsp" %>
        <br>
        <br>
        <br>
        <section id="doctors" class="doctors section-bg">
            <div class="container rounded bg-white mt-5 mb-5" data-aos="fade-up" style="box-shadow:
                 inset 0 -3em 3em rgba(0,0,0,0.1),
                 0 0  0 2px rgb(255,255,255),
                 0.3em 0.3em 1em rgba(0,0,0,0.3);">

                <div class="row">
                    <div class="col-md-3 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                            <span class="font-weight-bold"><% out.print(name); %></span>
                            <span> </span>
                        </div>
                    </div>
                    <div class="col-md-8 border-right">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="text-right">Profile Settings</h4>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-12">
                                    <label class="labels">Name</label>
                                    <input type="text" class="form-control"name="name" placeholder="Name" value="<% out.print(name); %>" readonly ></div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-12">
                                    <label class="labels">Email ID</label>
                                    <input type="text" class="form-control" name="email" placeholder="enter email id" value="<% out.print(email); %>" readonly></div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-12">
                                    <label class="labels">Mobile Number</label>
                                    <input type="text" class="form-control" name="mobile" placeholder="enter phone number" value="<% out.print(mobile); %>"readonly></div>
                                <div>
                                    <div class="row mt-3">
                                        <div class="col-md-6">
                                            <label class="labels">City</label>
                                            <input type="text" class="form-control" name="city" placeholder="enter your City" value="<% out.print(city); %>"readonly>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="labels">Distric</label>
                                            <input type="text" class="form-control" name="district" placeholder="enter your  Distric" value="<% out.print(district); %>" readonly>
                                        </div>
                                    </div>

                                    <div class="row mt-3">
                                        <div class="col-md-12">
                                            <label class="labels">ZipCode</label>
                                            <input type="text" class="form-control" name="zipcode" placeholder="enter Zipcode" value="<% out.print(zipcode); %>" readonly>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-md-12">
                                            <label class="labels">Address</label>
                                            <input type="text" class="form-control" name="address" placeholder="enter address " value="<% out.print(address); %>" readonly>
                                        </div>
                                    </div>

                                    <!-- <div class="mt-5 text-center"><button class="btn2" type="button">Save Profile</button></div>-->
                                </div>
                            </div>
                            <!--
                            <div class="col-md-4">
                                <div class="p-3 py-5">
                                    <div class="d-flex justify-content-between align-items-center experience"><span>Edit Experience</span><span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Experience</span></div><br>
                                    <div class="col-md-12"><label class="labels">Experience in Designing</label><input type="text" class="form-control" placeholder="experience" value=""></div> <br>
                                    <div class="col-md-12"><label class="labels">Additional Details</label><input type="text" class="form-control" placeholder="additional details" value=""></div>
                                </div>
                            </div>
                            -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%
            }
            con.close();
        %>
        <%
            Class.forName("com.mysql.jdbc.Driver");

            String mysqlURL2 = "jdbc:mysql://localhost:3306/hssra?user=root";
            Connection con2 = DriverManager.getConnection(mysqlURL2);
            Statement stm2 = con2.createStatement();

            String sql2 = "SELECT * FROM appointment WHERE p_id='" + p_id + "' ";
            ResultSet rs2 = stm2.executeQuery(sql2);

        %>
        <section id="doctors" class="doctors section-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Appointment History</h2>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Appointment ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Mobile Number</th>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Doctor</th>
                                <th>Message</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%                                while (rs2.next()) {
                                    String Aid = rs2.getString(1);
                                    String name1 = rs2.getString(3);
                                    String email1 = rs2.getString(4);
                                    String mobile1 = rs2.getString(5);
                                    String date1 = rs2.getString(6);
                                    String time1 = rs2.getString(7);
                                    String did = rs2.getString(8);
                                    String message1 = rs2.getString(9);
                                    String status = rs2.getString(10);

                            %>
                            <tr>
                                <td><% out.print(Aid);%></td>
                                <td><% out.print(name1);%></td>
                                <td><% out.print(email1);%></td>
                                <td><% out.print(mobile1);%></td>
                                <td><% out.print(date1);%></td>
                                <td><% out.print(time1);%></td>
                                <%
                                    Statement stm3 = con2.createStatement();

                                    String sql3 = "SELECT * FROM doctor WHERE d_id='" + did + "' ";
                                    ResultSet rs3 = stm3.executeQuery(sql3);
                                    if (rs3.next()) {
                                        String fname = rs3.getString(2);
                                        String lname = rs3.getString(3);

                                %>
                                <td><% out.print(fname + " " + lname);%></td>
                                <% } %>
                                <td><% out.print(message1);%></td>
                                <%
                                    if (status.equals("0")) {
                                %>
                                <td>				
                                    <input type="checkbox"  disabled />
                                </td>
                                <%
                                } else {
                                %>
                                <td>				
                                    <input type="checkbox" checked disabled />
                                </td>
                                <%
                                    }
                                %>

                                <td>				
                                    <a href="deleteAppointment.jsp?p_id=<%= p_id%>"><i class="fa fa-trash-o" style="font-size:30px; color: red;"></i></a>
                                </td>
                            </tr>
                            <%

                                }
                                rs2.close();
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <%
            int i = 1;
            Class.forName("com.mysql.jdbc.Driver");

            String mysqlURL3 = "jdbc:mysql://localhost:3306/hssra?user=root";
            Connection con3 = DriverManager.getConnection(mysqlURL3);
            Statement stm3 = con3.createStatement();

            String sql3 = "SELECT * FROM treatment WHERE p_id='" + p_id + "' ";
            ResultSet rs3 = stm3.executeQuery(sql3);

        %>
        <section id="doctors" class="doctors section-bg">
            <div class="container" data-aos="fade-up">
                <div>
                    <a class="btn btn-info" href="doctorPenal.jsp" style='font-size:20px'><i class='fas fa-arrow-left'></i>&nbsp;Back</a>

                </div>
                <div class="section-title">
                    <h2>Treatment History</h2>
                    
                    <table class="table table-striped" id="myTable">
                        <thead>
                            <tr>
                                <th>Sr No.</th>

                                <th>Patient Name</th>

                                <th>Doctor</th>

                                <th>Treatment</th>
                                <th>Medicine</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%                                while (rs3.next()) {
                                    String pid = rs3.getString(1);
                                    String name2 = rs3.getString(2);
                                    String Doctor = rs3.getString(4);
                                    String treatment = rs3.getString(5);
                                    String medicine = rs3.getString(6);
                            %>
                            <tr>
                                <td><% out.print(i); %></td>
                                <td><% out.print(name2); %></td>
                                <td><% out.print(Doctor); %></td>
                                <td><% out.print(treatment); %></td>
                                <td><% out.print(medicine); %></td>
                                <td></td>
                            </tr>
                            <%
                                i++;
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <%
            con3.close();
        %>
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
        <script href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

        <!-- End Footer -->
    </body>
</html>
<%    } else {
        response.sendRedirect("index.jsp");
    }
%>