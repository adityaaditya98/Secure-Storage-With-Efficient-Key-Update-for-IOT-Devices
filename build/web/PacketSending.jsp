<%@page import="java.sql.*"%>
<%@page import="com.database.connection.DBConnection" %>
<%
    String email=(String)session.getAttribute("email");
    System.out.println(email);
           %>
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
<script src="jquery.min.js">
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
<style>
  
    table{
        margin-top:50px;
    }
    table tr th{
        border:1px solid black;
    }
    table tr td{
        border:1px solid black;
    }
    
</style>
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
        <li><a href="ClientHome.jsp">Home</a></li>
        <li><a href="UploadFile.jsp">Upload File</a></li>
        <li class="active"><a href="PacketSending.jsp">Packet Sending</a></li>
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
        
     
         
         
       <!--write data here-->
       <h1><center><u> File Sending With Meta Key</u></center></h1>
       <%
           
       try{
          String filename=null; 
          String fid=null;
           String data=null; 
          Connection con=DBConnection.getConnection();
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select * from files where owner='"+email+"'");
          while(rs.next()){
              String status=rs.getString("status");
            filename=rs.getString("filename"); 
             fid=rs.getString("fid"); 
            session.setAttribute("fname",filename);
            session.setAttribute("fid",fid);
data=rs.getString("filedata"); 
          }
       int lendth=data.length();
       float f=(float)lendth;
       float l=f/5;
       
       %>
          
       <table>
           <tr><th>Blocks</th>
           <th>Secrete Key</th>
            <th>Metadata Key</th>
           <th>Status</th>
            <th>Send</th>
           </tr>
           <form action="Block1.jsp" method="post">
           <tr>
               
               <td><input type="text" name="block1" value="Block1" style="color:red;border:none;"></input></td>      
               <td><input type="text" name="skey" required=""</td>
               <td></td><td></td><td><input type="submit" value="Send" style="background:red;"></td></tr>
           </form>
              
       </table>
       <table>
           <tr><td>Each Block Size</tD><td><%=l%> Bytes</td></tr>
           <tr><td>Total Size</td><td><%=f%> Bytes</td></tr>
      <tr><td><a href="PacketSending.jsp">Back</a></tD></tr> 
       </table>
      <%
       }catch(Exception e){
           out.println(e);
       }
       
       %> 
       
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

</body>
</html>