<%@page import="java.sql.*"%>
<%
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
    String location=request.getParameter("location");
    String address=request.getParameter("address");
    String uname=request.getParameter("uname");
    String password=request.getParameter("password");
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auditing","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select count(*) from client where email='"+email+"' ");
if(rs.next())
{
  int count=rs.getInt(1);
  if(count==0)
  {
      int i=st.executeUpdate("insert into client values('"+fname+"','"+lname+"','"+email+"','"+mobile+"','"+location+"','"+address+"','"+uname+"','"+password+"','Waiting','waiting')");
  if(i>0)
  {
      %>
      <script type="text/javascript">
          window.alert("Client Regiatration Completed");
          window.location="Client.jsp";
          </script>
      <%
  }
else
{
%>
      <script type="text/javascript">
          window.alert("Client Regiatration Fail");
          window.location="Client.jsp";
          </script>
      <%
}
  }
%>
      <script type="text/javascript">
          window.alert("Client Already Exist");
          window.location="Client.jsp";
          </script>
      <%
}    
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>