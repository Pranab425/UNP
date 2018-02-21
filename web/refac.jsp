<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>

<s:setDataSource driver="com.mysql.jdbc.Driver"
                 url="jdbc:mysql://localhost:3306/unp"
                 user="root" password="1406425"/>
<s:update var="de">delete from faculty where fid=${param.fid}</s:update>
<c:set var="del" value="FACULTY ${param.fid} DELETED SUCCESFULLY" scope="request"/>
<jsp:forward page="delEmp.jsp"/>