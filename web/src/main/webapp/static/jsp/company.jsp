<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-04-13
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <tiles:insertAttribute name="head"/>
</head>
<body>
<tiles:insertAttribute name="header"/>
<main>
<tiles:insertAttribute name="menu"/>
<tiles:insertAttribute name="body"/>
</main>
<tiles:insertAttribute name="footer"/>
</body>

</html>
