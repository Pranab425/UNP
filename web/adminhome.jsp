
<%
 if(session.getAttribute("id")==null){
  response.sendRedirect("home.jsp");
 }
%>

<link rel="stylesheet" href="main.css">
<center>
        <h1>
        "XYZ UNIVERSITY</h1>
        </center>
        <br>
        <pre>
                                                                                            
        </pre>
        <hr>
        <marquee>WELCOME ADMIN  </marquee>
        <body allign=\"center\">
            <FORM action="logout.jsp">
                
                     
      <h2><font color='green'>NAME IS:- <% session.getAttribute("i"); %></font></h>
      
        <table border='2px' align='center' width='1300px' >
        <th>SELECT TASK TO BE PERFORMED</th>  
        <tr><td><br><a href ='allnotice.jsp'>VIEW ALL NOTICE  </a>    
        <br><a href ='addnotice.jsp'>ADD NEW NOTICE  </a><br>                    
        <a href ='delnotice.jsp'>REMOVE OLD NOTICE  </a><br><a href ='addFac.jsp'>ADD FACULTY </a>
        <br><a href ='delEmp.jsp'>REMOVE FACULTY </a><br>
        <a href ='remstudent.jsp'>REMOVE STUDENT  </a><br>
        <a href ='AddStudent.jsp'>ADD STUDENT </a><br><a href ='studetail.jsp'>VIEW STUDENT </a><br>
        <a href ='facdetail.jsp'>VIEW FACULTY </a><br><HR>
            </td>
        </tr>
        </table>
             <a href="logout">LOGOUT</a>
        </form>
        </body>