<link rel="stylesheet" href="main.css">
<%@ page import="java.sql.*" %>


<HTML>
    <HEAD>
        <TITLE> IT NOTICES DETAILS </TITLE>
    </HEAD>

    <BODY>
<center>        

        <TABLE BORDER="1">
            <TR>
               <TH>NID</TH>
               <TH>NAME</TH>
               <TH>CATEGORY</TH>
               <TH>DETAILS</TH>
            </TR>
        <% 
            
            String q = "select * from notice where ncateg='CIVIL';"; 
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
                out.println("Sorry, could not find notice "+e);
            }
            
            %>
       </TABLE>
       <BR>       
</CENTER>
    </BODY>
</HTML>