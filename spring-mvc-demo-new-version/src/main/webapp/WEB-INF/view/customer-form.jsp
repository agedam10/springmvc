<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>Customer Registration Form
    <style>
        .error {
            color: red
        }
    </style>
    </head>
    <body>
        <form:form action="processForm" modelAttribute="customer">
            First Name : <form:input path="firstName" />
                <br> <br>
            Last Name(*) : <form:input path="lastName" />
            <form:errors path="lastName" cssClass="error" />

            <br> <br>
            Free Passes: <form:input path="freePasses" />
            <form:errors path="freePasses" cssClass="error" />

            <br> <br>
            PostalCode: <form:input path="postalCode" />
            <form:errors path="postalCode" cssClass="error" />
            <br> <br>

            Course Code: <form:input path="courseCode" />
            <form:errors path="courseCode" cssClass="error" />
            <br> <br>

            <input type="submit" value="submit" />
        </form:form>
    </body>
</html>