<%@page import="org.apache.commons.lang3.RandomStringUtils"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.database.connection.DBConnection"%>
<%
String fid=(String)session.getAttribute("fid");
String fname=(String)session.getAttribute("fname");

String skey1=request.getParameter("skey1");
String skey2=request.getParameter("skey2");
String skey3=request.getParameter("skey3");
String skey4=request.getParameter("skey4");
String skey5=request.getParameter("skey5");
try{
   Connection con=DBConnection.getConnection();
   Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select b1.filename from block1 b1,block2 b2,block3 b3,block4 b4,block5 b5 where b1.skey='"+skey1+"' and b2.skey='"+skey2+"' and b3.skey='"+skey3+"' and b4.skey='"+skey4+"' and b5.skey='"+skey5+"' and b1.filename='"+fname+"'=b2.filename='"+fname+"'=b3.filename='"+fname+"'=b4.filename='"+fname+"'=b5.filename='"+fname+"'");
   if(rs.next()){
       String filename=rs.getString("b1.filename");
       System.out.println(filename);
        response.sendRedirect("Download?"+filename+"");
      
    }else{
    response.sendRedirect("Download.jsp?msg=filed to checking");
    }
    
}catch(Exception e){
    out.println(e);
}


%>