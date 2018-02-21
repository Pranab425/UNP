<link rel="stylesheet" href="main.css">
<%@ page import="java.sql.*" %>


<HTML>
    <HEAD>
        <TITLE>ALL STUDENTS</TITLE>
    </HEAD>

    <BODY>
        <center>
        <h1>All Students</h1>

    <TABLE BORDER="1">
    <TR>
                           <TH>SID</TH>
               <TH>PASSWORD</TH>
               <TH>NAME</TH>
               <TH>DEPT</TH>
            </TR>
           
        <% 
            
            String q="select * from student;";
            ResultSet resultset = table.DAOLayer.selectData(q);
 try{
                
            while(resultset.next())
            {
        %>

        
           <TR>
               <TD> <%= resultset.getString(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               <TD> <%= resultset.getString(4) %> </TD>
           </TR>
       
       <% 
           } 
 }
catch(Exception e){
            out.print("Some Exception Occoured"+e);
            
        }
       %>
 </TABLE>
       <BR>      
</CENTER>
    </BODY>
</HTML>