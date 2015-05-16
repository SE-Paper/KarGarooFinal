<%@ page import="kargaroo.forum.DiscussionThread" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="menu"/>
    <title>Kar-garoo Foro</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'forum.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js',file: 'jquery-1.10.2.min.js')}"></script>
    <script src="${resource(dir: 'js',file: 'parallax.js')}"></script>
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
</head>
<body>

<div style="margin-bottom:-54px" align="right">
    <g:link class="btn btn-default" controller="forum" action="index" >
        <i class="fa fa-arrow-left"></i>
    </g:link>
</div>
<div class="bs-callout bs-callout-default">

    <div class="header">

        <h2>${thread.subject}</h2>
        <h5>Tema: ${thread.topic.title}</h5>
    </div>
    <g:each in="${comments}" var="comment">

        <div class="list-group-item">
            <div class="item-title">
                <h4><b>${comment.commentBy.userName}</b></h4>
                <span class="topicDesc">
                    <span class="tagForo"><g:formatDate date="${comment.createDate}" format="dd MMM yyyy hh:mma"/></span>
                </span>
        </div>
            <div class="item-body">
                ${comment.body}
                </div>
        </div>

    </g:each>

    <div class="pagination">
        <g:paginate total="${numberOfComments}" params="${[threadId:thread.id]}"/>
    </div>

</div>

<div class="bs-callout bs-callout-default">
    <div class="header">
    <h2>Escribe algo</h2>
        </div>
    <g:form>
        <g:textArea class="form-control" name="body"></g:textArea>
        <g:hiddenField name="threadId" value="${thread.id}"/>
        <fieldset>
            <g:actionSubmit class="btn-success" value="Comentar" action="postReply"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>