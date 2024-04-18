package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Sign-Up</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS/signup.css\"> \r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"background\">\r\n");
      out.write("        <div class=\"registercontainer\"><center>\r\n");
      out.write("            <h1>Register</h1>\r\n");
      out.write("            <form action=\"SignUpServlet\" method=\"POST\">\r\n");
      out.write("            <table border=\"0\">\r\n");
      out.write("                <tbody>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>First Name</th>                       \r\n");
      out.write("                        <td><input type=\"text\" name=\"fname\" placeholder =\"Enter your first name\" value=\"\" size=\"38\"  /></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>Last Name</th>                       \r\n");
      out.write("                        <td><input type=\"text\" name=\"lname\" placeholder =\"Enter your last name\" value=\"\" size=\"38\" /></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>Address</th>                        \r\n");
      out.write("                        <td><textarea name=\"address\" placeholder=\"Enter your residential address\" rows=\"4\" cols=\"37\" class=\"address\">\r\n");
      out.write("                            </textarea></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>Contact Number</th>                      \r\n");
      out.write("                        <td><input type=\"text\" name=\"contactno\" placeholder=\"Contact Number\"value=\"\" size=\"38\" /></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>E-mail</th>                        \r\n");
      out.write("                        <td><input type=\"email\" name=\"email\" placeholder=\"Enter your email address\" value=\"\" size=\"38\" /></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>Password</th>                       \r\n");
      out.write("                        <td><input type=\"password\" name=\"pwd\" placeholder=\"Create a strong password\" value=\"\" size=\"38\" />\r\n");
      out.write("                            <span style=\"display: none;\">Enter minimum 8 characters</span></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>Confirm Password</th>                        \r\n");
      out.write("                        <td><input type=\"password\" name=\"cpwd\" placeholder=\"Confirm password\" value=\"\" size=\"38\" />\r\n");
      out.write("                        <span style=\"display: none;\">Both the password does not match</span></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr> \r\n");
      out.write("                        <td><input type=\"submit\" value=\"Register\" id=\"submit\" /></td>\r\n");
      out.write("                        <td><input type=\"reset\" value=\"Cancel\" id=\"reset\" /></td>\r\n");
      out.write("                       \r\n");
      out.write("                    </tr>\r\n");
      out.write("                </tbody>\r\n");
      out.write("            </table>\r\n");
      out.write("            </form></center>\r\n");
      out.write("        </div>    \r\n");
      out.write("        </div>\r\n");
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
