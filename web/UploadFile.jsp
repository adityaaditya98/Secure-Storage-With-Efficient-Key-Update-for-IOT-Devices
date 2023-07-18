<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
        <h2><a href="index.html">Secure Storage Auditing with Efficient</a><h2>
      <p></p>
    </div>
    <div id="topnav">
      <ul>
        <li><a href="ClientHome.jsp">Home</a></li>
        <li class="active"><a href="UploadFile.jsp">Upload File</a></li>
        <li><a href="PacketSending.jsp">Packet Sending</a></li>
        <li><a href="Download.jsp">Download</a></li>
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
          <%
          String email=(String)session.getAttribute("email");
    Connection con=null;
            Statement st= null;
            ResultSet rs=null;
             ResultSet rs1=null;
             ResultSet rs2=null;
            int n=0;     

             try
                  {
                      Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auditing","root","root");
             st = con.createStatement();
             rs=st.executeQuery("select max(fid) from files");
             if(rs.next())
             {
                 if(rs.getInt(1)==0)
            {
            n=1; 
          
            }
            else
            {
                
                n=rs.getInt(1)+1;
                
                //out.println(id3);
               session.setAttribute("id",n);
            }
             }
                  }
             catch(Exception e)
                     {
                     out.println(e);
                     }

                         

         %>
     
         
         
       <!--write data here-->
       <h1><center><u>Upload File Here</u></center></h1>
       
       <form action="UploadFile" method="post" enctype="multipart/form-data">
           <table>
               <tr><th>File ID</th><td><input type="text" name="fid" value="<%=n%>" style="border:none;border-bottom:1px solid black;"></td></tr>
                <tr><th>Subject</th><td><input type="text" name="subject"  style="border:none;border-bottom:1px solid black;"></td></tr>
            <tr><th>Choose File</th><td><input type="file" name="file" style="border:none;"></td></tr>
            <tr><td><input type="submit" value="Upload"></td></tr>
           </table>
       </form>
       
       
       
       
       
       
       
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

</body>
</html>