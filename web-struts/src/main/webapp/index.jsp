<%--
  Created by IntelliJ IDEA.
  User: Souheil SULTAN
  Date: 2019-04-02
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
HELLO A3 DEV
<br><br>
<c:url var="application" value="/" />
<a href="${application}bankaccount"> <input type="button" value="Comptes Bancaires"></a>
<a href="${application}person"> <input type="button" value="Personnes"></a>
<a href="${application}transfer"> <input type="button" value="Virement"></a>
</body>
</html>
