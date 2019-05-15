<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title></title>
</head>
<body>
<s:form method="post" action="person_save">
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Prénom</th>
            <th>Nom</th>
            <th>Email</th>
            <th>Date de naissance</th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${id eq null}">
            <tr>
                <td>*</td>
                <td><input name="firstName" /></td>
                <td><input name="lastName" /></td>
                <td><input name="email" /></td>
                <td><input name="birthDate" /></td>
                <td><input type="submit" /></td>
            </tr>
        </c:if>
        <c:if test="${person.id ne id}">
        </c:if>

        <c:forEach var="person" items="${persons}" >
            <c:if test="${person.id eq id}">
                <tr>
                    <td><s:hidden name="id" />${person.id}</td>
                    <td><s:textfield name="firstName"/> </td>
                    <td><s:textfield name="lastName" /></td>
                    <td><s:textfield name="email" /></td>
                    <fmt:parseDate value="${person.birthDate}" pattern="yyyy-MM-dd" var="parsedDate" type="date"/>
                    <fmt:formatDate value="${parsedDate}" type="date" pattern="dd/MM/yyyy" var="goodDate"/>
                    <td><s:datetextfield name="birthDate" format="dd/MM/yyyy"/></td>
                    <td><s:submit type="submit" /></td>
                    <td><a href="${context}">Annuler</a></td>
                </tr>
            </c:if>
            <c:if test="${person.id ne id}">
                <tr>
                    <td>${person.id}</td>
                    <td>${person.firstName}</td>
                    <td>${person.lastName}</td>
                    <td>${person.email}</td>
                    <fmt:parseDate value="${person.birthDate}" type="date" pattern="yyyy-MM-dd" var="birthDate" />
                    <td><fmt:formatDate value="${birthDate}" type="date" pattern="dd/MM/yyyy" /></td>
                    <td><a href="${context}edit/${person.id}" name="edit">Modifier</a></td>
                    <td><a href="${context}delete/${person.id}" onclick="return confirm('Etes-vous sur de vouloir supprimer ?')">Supprimer</a></td>
                </tr>
            </c:if>
        </c:forEach>
        </tbody>
    </table>
</s:form>
<c:url var="application" value="/" />
<a href="${application}"> <input type="button" value="Accueil"></a>
<a href="${application}bankaccount"> <input type="button" value="Comptes Bancaires"></a>
<a href="${application}transfer"> <input type="button" value="Virement"> </a>
</body>
</html>
