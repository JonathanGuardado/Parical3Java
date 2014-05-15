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
      out.write("<head>\n");
      out.write("\t<title>Transamerica</title>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\t<link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" media=\"screen\">\n");
      out.write("    <script src=\"bootstrap/js/jquery-2.1.0.js\"></script>\n");
      out.write("     <script src=\"bootstrap/js/niveles.js\"></script>\n");
      out.write("    <script src=\"bootstrap/js/bootstrap.min.js\"></script>    \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("        <div class=\"col-lg-3 col-md-3 col-sm-2 hidden-xs\"></div>\n");
      out.write("    <div class=\"col-lg-6 col-md-6 col-sm-8 col-xs-12\">\n");
      out.write("    <div class=\"row jumbotron text-center\" style=\"font-size:16px;\">\n");
      out.write("    <form method=\"post\" action=\"index.php/login/checkUser\">\n");
      out.write("    <fieldset>\n");
      out.write("        <legend class=\"text-center\">Login</legend>\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-3 col-md-3 col-sm-3 hidden-xs\"  style=\"text-align:right\"><label>Usuario</label></div>\n");
      out.write("        <div class=\"col-lg-9 col-md-9 col-sm-9 col-xs-12\"  style=\"text-align:left\"><input type=\"text\" id=\"user\"  name=\"user\" class=\"form-control\" placeholder=\"Usuario\"/>            \n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\" style=\"margin-top: 10px;\">\n");
      out.write("        <div class=\"col-lg-3 col-md-3 col-sm-3 hidden-xs\"  style=\"text-align:right\"><label>Contrase&ntilde;a</label></div>\n");
      out.write("        <div class=\"col-lg-9 col-md-9 col-sm-9 col-xs-12\"  style=\"text-align:left\"><input type=\"password\" id=\"password\" onkeypress=\"validar(event);\" class=\"form-control\" name=\"password\" placeholder=\"Password\" />\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("        <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\" style=\"margin-top: 10px;\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        <input type=\"button\" onclick=\"validar_usuario()\" class=\"btn btn-primary\" value=\"Sign In\" name=\"signin\"/>\n");
      out.write("\n");
      out.write("            <br />            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div id=\"mensaje_error_form_login\" class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\" style=\"visibility: hidden; color:red; font-size:15px;\">\n");
      out.write("         Usuario o Contrase&ntilde;a Incorrecta\n");
      out.write("          </div>\n");
      out.write("    </fieldset>\n");
      out.write("    </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-lg-3 col-md-3 col-sm-2  hidden-xs\"></div>\n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("</html>");
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
