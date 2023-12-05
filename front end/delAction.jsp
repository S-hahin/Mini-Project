Copy code
<%@page import="java.sql.*"%>
<% 
String cid = request.getParameter("cid");

try {
    Connection conc = DriverManager.getConnection("jdbc:mysql://localhost:3306/camp", "root", "");
    PreparedStatement ps = conc.prepareStatement("delete from camp where cid='" + cid + "'");
    int i = ps.executeUpdate();

    if (i != 0) {
        // Show an alert indicating successful deletion
        out.println("<script>alert('Camp deleted successfully'); window.location.href='viewcamp.jsp';</script>");
    }
} catch (Exception e) {
   
}
%>