package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import project.ConnectionProvider;
import java.sql.*;

public final class addNewDonor_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.html");
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write(" <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\" media=\"screen\">\r\n");
      out.write("<style>\r\n");
      out.write("\r\n");
      out.write("ul {\r\n");
      out.write("  list-style-type: none;\r\n");
      out.write("  margin: 0;\r\n");
      out.write("  padding: 0;\r\n");
      out.write("  overflow: hidden;\r\n");
      out.write("  background-color: #333;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("li {\r\n");
      out.write("  float: left;\r\n");
      out.write("  border-right:1px solid #bbb;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("li:last-child {\r\n");
      out.write("  border-right: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("li a {\r\n");
      out.write("  display: block;\r\n");
      out.write("  color: white;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  padding: 14px 16px;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("li a:hover:not(.active) {\r\n");
      out.write("  background-color: #111;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".active {\r\n");
      out.write("  background-color: #4CAF50;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<ul>\r\n");
      out.write("  <li><a href=\"home.jsp\">Home</a></li>\r\n");
      out.write("  <li><a href=\"addNewDonor.jsp\">Add New Donor</a></li>\r\n");
      out.write("  <li><a href=\"editDeleteList.jsp\">Edit,Delete & List of Donor Details</a></li>\r\n");
      out.write("    <li><a href=\"manageStock.jsp\">Manage Stock</a></li>\r\n");
      out.write("  <li><a href=\"requestForBlood.jsp\">Request for Blood</a></li>\r\n");
      out.write("  <li><a href=\"requestCompleted.jsp\">Request Completed</a></li>\r\n");
      out.write("  <li style=\"float:right\"><a href=\"adminLogin.jsp\">Logout</a></li>\r\n");
      out.write("</ul>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write(" <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\" media=\"screen\">\r\n");
      out.write("<style>\r\n");
      out.write("input[type=\"text\"], input[type=\"password\"], input[type=\"email\"], select,input[type=\"number\"]\r\n");
      out.write("{\r\n");
      out.write("    border: none;\r\n");
      out.write("    background:silver;\r\n");
      out.write("    height: 50px;\r\n");
      out.write("    font-size: 16px;\r\n");
      out.write("\tpadding:15px;\r\n");
      out.write("\twidth:60%;\t\r\n");
      out.write("\tborder-radius: 25px;\r\n");
      out.write("\tmargin-left:20%;\r\n");
      out.write("}\r\n");
      out.write("h2,h1\r\n");
      out.write("{\t\r\n");
      out.write("\tmargin-left:20%;\r\n");
      out.write("}\r\n");
      out.write("hr\r\n");
      out.write("{\r\n");
      out.write("width:60%;\t\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    ");

    String msg=request.getParameter("msg");
    if("valid".equals(msg))
    {
        
      out.write("\r\n");
      out.write("        <center><font color=\"red\" size=\"5\">successfully updated</font></center>\r\n");
      out.write("   ");
 }
   
      out.write("\r\n");
      out.write("        ");


    if("invalid".equals(msg))
    {
        
      out.write("\r\n");
      out.write("        <center><font color=\"red\" size=\"5\">something went wrong.</font></center>\r\n");
      out.write("   ");
 }
   
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
 
int id=1;
try{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select max(id) from donor");
    if(rs.first()){
        id=rs.getInt(1);
        id+=1;
    }
      out.write("\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <h1 style=\"color:red;\">Donor id: ");
out.println(id);
      out.write("</h1>\r\n");
      out.write("  \r\n");
      out.write("    ");

}catch(Exception e)
{}

      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("    <form action=\"addNewDonorAction.jsp\" method=\"GET\">\r\n");
      out.write("        <input type=\"hidden\" name=\"id\" value=\"");
 out.println(id);
      out.write("\">\r\n");
      out.write("        <h2>Name</h2>\r\n");
      out.write("        <input type=\"text\" placeholder=\"Enter Name\" name=\"name\">\r\n");
      out.write("        <hr>\r\n");
      out.write("        <h2>Father name</h2>\r\n");
      out.write("        <input type=\"text\" placeholder=\"Enter Father Name\" name=\"father\">\r\n");
      out.write("        <hr>\r\n");
      out.write("        <h2>Mother Name</h2>\r\n");
      out.write("        <input type=\"text\" placeholder=\"Enter Mother Name\" name=\"mother\">\r\n");
      out.write("        <hr>\r\n");
      out.write("        <h2>Mobile number</h2>\r\n");
      out.write("        <input type=\"number\" placeholder=\"Enter Mobile Number\" name=\"mobilenumber\">\r\n");
      out.write("        <hr>\r\n");
      out.write("        <h2>gender</h2>\r\n");
      out.write("        <select name=\"gender\">\r\n");
      out.write("            <option value=\"Male\">Male</option>\r\n");
      out.write("                        <option value=\"female\">Female</option>\r\n");
      out.write("            <option value=\"Others\">Others</option>\r\n");
      out.write("        </select>\r\n");
      out.write("        <hr>\r\n");
      out.write("        <h2>email</h2>\r\n");
      out.write("        <input type=\"email\" placeholder=\"Enter Email id\" name=\"email\">\r\n");
      out.write("        <hr>\r\n");
      out.write("        <h2>blood group</h2>\r\n");
      out.write("        <select name=\"bloodgroup\">\r\n");
      out.write("            <option value=\"A+\">A+</option>\r\n");
      out.write("            <option value=\"A-\">A-</option\r\n");
      out.write("            <option value=\"B+\">B+</option>\r\n");
      out.write("            <option value=\"B-\">B-</option>\r\n");
      out.write("            <option value=\"O+\">O+</option>\r\n");
      out.write("            <option value=\"O-\">O-</option>\r\n");
      out.write("            <option value=\"AB+\">AB+</option>\r\n");
      out.write("            <option value=\"AB-\">AB-</option>\r\n");
      out.write("\r\n");
      out.write("        </select>\r\n");
      out.write("        <h2>Address</h2>\r\n");
      out.write("        <input type=\"text\" placeholder=\"Enter Address\" name=\"address\">\r\n");
      out.write("        <br>\r\n");
      out.write("        <center><button type=\"submit\" class=\"button\">Save</button></center>\r\n");
      out.write("      \r\n");
      out.write("    </form>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<h3><center>All Right Reserved @ ASHWATH M :: 2020  </center></h3>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
