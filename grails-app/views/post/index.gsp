<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <asset:javascript src="fp.js"/>
        <asset:stylesheet src="fp.css"/>
    </head>
    <body>
        <a href="#list-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                <li><filterpane:filterButton text="Buscar" appliedText="Cambiar Filtro"/></li>
            </ul>
        </div>
        <div id="list-post" class="content scaffold-list" role="main">
            <filterpane:filterPane domain="Post" /><hr>

            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <f:table collection="${postList}" />
            <div class="pagination">
                <g:paginate total="${postCount ?: 0}" />
            </div>
        </div>
    </body>
</html>