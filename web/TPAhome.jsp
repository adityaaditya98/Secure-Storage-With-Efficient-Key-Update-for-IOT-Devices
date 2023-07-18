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
        <li class="active"><a href="TPAhome.jsp">Home</a></li>
        <li><a href="AlrtMessg.jsp">Alert Message</a></li>
        <li><a href="KeyResponse.jsp">Key Response</a></li>
      
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
        <h2>Abstract</h2>
        <p align="justify" style="text-decoration: blink; font-size: 15px;">
            Cognitive computing over big data brings more development opportunities for enterprises and organizations in industrial informatics, and can make better decisions for them when they face data security challenges. To satisfy the requirement of real-time data storage in industrial Internet of things (IoT), the remote unconstrained storage cloud is usually used to store the generated big data. However, the characteristic of semi-trust of the cloud service provider (CSP) determines that the data owners will worry about whether the data stored in cloud computing has been corrupted. In this paper, a secure storage auditing is proposed, which supports efficient key updates and can be well used in cognitive industrial IoT environment. Moreover, the proposed basic auditing can be extended to support batch auditing that is suitable for multiple end devices to audit their data blocks simultaneously in practice. In addition, a hybrid data dynamics method is proposed, which employs a hash table to store the data blocks and uses a linked list to locate the operated data block. Compared with previous methods, the data block location time in the proposed data dynamics can be reduced by 40%. The security analysis results demonstrate that the proposed scheme can be proved to be correct, and is secure under CDH and DL assumptions.
        </p>
       
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