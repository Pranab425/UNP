<link rel="stylesheet" href="main.css">
<title>
    
    
</title>
<body BGCOLOR="LIGHTYELLOW">
<center>
       <h1>
        ADD FACULTY
    </h1>
</center>
<hr>

<fieldset> <legend> ENTER FACULTY DETAILS </legend>
    <form action="AddFacu" method="post">
    <PRE>
   <b> FACULTY ID  <b>         :<INPUT TYPE="TEXT" NAME="fid" VALUE=""/><br>
   
   <b> PASSWORD        <b>     :<INPUT TYPE="PASSWORD" NAME="password" VALUE=""/><br>
    
  <b>  NAME        <b>         :<INPUT TYPE="TEXT" NAME="fname" VALUE=""/><br>

   <B> DEPT </b>                : <SELECT NAME="dept">
                                    <OPTION VALUE="">----SELECT DEPARTMENT---</option>
                                    <OPTION VALUE="CS">----CSE---</option>
                                    <OPTION VALUE="IT">----IT---</option>
                                    <OPTION VALUE="CIVIL">----CIVIL---</option>
                                    <OPTION VALUE="ETC">----ETC---</option>      
        </SELECT>
 
    

     
     <INPUT TYPE="SUBMIT" class="button blue" VALUE="ADD"/> <INPUT TYPE="RESET" VALUE="RESET"/>

</form>
    </fieldset>
</PRE>
