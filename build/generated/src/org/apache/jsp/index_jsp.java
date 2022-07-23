package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("\r\n");
      out.write("        <title>Sign In | PKD </title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <!--===============================================================================================\t\r\n");
      out.write("                <link rel=\"icon\" type=\"image/png\" href=\"./login/images/icons/favicon.ico\"/>-->\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"./login/vendor/bootstrap/css/bootstrap.min.css\">\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"./login/fonts/font-awesome-4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"./login/fonts/iconic/css/material-design-iconic-font.min.css\">\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"./login/vendor/animate/animate.css\">\r\n");
      out.write("        <!--===============================================================================================-->\t\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"./login/vendor/css-hamburgers/hamburgers.min.css\">\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"./login/vendor/animsition/css/animsition.min.css\">\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"./login/vendor/select2/select2.min.css\">\r\n");
      out.write("        <!--===============================================================================================-->\t\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"./login/vendor/daterangepicker/daterangepicker.css\">\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"./login/css/util1.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"./login/css/main1.css\">\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"limiter\" >\r\n");
      out.write("            <div class=\"container-login100\">\r\n");
      out.write("                <div class=\"wrap-login100 p-t-25 \">\r\n");
      out.write("                    <form action=\"login_pro.jsp\" method=\"POST\">\r\n");
      out.write("                        <span class=\"login100-form-title p-b-37\">\r\n");
      out.write("                            Sign In\r\n");
      out.write("                        </span>\r\n");
      out.write("                        <span class=\"login100-form-avatar\">\r\n");
      out.write("                            <img src=\"assets/img/logo.png\">\r\n");
      out.write("                            <!--<img src=\"../login/images/PKD.png\" alt=\"AVATAR\">-->\r\n");
      out.write("                        </span>\r\n");
      out.write("                        <div class=\"wrap-input100 validate-input m-t-50 m-b-35\" data-validate = \"Enter username\">\r\n");
      out.write("                            <input class=\"input100\" type=\"text\" name=\"email\">\r\n");
      out.write("                            <span class=\"focus-input100\" data-placeholder=\"Email\"></span>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"wrap-input100 validate-input m-b-50\" data-validate=\"Enter password\">\r\n");
      out.write("                            <input class=\"input100\" type=\"password\" name=\"password\">\r\n");
      out.write("                            <span class=\"focus-input100\" data-placeholder=\"Password\"></span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"container-login100-form-btn\">\r\n");
      out.write("                            <button class=\"login100-form-btn\" name=\"login\">\r\n");
      out.write("                                Login\r\n");
      out.write("                            </button>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <ul class=\"login-more p-t-50\">\r\n");
      out.write("                            <li class=\"m-b-8\">\r\n");
      out.write("                                <span class=\"txt1\">\r\n");
      out.write("                                    Forgot\r\n");
      out.write("                                </span>\r\n");
      out.write("\r\n");
      out.write("                                <a href=\"#\" class=\"txt2\">\r\n");
      out.write("                                    Username / Password?\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <span class=\"txt1\">\r\n");
      out.write("                                    Don't have an account?\r\n");
      out.write("                                </span>\r\n");
      out.write("\r\n");
      out.write("                                <a href=\"registration.jsp\" class=\"txt2\">\r\n");
      out.write("                                    Sign Up\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <span class=\"txt1\">\r\n");
      out.write("                                    Doctor Login\r\n");
      out.write("                                </span>\r\n");
      out.write("\r\n");
      out.write("                                <a href=\"doctorlogin.jsp\" class=\"txt2\">\r\n");
      out.write("                                    Doctor\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <span class=\"txt1\">\r\n");
      out.write("                                    Admin Login\r\n");
      out.write("                                </span>\r\n");
      out.write("\r\n");
      out.write("                                <a href=\"admin.jsp\" class=\"txt2\">\r\n");
      out.write("                                    ADMIN\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div id=\"dropDownSelect1\"></div>\r\n");
      out.write("\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"./login/vendor/jquery/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"./login/vendor/animsition/js/animsition.min.js\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"./login/vendor/bootstrap/js/popper.js\"></script>\r\n");
      out.write("        <script src=\"./login/vendor/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"./login/vendor/select2/select2.min.js\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"./login/vendor/daterangepicker/moment.min.js\"></script>\r\n");
      out.write("        <script src=\"./login/vendor/daterangepicker/daterangepicker.js\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"./login/vendor/countdowntime/countdowntime.js\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"./login/js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
