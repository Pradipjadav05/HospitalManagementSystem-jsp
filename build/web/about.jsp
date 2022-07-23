<%-- 
    Document   : about
    Created on : 18 Aug, 2021, 10:33:08 AM
    Author     : Keyur
--%>
<%
    if(session.getAttribute("p_id") != null)
    {

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>About Us | Medico</title>
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
    </head>
    <body>
        <!-- Header -->
        <%@include file="Header.jsp" %>
        <!-- END Header -->

        <br><br><br> <br><br> 

        <!-- ======= About Us Section ======= -->
        <section id="about" class="about">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>About Us</h2>
                </div>

                <div class="row">
                    <div class="col-lg-6" data-aos="fade-right">
                        <img src="assets/img/about.jpg" class="img-fluid" alt="">
                    </div>
                    <div class="col-lg-6 pt-4 pt-lg-0 content" data-aos="fade-left" style = "text-align: justify">
                        <h3>Our Orgenization</h3>                        
                        <p style="content:justify">
                            With a mission to extend World Class healthcare solutions to the community through advances in medical technology, medical 
                            research and by adopting best man management practices -Medico Hospitals has launched its newly built flagship hospital in 
                            Rural Area. The facility is among Western India's largest private hospitals.
                        </p>
                        <p>
                            The hospital complex is located in the posh western suburb of Rural Area, just 20 mins from the airport and in close vicinity 
                            of most hotels and shopping malls. With vast open spaces around the hospital its positioned & designed to ensure that patients 
                            and caregivers get a feel of the skyline of Rural Area from their rooms and never feel claustrophobic. Its an attempt to
                            give a feel of home @ hospital. 
                        </p>

                    </div>

                    <div style='margin-top:10px; text-align: justify'>
                        <p>
                            Medico Hospitals is a 550 bed Super speciality medical institution spanning 16 floors and 2 basement floors. This world class
                            & highly sophisticated medical establishment offers all major medical specialities, subspecialities, investigation & diagnostics
                            facility, rehabilitation & physical therapy care under one roof. Hospital’s design ensures higher energy efficiency by allowing
                            greater permeation of sun light throughout the day and harnessing solar energy for hot water provisioning throughout the hospital
                            complex. 
                        </p>
                        <p>
                            Medico Hospitals has very selectively appointed the best of Indian Trained Medical Specialists, Paramedics, Nursing & 
                            Administrative Staff. This would be amongst the handful hospitals in its league which have dedicated full time medical 
                            specialists. This shall ensure complete round the clock care and availability.
                        </p>
                        <p>
                            Please be reminded that at Medico, we are committed to Spreading Smiles, along with our quality of personalized care our 
                            pricing too shall bring smiles.
                        </p>

                        <p>
                            At Medico Hospitals, we are committed to LIFE.
                        </p>

                        <p>
                            We, at Medico Hospitals are committed to excellence and quality with an established focus on the well-being of our patients.
                            We provide the right mix of cutting edge technology, warmth and compassionate care. Backed by the best team of medical
                            professionals and procedures, we offer the best in private healthcare in a cost effective way.
                        </p>

                        <p>
                            We provide the highest standard of clinical skills and nursing care across an extensive range of specialities and attract 
                            world-class doctors and surgeons from leading hospitals. 
                        </p>

                        <p>
                            Located in Rural Area, Gujarat, the hospital offers locational advantage and world class infrastructure for the patients and 
                            their visitors and is one of the most modern private hospitals in India, equipped with state of art technology.
                        </p>

                        <p>
                            Delivering an array of medical services, we offer in-patient, out-patient, day care treatment, surgery, emergency and trauma 
                            care in the finest surroundings. Whats more, these services can be provided as a part of your own private health insurance 
                            scheme or self finance as the case may be.
                        </p>

                        <p>
                            We believe that focusing on the comfort of our patients helps in their recovery. We cater to individual tastes and requirements
                            to ensure that patients feel as relaxed and comfortable as possible during their stay.
                        </p>

                        <p>
                            We bring you details about our facilities and the extensive range of medical specialities available at Medico Hospitals.
                        </p>
                        <hr>
                        <p>
                            For any queries at any point in time write to , <a href="contact.jsp">medicohospital@gmail.com</a>

                        </p>
                    </div>
                </div>

            </div>
        </section><!-- End About Us Section -->

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
    }
else{
response.sendRedirect("index.jsp");
}
%>