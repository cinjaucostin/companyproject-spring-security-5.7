<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>


<!DOCTYPE html>

<html>
    <head>
        <title>costin Company Home Page</title>
    </head>

    <body>
        Welcome to the costin company home page!

        <hr>
        <!-- Display the username and user roles  -->
        <p>
            User: <security:authentication property="principal.username" />
            <br><br>
            Role(s): <security:authentication property="principal.authorities" />

        </p>

        <hr>

        <!-- Add a link to point to /leaders ... this si for the managers-->
        <hr>

        <security:authorize access="hasRole('MANAGER')" >
            <p>
            <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
            (Only for Manager peeps)
            </p>
        </security:authorize>
        <br>

        <security:authorize access="hasRole('ADMIN')" >
            <p>
            <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
            (Only for Admin peeps)
            </p>
        </security:authorize>
        <hr>

        <!-- Add a logout button -->

        <form:form action="${pageContext.request.contextPath}/logout"
                    method="POST" >
            <input type="submit" value="Logout" />
        </form:form>

    </body>
</html>