<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>sign up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <%--CSS--%>
    <link href="<c:url value="/resources/bootstrap5/css/bootstrap.min.css" />" rel="stylesheet">

    <link href="<c:url value="/resources/form/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/form/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css" />"
          rel="stylesheet">


    <%--JS--%>
    <script src="<c:url value="/resources/bootstrap5/js/bootstrap.min.js" />"></script>
    <script src="https://kit.fontawesome.com/33fd3056a5.js" crossorigin="anonymous"></script>

    <style>
        .error{color:red}
    </style>
</head>

<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: ghostwhite">
        <!-- Container wrapper -->
        <div class="container-fluid">

            <!-- Home -->
            <ul class="navbar-nav d-flex flex-row me-1">
            </ul>

            <ul class="navbar-nav d-flex flex-row me-1">

                <li class="nav-item me-3 me-lg-0">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>

                <%--                <li>--%>
                <%--                    <a class="nav-link" href="${pageContext.request.contextPath }/signup?lang=ru" style="display: inline-block">RU</a>--%>
                <%--                </li>--%>
                <%--                <li>--%>
                <%--                    <a class="nav-link" href="${pageContext.request.contextPath }/signup?lang=en" style="display: inline-block">EN</a>--%>
                <%--                </li>--%>
                <%--                <li>--%>
                <%--                    <a class="nav-link" href="${pageContext.request.contextPath }/login?lang=by" style="display: inline-block">BY</a>--%>
                <%--                </li>--%>

                <li class="nav-item me-3 me-lg-0">
                    <a class="nav-link" href="#"><i class="fa-solid fa-user"></i></a>
                </li>

                <li class="nav-item me-3 me-lg-0">
                    <a class="nav-link" href="#"><i class="fas fa-shopping-cart"></i></a>
                </li>

            </ul>

        </div>
        </div>
        <!-- Container wrapper -->
    </nav>
</header>
<!-- Navbar -->

controller
<div class="wrapper">
    <div class="inner">
        <div class="image-holder">
            <img src="/resources/form/images/IMG_5745.JPG" alt="">
        </div>
        <form:form modelAttribute="user" method="post">
            <h3>Sign up</h3>
            <div class="form-wrapper">
                <form:errors path="name" cssClass="error"/>
                <form:input path="name" type="text" placeholder="Name" class="form-control" style="box-shadow: none; border-color: #1a1e21;"/>
                <i class="zmdi zmdi-account"></i>
            </div>
            <form:errors path="email" cssClass="error"/>
            <div class="form-wrapper">
                <form:input path="email" type="text" placeholder="Email" class="form-control" style="box-shadow: none; border-color: #1a1e21;"/>
                <i class="zmdi zmdi-email"></i>
            </div>
            <form:errors path ="gender" cssClass="error"/>
            <div class="form-wrapper">
                <from:select path="gender" id="" class="form-control" style="box-shadow: none; border-color: #1a1e21; font-family: Poppins-Regular; font-size: 13.25px">
                    <option value="" disabled selected>Gender</option>
                    <form:option value="male" name="male">Male</form:option>
                    <form:option value="female" name="female">Female</form:option>
                    <form:option value="other" name="other">Other</form:option>
                </from:select>
                <i class="zmdi zmdi-caret-down" style="font-size: 17px"></i>
            </div>
            <form:errors path ="password" cssClass="error"/>
            <div class="form-wrapper">
                <form:input path="password" type="password" placeholder="Password" class="form-control" style="box-shadow: none; border-color: #1a1e21;"/>
                <i class="zmdi zmdi-lock"></i>
            </div>
            <form:errors path ="confirmPassword" cssClass="error"/>
            <div class="form-wrapper">
                <form:input path="confirmPassword" type="password" placeholder="Confirm password" class="form-control" style="box-shadow: none; border-color: #1a1e21;"/>
                <i class="zmdi zmdi-lock"></i>
            </div>

            <div class="flex-sb-m w-full p-b-48">
                <div class="contact100-form-checkbox">
                    <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                    <label class="label-checkbox100" for="ckb1">
                        Remember me
                    </label>
                </div>
            </div>
            <br/>

            <div>
                <form:button type="submit">Sign up
                    <i class="zmdi zmdi-arrow-right"></i>
                </form:button>
            </div>
            <br/>
            <div><p>Have an account? <a href="/login" class="signin">login</a></p>
            </div>
        </form:form>


    </div>
</div>

</body>
</html>
