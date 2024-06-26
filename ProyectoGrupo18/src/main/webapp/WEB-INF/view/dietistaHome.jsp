<%--
Autores:
Pablo Astudillo Fraga:90%
Miguel Sánchez Hontoria:10%
--%>

<%@ page import="es.uma.proyectogrupo18.entity.UsuarioEntity" %>
<%@ page import="es.uma.proyectogrupo18.dto.Usuario" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
    String tipo = (String) request.getSession().getAttribute("tipo");
%>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/styles.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/opcionesAdmin.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            background: url('${pageContext.request.contextPath}/images/fondoDietas3.png') no-repeat center center fixed;
            background-size: cover;
        }
    </style>

</head>
<body>

<jsp:include page="navbarDietista.jsp"/>

<div class="opcionesAdmin">
    <table>
        <tr>
            <td>
                <a href="/<%=tipo%>/info?id=<%=usuario.getId()%>"><button>Dietas</button></a>
            </td>
            <td>
                <a href="/<%=tipo%>/clientes"><button>Clientes</button></a>
            </td>
        </tr>
    </table>
</div>

</body>
</html>
