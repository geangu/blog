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
                <li><filterpane:filterButton text="Filtro" appliedText="Cambiar Filtro"/></li>
            </ul>
        </div>
        <div id="list-post" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /> - <filterpane:isNotFiltered>Sin Filtro</filterpane:isNotFiltered><filterpane:isFiltered>Con Filtro</filterpane:isFiltered></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <filterpane:filterPane domain="Post" />
            <table>
                <thead>
                    <tr>
                        <th>
                            title
                        </th>
                        <th>
                            actions
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <g:each var="post" in="${this.postList}">
                        <tr>
                            <td>
                                ${post}
                            </td>
                            <td>
                                <button type="button" name="button">Algo</button>
                            </td>
                        </tr>
                    </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${postCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
