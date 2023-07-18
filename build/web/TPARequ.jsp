<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.database.connection.DBConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<% String username=(String)session.getAttribute("username");%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> Auditing</title>
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
        <h2><a href="index.html">Secure Storage Auditing with Efficient</a><h2>
      <p></p>
    </div>
    <div id="topnav">
      <ul>
        <li><a href="CloudHome.jsp">Home</a></li>
        <li><a href="KeyRequestMessage.jsp">Key Request Message</a></li>
       <l  class="active"i><a href="TPARequ.jsp">TPA Request</a></li>
        <li class="last"><a href="index.html">Logout</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

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
                   <th>Generate Proof</th>
              </tr>  
        <%
       try{
          Connection con=DBConnection.getConnection();
          Statement st1=con.createStatement();
            Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from tpareq where proof='waiting'");
           while(rs.next()){
        
             String fid=rs.getString("fid");
               String filename1=rs.getString("fname");
               String size=rs.getString("fsize");
                 String date=rs.getString("fdate");
             %>
             <tr>
                 <td><%=fid%></td>
                 <td><%=filename1%></td>
                 <td><%=size%></td>
                 <td><%=date%></td>
                 <td><a href="GenProof.jsp?fid=<%=fid%>"><input type="button" value="Generate GenProof of this file"></input></a></td>
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

</body>
</html>