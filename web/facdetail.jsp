<link rel="stylesheet" href="main.css">
<%@ page import="java.sql.*" %>


<HTML>
    <HEAD>
        <TITLE>ALL FACULTY</TITLE>
    </HEAD>

    <BODY>
<center>
    <h1>All Faculty</h1>
    <TABLE BORDER="1">
    <TR>
                           <TH>FID</TH>
               <TH>FNAME</TH>
               <TH>DEPARTMENT</TH>
               <TH>PASSWORD</TH>
            </TR>
           
        <% 
            
            String q="select * from faculty;";
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