<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
    <title>Customer Confirmation </title>
    </head>
    <body>
        Customer is confirmed : ${customer.firstName} ${customer.lastName}
        <br> <br>
        FreePasses : ${customer.freePasses}
        <br> <br>
        PostalCode : ${customer.postalCode}
        <br> <br>
        Course Code : ${customer.courseCode}
        <br> <br>
    </body>
</html>