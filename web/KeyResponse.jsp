<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.database.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<% String username=(String)session.getAttribute("username");%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Auditing</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
<!-- Homepage Only Scripts -->
<script type="text/javascript" src="layout/scripts/jquery.cycle.min.js"></script>
<script type="text/javascript">
$(function() {
    $('#featured_slide').after('<div id="fsn"><ul id="fs_pagination">').cycle({
        timeout: 5000,
        fx: 'fade',
        pager: '#fs_pagination',
        pause: 1,
        pauseOnPagerHover: 0
    });
});
</script>
<!-- End Homepage Only Scripts -->
</head>
<body>
<div class="wrapper col0">
  <div id="topbar">
    <div id="slidepanel">
      
     
      <br class="clear" />
    </div>
    <div id="loginpanel">
      
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
        <h2><a href="index.html">Secure Storage Auditing with Efficient </a><h2>
      <p></p>
    </div>
    <div id="topnav">
      <ul>
        <li><a href="TPAhome.jsp">Home</a></li>
        <li><a href="AlrtMessg.jsp">Alert Message</a></li>
        <li class="active"><a href="KeyResponse.jsp">Key Response</a></li>
      
        <li class="last"><a href="index.html">Logout</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="featured_slide">
    <div class="featured_box"><a href="#"><img src="images/demo/450x300.jpg" alt="" /></a>
      <div class="floater">
        <h3>Welcome </h3>
        <p><h3>TPA</h3></p>
        </div>
    </div>
   
   
   
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="homecontent">
    <div class="fl_left">
      <div class="column2">

      </div>
      <div class="column2">
       <style>
              table tr th{
                  background: red;
                  color:white;
              }
              table tr td{
                  background:#E7E6E6;
                  color:#298cdf;
              }
              </style>
          <table>
              <tr>
                   <th>File ID</th>
                  <th>File Name</th>
                  <th>Total Bytes</th>
                   <th>Date</th>
                    <th>GenProof Key</th>
                      <th>Send To Client</th>
              </tr>  
        <%
       try{
          Connection con=DBConnection.getConnection();
          Statement st1=con.createStatement();
            Statement st=con.createStatement();
  
           ResultSet rs1=st1.executeQuery("select * from tpareq where proof!='waiting'");
           while(rs1.next()){
             String fid=rs1.getString("fid");
               String filename1=rs1.getString("fname");
               String size=rs1.getString("fsize");
                 String date=rs1.getString("fdate");
                  String proof=rs1.getString("proof");
             %>
             <tr>
                 <td><%=fid%></td>
                 <td><%=filename1%></td>
                 <td><%=size%></td>
                 <td><%=date%></td>
                 <td><%=proof%></td> 
                 <td><a href="SendToClient.jsp?fid=<%=fid%>">Send To Client</a></td>
             </tr>
                     <% } 
             
               
           
       }catch(Exception e){
           out.println(e);
       }
            %>
          </table> 
          
          
          
          
          
          
      </div>
    </div>
    <div class="fl_right">
      
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="footer">
   
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  
</div>
</body>
</html>