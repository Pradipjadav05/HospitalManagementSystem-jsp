package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class doctorTreatment_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/doctorHeader.jsp");
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
      response.setContentType("text/html");
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
      out.write("\n");
      out.write("\n");

    if (session.getAttribute("d_id") != null) {

      out.write('\n');

    String Aid = request.getParameter("id");

    Class.forName("com.mysql.jdbc.Driver");

    String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
    Connection con = DriverManager.getConnection(mysqlURL);
    Statement stm = con.createStatement();

    String sql = "SELECT * FROM appointment where id='" + Aid + "' ";
    ResultSet rs = stm.executeQuery(sql);


      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Doctor List | Medico</title>\n");
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
      out.write("\n");
      out.write("        <!-- Template Main CSS File -->\n");
      out.write("        <link href=\"assets/css/style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"assests/css/AdminStyle.css\">\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            .btn2 {\n");
      out.write("                padding: 15px 30px;\n");
      out.write("                font-size: 16px;\n");
      out.write("                font-weight: 600;\n");
      out.write("                letter-spacing: 1px;\n");
      out.write("                color: #092a49;\n");
      out.write("                background: none;\n");
      out.write("                border: 3px solid #65c9cd;\n");
      out.write("                border-radius: 15px;\n");
      out.write("                transition: .3s;\n");
      out.write("                border-radius: 10px\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .btn2:hover {\n");
      out.write("                color: white;\n");
      out.write("                background:#65c9cd;\n");
      out.write("            }\n");
      out.write("            .container1 {\n");
      out.write("                display: flex;\n");
      out.write("\n");
      out.write("                /* OPTIONAL: Reverse the order of image and content */\n");
      out.write("                flex-direction: row-reverse;\n");
      out.write("                /* OPTIONAL: Spacing between items */\n");
      out.write("                margin: 16px 0;\n");
      out.write("                box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .container__image {\n");
      out.write("                width: 180px;\n");
      out.write("                height: 180px;\n");
      out.write("                padding: 10px;\n");
      out.write("            }\n");
      out.write("            .container__image img{\n");
      out.write("                border: 5px solid #65c9cd;\n");
      out.write("                border-radius: 50%;\n");
      out.write("                height: 100%;\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("            .container__feature {\n");
      out.write("                /* Take the remaining width */\n");
      out.write("                flex: 1;\n");
      out.write("                text-align: left;\n");
      out.write("                padding: 10px;\n");
      out.write("                margin-left: 20px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
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
      out.write("                <li><a class=\"nav-link scrollto\" href=\"doctorPenal.jsp\">Home</a></li>\n");
      out.write("                <li><a class=\"nav-link scrollto\" href=\"doctorAppointment.jsp\">Appointment</a></li>\n");
      out.write("                <li><a class=\"nav-link scrollto\" href=\"doctorTreatmentList.jsp\">Treatment</a></li>\n");
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
      out.write("            </ul>\n");
      out.write("            <i class=\"bi bi-list mobile-nav-toggle\"></i>\n");
      out.write("        </nav><!-- .navbar -->\n");
      out.write("\n");
      out.write("        <a href=\"logout.jsp\" class=\"appointment-btn scrollto\"><span class=\"d-none d-md-inline\">Logout</span></a>\n");
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
      out.write("                <div>\n");
      out.write("                    <a class=\"btn btn-info\" href=\"doctorAppointment.jsp\" style='font-size:20px'><i class='fas fa-arrow-left'></i>&nbsp;Back</a>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"section-title\">\n");
      out.write("                    <h2>Patient History</h2>\n");
      out.write("                    <table class=\"table table-striped\">\n");
      out.write("                        <thead>\n");
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Patient ID</th>\n");
      out.write("                                <th>Patient Name</th>\n");
      out.write("                                <th>MObile Number</th>\n");
      out.write("                                <th>Doctor</th>\n");
      out.write("                                <th>Date</th>\n");
      out.write("                                <th>Time</th>\n");
      out.write("                                <th>Treatment</th>\n");
      out.write("                                <th>Medicine</th>\n");
      out.write("                                <th>Status</th>\n");
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            ");
                                if (rs.next()) {
                                    String p_id = rs.getString(2);
                                    String name = rs.getString(3);
                                    String email = rs.getString(4);
                                    String mobile = rs.getString(5);
                                    String date = rs.getString(6);
                                    String time = rs.getString(7);
                                    String doctor_id = rs.getString(8);
                                    String message = rs.getString(9);
                                    
                                   // out.print(doctor_id);


                            
      out.write("\n");
      out.write("                            ");
                                Statement stm2 = con.createStatement();

                                String sql2 = "SELECT * FROM treatment where p_id='" + p_id + "' ";
                                ResultSet rs3 = stm2.executeQuery(sql2);


                            
      out.write("\n");
      out.write("                            ");
                                while (rs3.next()) {
                                    String p_name = rs3.getString(2);
                                    String doctor = rs3.getString(4);
                                    String treatment = rs3.getString(5);
                                    String medicine = rs3.getString(6);

                            
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
 out.print(p_id); 
      out.write("</td>\n");
      out.write("                                <td>");
 out.print(p_name); 
      out.write("</td>\n");
      out.write("                                <td>");
 out.print(mobile); 
      out.write("</td>\n");
      out.write("                                <td>");
 out.print(doctor); 
      out.write("</td>\n");
      out.write("                                <td>");
 out.print(date); 
      out.write("</td>\n");
      out.write("                                <td>");
 out.print(time); 
      out.write("</td>\n");
      out.write("                                <td>");
 out.print(treatment); 
      out.write("</td>\n");
      out.write("                                <td>");
 out.print(medicine); 
      out.write("</td>\n");
      out.write("                                \n");
      out.write("                                <td>");
 out.print("done"); 
      out.write("</td>\n");
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <section id=\"doctors\" class=\"doctors section-bg\">\n");
      out.write("            <div class=\"container\" data-aos=\"fade-up\">\n");
      out.write("                <div class=\"section-title\">\n");
      out.write("                    <h2>Make Treat</h2>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row mt-5\">\n");
      out.write("\n");
      out.write("                        <div class=\"col-lg-12\">\n");
      out.write("\n");
      out.write("                            <center>\n");
      out.write("\n");
      out.write("                                <center>\n");
      out.write("                                    <form action=\"doctorTreatment_pro.jsp\" method=\"POST\" enctype=\"\">\n");
      out.write("\n");
      out.write("                                        <table style=\"border: 3px solid #65c9cd;\" width=\"70%\" >\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th style=\"padding: 3px 0 3px 5px;\">Patient ID</th>\n");
      out.write("                                                <td><input type=\"text\" class=\"form-control\" name=\"p_id\"  style=\"width: 98%;margin-left: 5px\" value=\"");
 out.print(p_id); 
      out.write("\" required readonly></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th style=\"padding: 3px 0 3px 5px;\">Patient Name</th>\n");
      out.write("                                                <td><input type=\"text\" class=\"form-control\" name=\"p_name\"  style=\"width: 98%;margin-left: 5px\" value=\"");
 out.print(name); 
      out.write("\" required></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th style=\"padding: 3px 0 3px 5px;\">Mobile Number</th>\n");
      out.write("                                                <td><input type=\"text\" class=\"form-control\" name=\"mobile\"  style=\"width: 98%;margin-left: 5px\" value=\"");
 out.print(mobile); 
      out.write("\" required readonly></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                ");


                                                    Statement stm1 = con.createStatement();

                                                    String sql1 = "SELECT * FROM doctor where d_id = '" + doctor_id + "' ";
                                                    ResultSet rs1 = stm.executeQuery(sql1);
                                                    if (rs1.next()) {
                                                        String dname = rs1.getString(2) + " " + rs1.getString(3);
                                                        //out.print(dname);

                                                
      out.write("\n");
      out.write("                                                <th style=\"padding: 3px 0 3px 5px;\">Doctor</th>\n");
      out.write("                                                <td><input type=\"text\" class=\"form-control\" name=\"doctor\" style=\"width: 98%; margin-left: 5px\" value=\"");
 out.print(dname); 
      out.write("\" required readonly> </td>\n");
      out.write("                                                    ");

                                                        }
                                                    
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th style=\"padding: 3px 0 3px 5px;\">Treatment</th>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <textarea class=\"form-control\" id=\"message\" name=\"treatment\" required=\"required\" data-validation-required-message=\"Please enter your message\"style=\"width: 98%; margin-left: 5px\"></textarea></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th style=\"padding: 3px 0 3px 5px;\">Medicine</th>\n");
      out.write("                                                <td>                                                    \n");
      out.write("                                                    <textarea class=\"form-control\" id=\"message\" name=\"medicine\" required=\"required\" data-validation-required-message=\"Please enter your message\"style=\"width: 98%; margin-left: 5px\"></textarea>\n");
      out.write("                                                </td>\n");
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th style=\"padding: 3px 0 3px 5px;\">Status</th>\n");
      out.write("\n");
      out.write("                                                <td colspan=\"2\">\n");
      out.write("                                                    <input type=\"checkbox\" style=\"margin-left: 5px\" required name=\"status\" value=\"1\"/> \n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th colspan=\"2\" style=\"padding: 3px 0 3px 0;\">\n");
      out.write("                                            <center>\n");
      out.write("                                                <input type=\"submit\"class=\"btn2\" name=\"UpDoctor\" value=\"Update\" />\n");
      out.write("                                            </center>\n");
      out.write("                                            </th>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");

                                                }
                                                con.close();
                                            
      out.write("\n");
      out.write("                                        </table>\n");
      out.write("                                    </form>\n");
      out.write("                                </center> \n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
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
      out.write("        Designed by <a href=\"https://bootstrapmade.com/\">PKD</a>\n");
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

    } else {
        response.sendRedirect("index.jsp");
    }


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
