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
        <li class="active"><a href="KeyRequestMessage.jsp">Key Request Message</a></li>
       <li><a href="TPARequ.jsp">TPA Request</a></li>
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
        <h3>Secure Storage Auditing with Efficient Key Updates for Cognitive Industrial IoT Environment</h3>
        </div>
    </div>
    <div class="featured_box"><a href="#"><img src="img/Capture.PNG" alt="" /></a>
      <div class="floater">
        <h2>Abstract</h2>
        <p align="justify">
        Cognitive computing over big data brings more
development opportunities for enterprises and organizations
in industrial informatics, and can make better decisions for
them when they face data security challenges. To satisfy the
requirement of real-time data storage in industrial Internet of
things (IoT), the remote unconstrained storage cloud is usually
used to store the generated big data.   
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
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
              </tr>  
        <%
       try{
          Connection con=DBConnection.getConnection();
          Statement st1=con.createStatement();
            Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from block1");
           while(rs.next()){
             String owner=rs.getString("owner");  
             String filename=rs.getString("filename");
           String fid1=rs.getString("fid");
           ResultSet rs1=st1.executeQuery("select b.filename,b.owner,f.fid,f.fsize,f.uploaddate  from block5 b,files f where b.owner='"+owner+"'and f.filename='"+filename+"' and f.fid='"+fid1+"'and b.fid='"+fid1+"'");
           while(rs1.next()){
             String fid=rs1.getString("f.fid");
               String filename1=rs1.getString("b.filename");
               String size=rs1.getString("f.fsize");
                 String date=rs1.getString("f.uploaddate");
             %>
             <tr>
                 <td><%=fid%></td>
                 <td><%=filename1%></td>
                 <td><%=size%></td>
                 <td><%=date%></td>
             </tr>
             
             
             
          <% } 
             
               }
           
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