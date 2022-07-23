<%-- 
    Document   : feedback
    Created on : Sep 6, 2021, 6:01:29 PM
    Author     : HP
--%>
<%
    if (session.getAttribute("p_id") != null) {


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback | Medico</title>
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

    </style>
    <body>
        <%@include file="Header.jsp" %>
        <br>
        <br>
        <br>
        <section id="doctors" class="doctors section-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Feedback</h2>
                </div>

                <center>
                    <div class="col-md-7">
                        <div class="contact-form">
                            <div id="success"></div>
                            <form action="feedback_pro.jsp" method="POST" name="sentMessage" id="contactForm" novalidate="novalidate">

                                <div class="control-group">
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required="required" data-validation-required-message="Please enter your name" />
                                    <p class="help-block text-danger"></p>
                                </div>

                                <div class="control-group">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Your Email" required="required" data-validation-required-message="Please enter your email" />
                                    <p class="help-block text-danger"></p>
                                </div>

                                <div class="control-group">
                                    <input type="text" class="form-control" id="subject" name="complain" placeholder="Eny Complain For Waiter" required="required" data-validation-required-message="Please enter a subject" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <br>

                                <div class="control-group">
                                    <div style="display:inline-block;margin-right:150px">
                                        <h3>SERVICE</h3>
                                        <div class="wrapper" >
                                            <input name="ratingRadio" type="radio" id="st1" value="1" />
                                            <label for="st1"></label>
                                            <input name="ratingRadio" type="radio" id="st2" value="2" />
                                            <label for="st2"></label>
                                            <input name="ratingRadio" type="radio" id="st3" value="3" />
                                            <label for="st3"></label>
                                            <input name="ratingRadio" type="radio" id="st4" value="4" />
                                            <label for="st4"></label>
                                            <input name="ratingRadio" type="radio" id="st5" value="5" />
                                            <label for="st5"></label>
                                        </div>
                                    </div>
                                    <div style="display:inline-block;">
                                        <h3>CLEANNESS</h3>
                                        <div class="wrapper">
                                            <input name="ratingRadio1" type="radio" id="st11" value="1" />
                                            <label for="st11"></label>
                                            <input name="ratingRadio1" type="radio" id="st12" value="2" />
                                            <label for="st12"></label>
                                            <input name="ratingRadio1" type="radio" id="st13" value="3" />
                                            <label for="st13"></label>
                                            <input name="ratingRadio1" type="radio" id="st14" value="4" />
                                            <label for="st14"></label>
                                            <input name="ratingRadio1" type="radio" id="st15" value="5" />
                                            <label for="st15"></label>
                                        </div>
                                    </div>
                                </div>


                                <div class="control-group">
                                    <textarea class="form-control" id="message" name="suggestion" placeholder="Give Eny Suggestion" required="required" data-validation-required-message="Please enter your message"></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>

                                <div>
                                    <button class="btn2" type="submit">Send Message</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </center>
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
<%    } else {
        response.sendRedirect("index.jsp");
    }
%>