package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html lang=\"es\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <title>Transportes Urimar</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/stilos.css\" type=\"text/css\" />\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <img id=\"logo\" alt=\"Trasportes Urimar\" src=\"img/banner4.jpg\" width=\"100%\" height=\"100%\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("\n");
      out.write("                            <nav class=\"navbar navbar-inverse\">\n");
      out.write("                                <div class=\"container-fluid\">\n");
      out.write("                                    <div class=\"navbar-header\">\n");
      out.write("                                        <a class=\"navbar-brand\" href=\"#\"><span class=\"glyphicon glyphicon-th\"> URIMAR</span></a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div>\n");
      out.write("                                        <ul class=\"nav navbar-nav\">\n");
      out.write("                                            <li  class=\"active\"><a href=\"Index.jsp\"><span class=\"glyphicon glyphicon-home\"></span> Inicio</a></li>\n");
      out.write("                                            <li><a href=\"somos.jsp\"><span class=\"glyphicon glyphicon-briefcase\"></span> Quiénes Somos</a></li>\n");
      out.write("                                            <li><a href=\"Instalaciones.jsp\"><span class=\"glyphicon glyphicon-globe\"></span> Instalaciones</a></li>\n");
      out.write("                                            <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"><span class=\"glyphicon glyphicon-info-sign\"></span> Nuestros Servicios<span class=\"caret\"></span></a>\n");
      out.write("                                                <ul class=\"dropdown-menu\">\n");
      out.write("                                                    <li><a href=\"granel.jsp\">Transporte a Granel</a></li>\n");
      out.write("                                                    <li><a href=\"contenedor.jsp\">Transporte Contenedorizada</a></li>\n");
      out.write("\n");
      out.write("                                                </ul>\n");
      out.write("                                            <li><a href=\"contacto.jsp\"><span class=\"glyphicon glyphicon-envelope\"> </span> Contáctenos</a></li>\n");
      out.write("\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                   </div>\n");
      out.write("                                </div>\n");
      out.write("                            </nav>\t\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"container-fluid\" >\n");
      out.write("                        <div class=\"row\" >\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div   class=\"col-md-4\" >\n");
      out.write("                                <br><br><br>\n");
      out.write("                                <center> <img   src=\"img/acceso.png\" class=\"img-responsive\" class=\"img-circle\" ></center>\n");
      out.write("                                <h2 class=\"text-center\" >\n");
      out.write("                                    <font color=\"red\">Inicio de  Sesion !</font> \n");
      out.write("                                </h2>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <form role=\"form\" action=\"ServletLogin\" method=\"post\">\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                                        <label for=\"usuario\">\n");
      out.write("                                            <h4 class=\"pull-center\"><font color=\"black\" >Nombre Usuario</font></h4>\n");
      out.write("                                        </label>\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"usuario\" name=\"usuario\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                                        <label for=\"Password\">\n");
      out.write("                                            <h4><font color=\"black\"> Contraseña </font></h4>\n");
      out.write("                                        </label>\n");
      out.write("                                        <input type=\"password\" class=\"form-control\" id=\"pass\" name=\"password\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <button type=\"submit\" class=\"btn btn-lg btn-block btn btn-danger\">\n");
      out.write("                                        Entrar\n");
      out.write("                                    </button>\n");
      out.write("                                    <div class=\"checkbox\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </form>\n");
      out.write("                                <br>\n");
      out.write("\n");
      out.write("                                <a href=\"TipoRegistro.jsp\"><button type=\"button\" class=\"btn btn-lg btn-block btn btn-link\">\n");
      out.write("                                        Registrarte!\n");
      out.write("                                    </button></a>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-4\">\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/scripts.js\"></script>\n");
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
