<%@include file="commons/tags.jsp"%>
<%@include file="commons/bundle.jsp"%>

<html>
    <head>
        <title><fmt:message key="web.site.title"/></title>
        <%@include file="commons/head.jsp"%>
    </head>
    <body class="tcs-style">
        <div class="container">
            <div class="page-header">
                <h2 class="title">RESULT</h2>
                <span class="logo right"></span>
            </div>
            <fieldset>
                <div class="panel panel-default well">
                    <p class="lead"><fmt:message key="error.page.message"/></p>
                    <a class="btn btn-primary" role="button" href="<c:url value="/"/>">
                        <fmt:message key="result.page.backTo.homePage"/>
                    </a>
                </div>
            </fieldset>

            <%@include file="commons/footer.jsp"%>
        </div>
    </body>
</html>
