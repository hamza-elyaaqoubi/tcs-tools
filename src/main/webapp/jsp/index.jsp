<%@include file="commons/tags.jsp"%>
<%@include file="commons/bundle.jsp"%>

<!DOCTYPE html>
<html lang="${lang}">
    <head>
        <title><fmt:message key="web.site.title"/></title>
        <%@include file="commons/head.jsp"%>
    </head>

    <body class="tcs-style">
        <div class="container">
            <section id="forms">
                <div class="page-header">
                    <h2 class="title"><fmt:message key="home.page.title"/></h2>
                    <span class="logo right"></span>
                </div>

                <form class="form-horizontal well" method="post" action="uploadFile" enctype="multipart/form-data">
                    <fieldset>
                        <div class="panel panel-default">
                            <div class="panel-heading uppercase"><fmt:message key="home.page.choose"/></div>
                            <div class="panel-body">
                                <div class="control-group" style="margin: 1em 12em;">
                                    <input id="firstFileName" placeholder="<fmt:message key="home.page.placeholder.file1"/>" disabled="disabled">
                                    <div class="fileUpload btn btn-primary right">
                                        <span><fmt:message key="home.page.upload"/></span>
                                        <input name="fileUpload" id="firstFile" class="upload" type="file" 
                                               accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document, application/octet-stream, application/msword">
                                    </div>
                                </div>
                                <div class="control-group" style="margin: 1em 12em;">
                                    <input id="secondFileName" placeholder="<fmt:message key="home.page.placeholder.file2"/>" disabled="disabled">
                                    <div class="fileUpload btn btn-primary right">
                                        <span><fmt:message key="home.page.upload"/></span>
                                        <input name="fileUpload" id="secondFile" class="upload" type="file" accept=".pdf">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div class="form-actions" style="margin: 0 35em;">
                        <button id="sendButton" type="submit" class="btn btn-primary btn-lg" disabled="disabled">
                            <fmt:message key="home.page.launch"/>
                        </button>
                    </div>
                </form>
                <div class="row">
                    <div class="col-lg-8">
                    </div>
                </div>
            </section>

            <%@include file="commons/footer.jsp"%>
        </div>

        <script type="text/javascript" src="<c:url value="/resources/assets/js/main.js"/>"></script>
    </body>
</html>

