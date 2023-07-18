<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.database.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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

<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
        <h2><a href="index.html">Secure Storage Auditing with Efficient </a><h2>
      <p></p>
    </div>
    <div id="topnav">
      <ul>
        <li ><a href="ClientHome.jsp">Home</a></li>
        <li><a href="UploadFile.jsp">Upload File</a></li>
        <li><a href="PacketSending.jsp">Packet Sending</a></li>
        <li class="active"><a href="Download.jsp">Download</a></li>
        <li class="last"><a href="Client.jsp">Logout</a></li>
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
        <h3>Secure Storage Auditing with Efficient</h3>
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
              <%String fid=request.getParameter("fid");
              session.setAttribute("fid",fid);
              String filename=request.getParameter("filename");
              session.setAttribute("fname",filename);%>
          <table>
           <tr><th>Blocks</th>
           <th>Secrete Key</th>
       
           </tr>
           <form action="Down.jsp" method="post">
           <tr>
               
               <td><input type="text" name="block1" value="Block1" style="color:red;border:none;" readonly=""></input></td>      
               <td><input type="text" name="skey1" required=""</td></tr>
                <tr><td><input type="text" name="block1" value="Block2" style="color:red;border:none;" readonly=""></input></td>      
               <td><input type="text" name="skey2" required=""</td></tr>
                <tr><td><input type="text" name="block1" value="Block3" style="color:red;border:none;" readonly=""></input></td>      
               <td><input type="text" name="skey3" required=""</td></tr>
               <tr> <td><input type="text" name="block1" value="Block4" style="color:red;border:none;" readonly=""></input></td>      
               <td><input type="text" name="skey4" required=""</td></tr>
                <tr><td><input type="text" name="block1" value="Block5" style="color:red;border:none;" readonly=""></input></td>      
               <td><input type="text" name="skey5" required=""</td></tr>
           
               <td></td><td><input type="submit" value="Download" style="background:red;"/></td></tr>
           </form>
              
       </table>
      
         
         

    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

</div>

</body>
</html>