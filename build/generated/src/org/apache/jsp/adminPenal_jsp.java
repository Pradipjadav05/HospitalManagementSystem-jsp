package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminPenal_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/adminHeader.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Feedback</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("\n");
      out.write("        <title>ADMIN</title>\n");
      out.write("        <meta content=\"\" name=\"description\">\n");
      out.write("        <meta content=\"\" name=\"keywords\">\n");
      out.write("\n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link href=\"assets/img/favicon.png\" rel=\"icon\">\n");
      out.write("        <link href=\"assets/img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("        <!-- Google Fonts -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Vendor CSS Files -->\n");
      out.write("        <link href=\"assets/vendor/animate.css/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/aos/aos.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/glightbox/css/glightbox.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/swiper/swiper-bundle.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Template Main CSS File -->\n");
      out.write("        <link href=\"assets/css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assests/css/AdminStyle.ss\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            .cards {\n");
      out.write("    padding: 50px;\n");
      out.write("    width: 90%;\n");
      out.write("    margin-bottom: 50px;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    \n");
      out.write("    box-shadow:\n");
      out.write("    0 2.8px 2.2px rgba(0, 0, 0, 0.034),\n");
      out.write("    0 6.7px 5.3px rgba(0, 0, 0, 0.048),\n");
      out.write("    0 12.5px 10px rgba(0, 0, 0, 0.06),\n");
      out.write("    0 22.3px 17.9px rgba(0, 0, 0, 0.072),\n");
      out.write("    0 41.8px 33.4px rgba(0, 0, 0, 0.086),\n");
      out.write("    0 100px 80px rgba(0, 0, 0, 0.12)\n");
      out.write("}\n");
      out.write("\n");
      out.write(".cards__item {\n");
      out.write("    \n");
      out.write("    /*flex-basis: 25%;*/\n");
      out.write("    width: 25%;\n");
      out.write("    padding-left: 8px;\n");
      out.write("    padding-right: 8px;\n");
      out.write("    margin: 20px;\n");
      out.write("    display: inline-block;\n");
      out.write("    box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("<!-- ======= Top Bar ======= -->\n");
      out.write("<div id=\"topbar\" class=\"d-flex align-items-center fixed-top\">\n");
      out.write("    <div class=\"container d-flex align-items-center justify-content-center justify-content-md-between\">\n");
      out.write("        <div class=\"align-items-center d-none d-md-flex\">\n");
      out.write("            <i class=\"bi bi-clock\"></i> Monday - Saturday, 8AM to 10PM\n");
      out.write("        </div>\n");
      out.write("        <div class=\"d-flex align-items-center\">\n");
      out.write("            <i class=\"bi bi-phone\"></i> Call us now :&nbsp; +91 635 334 2209 , &nbsp;&nbsp;+91 635 343 5399 , &nbsp;&nbsp; +91 903 337 2216     \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<header id=\"header\" class=\"fixed-top\">\n");
      out.write("    <div class=\"container d-flex align-items-center\">\n");
      out.write("\n");
      out.write("        <a href=\"index.html\" class=\"logo me-auto\"><img src=\"assets/img/logo.png\" alt=\"\"></a>\n");
      out.write("        <!-- Uncomment below if you prefer to use an image logo -->\n");
      out.write("        <!-- <h1 class=\"logo me-auto\"><a href=\"index.html\">Medicio</a></h1> -->\n");
      out.write("\n");
      out.write("        <nav id=\"navbar\" class=\"navbar order-last order-lg-0\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a class=\"nav-link scrollto \" href=\"adminPenal.jsp\">Home</a></li>\n");
      out.write("                <li><a class=\"nav-link scrollto \" href=\"adminDoctorList.jsp\">Doctor</a></li>\n");
      out.write("                <li><a class=\"nav-link scrollto\" href=\"adminPatientList.jsp\">Patient</a></li>\n");
      out.write("                <li><a class=\"nav-link scrollto\" href=\"adminContact.jsp\">Contact</a></li>\n");
      out.write("                <li><a class=\"nav-link scrollto\" href=\"adminFeedback.jsp\">Feedback</a></li>\n");
      out.write("                <li><a class=\"nav-link scrollto\" href=\"adminProfile.jsp\"><i class=\"fa fa-user\" style=\"font-size:29px\"></i></a></li>\n");
      out.write("\n");
      out.write("                <!--\n");
      out.write("                <li class=\"dropdown\"><a href=\"#\"><span>Drop Down</span> <i class=\"bi bi-chevron-down\"></i></a>\n");
      out.write("                  <ul>\n");
      out.write("                    <li><a href=\"#\">Drop Down 1</a></li>\n");
      out.write("                    <li class=\"dropdown\"><a href=\"#\"><span>Deep Drop Down</span> <i class=\"bi bi-chevron-right\"></i></a>\n");
      out.write("                      <ul>\n");
      out.write("                        <li><a href=\"#\">Deep Drop Down 1</a></li>\n");
      out.write("                        <li><a href=\"#\">Deep Drop Down 2</a></li>\n");
      out.write("                        <li><a href=\"#\">Deep Drop Down 3</a></li>\n");
      out.write("                        <li><a href=\"#\">Deep Drop Down 4</a></li>\n");
      out.write("                        <li><a href=\"#\">Deep Drop Down 5</a></li>\n");
      out.write("                      </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li><a href=\"#\">Drop Down 2</a></li>\n");
      out.write("                    <li><a href=\"#\">Drop Down 3</a></li>\n");
      out.write("                    <li><a href=\"#\">Drop Down 4</a></li>\n");
      out.write("                  </ul>\n");
      out.write("                </li>\n");
      out.write("                -->\n");
      out.write("\n");
      out.write("            </ul>\n");
      out.write("            <i class=\"bi bi-list mobile-nav-toggle\"></i>\n");
      out.write("        </nav><!-- .navbar -->\n");
      out.write("\n");
      out.write("        <a href=\"#\" class=\"appointment-btn scrollto\"><span class=\"d-none d-md-inline\">Log</span> out</a>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</header>");
      out.write("\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <section id=\"doctors\" class=\"doctors section-bg\">\n");
      out.write("            <div class=\"container\" data-aos=\"fade-up\">\n");
      out.write("\n");
      out.write("                <div class=\"section-title\">\n");
      out.write("                    <h2>Welcome Admin</h2>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"container text-center\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <center>\n");
      out.write("                            <div class=\"cards\">\n");
      out.write("                                <!-- A card with given width -->\n");
      out.write("                                <a href=\"adminDoctorList.jsp\">\n");
      out.write("                                    <div class=\"cards__item\">\n");
      out.write("                                        <h2>Doctor</h2>\n");
      out.write("                                        <h2>1</h2>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                                <a href=\"\">\n");
      out.write("                                    <div class=\"cards__item\">\n");
      out.write("                                        <h2>Patient</h2>\n");
      out.write("                                        <h2>1</h2>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                                <a href=\"\">\n");
      out.write("                                    <div class=\"cards__item\">\n");
      out.write("                                        <h2>Appointment</h2>\n");
      out.write("                                        <h2>1</h2>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                                <a href=\"\">\n");
      out.write("                                    <div class=\"cards__item\">\n");
      out.write("                                        <h2>FeedBack</h2>\n");
      out.write("                                        <h2>1</h2>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                                <a href=\"\">\n");
      out.write("                                    <div class=\"cards__item\">\n");
      out.write("                                        <h2>Contact</h2>\n");
      out.write("                                        <h2>1</h2>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                                <!-- Repeat other cards -->\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </center>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- ======= Footer ======= -->\n");
      out.write("        ");
      out.write("<footer id=\"footer\">\n");
      out.write("    <div class=\"footer-top\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("\n");
      out.write("          <div class=\"col-lg-3 col-md-6\">\n");
      out.write("            <div class=\"footer-info\">\n");
      out.write("              <h3>Medicio</h3>\n");
      out.write("              <p>\n");
      out.write("                Shree Swaminarayn Mandir <br>\n");
      out.write("                Sardhar-360025, Rajkot<br><br>\n");
      out.write("                <strong>Phone:</strong> +91 9547 625 521<br>\n");
      out.write("                <strong>Email:</strong> sardharhospital@gmail.com<br>\n");
      out.write("              </p>\n");
      out.write("              <div class=\"social-links mt-3\">\n");
      out.write("                <a href=\"#\" class=\"twitter\"><i class=\"bx bxl-twitter\"></i></a>\n");
      out.write("                <a href=\"#\" class=\"facebook\"><i class=\"bx bxl-facebook\"></i></a>\n");
      out.write("                <a href=\"#\" class=\"instagram\"><i class=\"bx bxl-instagram\"></i></a>\n");
      out.write("                <a href=\"#\" class=\"google-plus\"><i class=\"bx bxl-skype\"></i></a>\n");
      out.write("                <a href=\"#\" class=\"linkedin\"><i class=\"bx bxl-linkedin\"></i></a>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class=\"col-lg-2 col-md-6 footer-links\">\n");
      out.write("            <h4>Useful Links</h4>\n");
      out.write("            <ul>\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"home.jsp\">Home</a></li>\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"about.jsp\">About us</a></li>\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"services.jsp\">Services</a></li>\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"department.jsp\">Department</a></li>\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"doctor.jsp\">Doctor</a></li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class=\"col-lg-3 col-md-6 footer-links\">\n");
      out.write("            <h4>Our Services</h4>\n");
      out.write("            <ul>\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Web Design</a></li>\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Web Development</a></li>\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Product Management</a></li>\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Marketing</a></li>\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Graphic Design</a></li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class=\"col-lg-4 col-md-6 footer-newsletter\">\n");
      out.write("            <h4>Our Newsletter</h4>\n");
      out.write("            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>\n");
      out.write("            <form action=\"\" method=\"post\">\n");
      out.write("              <input type=\"email\" name=\"email\"><input type=\"submit\" value=\"Subscribe\">\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"copyright\">\n");
      out.write("        &copy; Copyright <strong><span>Medicio</span></strong>. All Rights Reserved\n");
      out.write("      </div>\n");
      out.write("      <div class=\"credits\">\n");
      out.write("        <!-- All the links in the footer should remain intact. -->\n");
      out.write("        <!-- You can delete the links only if you purchased the pro version. -->\n");
      out.write("        <!-- Licensing information: https://bootstrapmade.com/license/ -->\n");
      out.write("        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medicio-free-bootstrap-theme/ -->\n");
      out.write("        Designed by <a href=\"https://bootstrapmade.com/\">BootstrapMade</a>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </footer>");
      out.write("\n");
      out.write("        <div id=\"preloader\"></div>\n");
      out.write("        <a href=\"#\" class=\"back-to-top d-flex align-items-center justify-content-center\"><i class=\"bi bi-arrow-up-short\"></i></a>\n");
      out.write("\n");
      out.write("        <!-- Vendor JS Files -->\n");
      out.write("        <script src=\"assets/vendor/aos/aos.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/glightbox/js/glightbox.min.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/php-email-form/validate.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/purecounter/purecounter.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/swiper/swiper-bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Template Main JS File -->\n");
      out.write("        <script src=\"assets/js/main.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- End Footer -->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}