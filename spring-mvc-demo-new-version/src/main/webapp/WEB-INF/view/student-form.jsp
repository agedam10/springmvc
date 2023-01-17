<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>Student Registration Form</head>
    <body>
        <form:form action="processForm" modelAttribute="student">
        First Name : <form:input path="firstName" />
            <br> <br>
        Last Name : <form:input path="lastName" />
            <br> <br>
            Country:
            <form:select path="country">
                <form:options items="${student.countryOptions}"/>
            </form:select>
            <br> <br>
            Favorite Language:
            Java:<form:radiobutton path="favoriteLanguage" value="java" />
            Python:<form:radiobutton path="favoriteLanguage" value="python" />
            Javascript:<form:radiobutton path="favoriteLanguage" value="javascript" />
            <br> <br>
            Linux <form:checkbox path="operatingSystems" value = "Linux" />
            MAC OS <form:checkbox path="operatingSystems" value = "MAC OS " />
            Windows <form:checkbox path="operatingSystems" value = "Windows" />


            <br> <br>

            <input type="submit" value="submit" />
        </form:form>
    </body>
</html>