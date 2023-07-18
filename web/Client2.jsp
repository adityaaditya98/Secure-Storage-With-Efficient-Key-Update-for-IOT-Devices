<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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

<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
        <h2><a href="index.html">Secure Storage Auditing with Efficient </a><h2>
      <p></p>
    </div>
    <div id="topnav">
      <ul>
        <li class="active"><a href="Client2.jsp">Home</a></li>
        
        <li><a href="Client.jsp">Logout</a></li>
      
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
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="homecontent">
    <div class="fl_left">
      <div class="column2">

      </div>
      <div class="column2">
        
      </div>
    </div>
    <div class="fl_right">
       <h1>Client Login</h1>
       <%
       String email=(String)session.getAttribute("email");
       
       %>
       <form name="login" action="Client2.jsp" method="post">
       <table bgcolor="orange" style="margin-top: 50px;width: 300px;">
    
            <tr>
                <td><font size="4" color="green" style="">User Email</td>
                <td><input type="text" name="uname" disabled required></input></td>
            </tr>
            <tr>
                <td><font size="4" color="green" style="">Password</td>
                <td><input type="password" name="password" disabled required></input></td>
            </tr>
            <tr>
                <td><input type="Submit" value="Login" style="font-size: 15px;"></input></td>
                <td><input type="Reset" style="font-size: 15px;"></input></td>
            </tr>
       </form>
       <tr><td><a href="keyGen.jsp?email=<%=email%>">Click Here to send Key</a></td></tr>
        </table>
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