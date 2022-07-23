<%-- 
    Document   : departments
    Created on : Aug 18, 2021, 11:06:47 AM
    Author     : Keyur
--%>
<%
    if (session.getAttribute("p_id") != null) {


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Department | Medico</title>
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

    </head>
    <body>
        <!-- ======= Header ======= -->
        <%@include file="Header.jsp" %>
        <!-- End Header -->
        <!-- ======= About Us Section ======= -->
        <br>
        <br>
        <br>
        <br>
        <!-- ======= Departments Section ======= -->
        <section id="departments" class="departments">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Departments</h2>
                </div>

                <div class="row" data-aos="fade-up" data-aos-delay="100">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <ul class="nav nav-tabs flex-column">
                            <li class="nav-item">
                                <a class="nav-link active show" data-bs-toggle="tab" data-bs-target="#tab-1">
                                    <h4>Anesthesia</h4>
                                </a>
                            </li>

                            <li class="nav-item mt-2">
                                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-3">
                                    <h4>Cardiac Surgery</h4>
                                </a>
                            </li>


                            <li class="nav-item mt-2">
                                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-6">
                                    <h4>Dermatology</h4>
                                </a>
                            </li>


                            <li class="nav-item mt-2">
                                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-9">
                                    <h4>Gynecology, Obstetrics, Fetal Medicine & Genetic Sciences</h4>
                                </a>
                            </li>
                            <li class="nav-item mt-2">
                                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-10">
                                    <h4>GI Surgery</h4>
                                </a>
                            </li>

                            <li class="nav-item mt-2">
                                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-12">
                                    <h4>Liver Transplant </h4>
                                </a>
                            </li>

                            <li class="nav-item mt-2">
                                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-14">
                                    <h4>Neurology</h4>
                                </a>
                            </li>




                            <li class="nav-item mt-2">
                                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-20">
                                    <h4>Radiology</h4>
                                </a>
                            </li>
                            <li class="nav-item mt-2">
                                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-21">
                                    <h4>Urology</h4>
                                </a>
                            </li>


                        </ul>
                    </div>
                    <div class="col-lg-8">
                        <div class="tab-content">
                            <div class="tab-pane active show" id="tab-1">
                                <h3>Anesthesia</h3>
                                <p class="fst-italic"></p>
                                <img src="assets/dept_img/an.jpg" alt="" class="img-fluid">
                                <p>Anesthesiologists at Medicover strive hard to make the hospital experience as pleasant as possible. They not only manage the patient’s anxiety before surgery, but also his/her pain after the surgery. Special emphasis is on supporting the bodily functions and reducing the risks associated with surgery.</p>
                            </div>

                            <div class="tab-pane" id="tab-3">
                                <h3>Cardiac Surgery</h3>
                                <p class="fst-italic"></p>
                                <img src="assets/dept_img/CardiacSurgery.jpg" alt="" class="img-fluid">
                                <p>Cardiac surgery, or cardiovascular surgery, is surgery on the heart or great vessels performed by cardiac surgeons. It is often used to treat complications of ischemic heart disease (for example, with coronary artery bypass grafting); to correct congenital heart disease; or to treat valvular heart disease from various causes, including endocarditis, rheumatic heart disease, and atherosclerosis. It also includes heart transplantation. </p>
                            </div>


                            <div class="tab-pane" id="tab-6">
                                <h3>Dermatology</h3>
                                <p class="fst-italic"></p>
                                <img src="assets/dept_img/Dermatology.jpg" alt="" class="img-fluid">
                                <p>COVID-19 safety info
                                    Image result for Dermatology
                                    Image result for Dermatology
                                    Image result for Dermatology
                                    Image result for Dermatology
                                    Image result for Dermatology
                                    Image result for Dermatology
                                    View all
                                    Dermatology is the branch of medicine dealing with the skin. It is a speciality with both medical and surgical aspects. A dermatologist is a specialist medical doctor who manages diseases related to skin, hair, nails, and some cosmetic problems.</p>
                            </div>


                            <div class="tab-pane" id="tab-9">
                                <h3>Gynecology, Obstetrics, Fetal Medicine & Genetic Sciences</h3>
                                <p class="fst-italic"></p>
                                <img src="assets/dept_img/Gynecology.jpg" alt="" class="img-fluid">
                                <p>Genetics in Medicine has published numerous articles of interest to clinicians working in Obstetrics and Gynecology. The editors have compiled the most pertinent articles to highlight a few that will be most useful for busy practitioners and researchers in the Ob/Gyn field.</p>
                                <p>Relevant subject areas include but are not limited to prenatal diagnosis, non-invasive prenatal screening, carrier screening, infertility, and prenatal counseling among many others.</p>
                            </div>
                            <div class="tab-pane" id="tab-10">
                                <h3>GI Surgery</h3>
                                <p class="fst-italic"></p>
                                <img src="assets/dept_img/GISurgery.jpg" alt="" class="img-fluid">
                                <p>What is gastrointestinal surgery? Gastrointestinal surgery is a treatment for diseases of the parts of the body involved in digestion. This includes the esophagus (ee-sof-uh-gus), stomach, small intestine, large intestine, and rectum. It also includes the liver, gallbladder, and pancreas.</p>
                            </div>

                            <div class="tab-pane" id="tab-12">
                                <h3>Liver Transplant</h3>
                                <p class="fst-italic"></p>
                                <img src="assets/dept_img/LT.jpg" alt="" class="img-fluid">
                                <p>A liver transplant is a surgical procedure that removes a liver that no longer functions properly (liver failure) and replaces it with a healthy liver from a deceased donor or a portion of a healthy liver from a living donor. Your liver is your largest internal organ and performs several critical functions, including: Processing nutrients, medications and hormones
                                    Producing bile, which helps the body absorb fats, cholesterol and fat-soluble vitamins
                                </p>

                                <ul>
                                    <li>Making proteins that help the blood clot</li>
                                    <li>Removing bacteria and toxins from the blood</li>
                                    <li>Preventing infection and regulating immune responses</li>
                                </ul>
                                <p>
                                    Liver transplant is usually reserved as a treatment option for people who have significant complications due to end-stage chronic liver disease. Liver transplant may also be a treatment option in rare cases of sudden failure of a previously healthy liver.
                                    The number of people waiting for a liver transplant greatly exceeds the number of available deceased-donor livers.
                                    Living-donor liver transplant is an alternative to waiting for a deceased-donor liver to become available. Living-donor liver transplant is possible because the human liver regenerates and returns to its normal size shortly after surgical removal of part of the organ.In 2017, about 8,000 liver transplants were performed in the U.S. among both adults and children. Of those, about 360 involved livers from living donors. At the same time, approximately 11,500 people were registered on the waiting list for a liver transplant</p>

                            </div>

                            <div class="tab-pane" id="tab-15">
                                <h3>Neurosurgery</h3>
                                <p class="fst-italic"></p>
                                <img src="assets/dept_img/Neurosurgery.jpg" alt="" class="img-fluid">
                                <p>Neurosurgery is surgery of the nervous system.
                                    It is the medical specialty concerned with the diagnosis and treatment of of patients with injury to, or diseases/disorders of the brain, spinal cord and spinal column, and peripheral nerves within all parts of the body.</p>
                            </div>


                            <div class="tab-pane" id="tab-20">
                                <h3>Radiology</h3>
                                <p class="fst-italic"></p>
                                <img src="assets/dept_img/Radiology.jpg" alt="" class="img-fluid">
                                <p>Radiologists are medical doctors that specialize in diagnosing and treating injuries and diseases using medical imaging (radiology) procedures (exams/tests) such as X-rays, computed tomography (CT), magnetic resonance imaging (MRI), nuclear medicine, positron emission tomography (PET) and ultrasound.</p>
                            </div>
                            <div class="tab-pane" id="tab-21">
                                <h3>Urology</h3>
                                <p class="fst-italic"></p>
                                <img src="assets/dept_img/Urology.jpg" alt="" class="img-fluid">
                                <p>Urology (from Greek οὖρον ouron "urine" and -λογία -logia "study of"), also known as genitourinary surgery, is the branch of medicine that focuses on surgical and medical diseases of the male and female urinary-tract system and the male reproductive organs.</p>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- End Departments Section -->

        <!-- ======= Footer ======= -->
        <%@ include file = "footer.jsp" %>
        <!-- End Footer -->
        <!--
          <div id="preloader"></div>
          <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        -->
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
<%    } else {
        response.sendRedirect("index.jsp");
    }
%>