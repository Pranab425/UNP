<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>

<s:setDataSource driver="com.mysql.jdbc.Driver"
                 url="jdbc:mysql://localhost:3306/unp"
                 user="root" password="1406425"/>
<s:update var="dde">insert into notice values('${param.number}','${param.noticetitle}','${param.categ}','${param.detail}');</s:update>
<c:set var="delo" value="NOTICE ADDED SUCCESSFULLY" scope="request"/>
<jsp:forward page="addnotice.jsp"/>
