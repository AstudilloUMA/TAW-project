<!--
Autor:
Juan Manuel Porcuna Martín
-->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.List" %>
<%@ page import="es.uma.proyectogrupo18.entity.UsuarioEntity" %>
<%@ page import="es.uma.proyectogrupo18.entity.ClienteEntity" %>
<%@ page import="es.uma.proyectogrupo18.dto.Cliente" %>
<%@ page import="es.uma.proyectogrupo18.dto.Usuario" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cliente cliente = (Cliente) request.getAttribute("cliente");
    List<Usuario> entrenadores = (List<Usuario>) request.getAttribute("entrenadores");
    List<Usuario> dietistas = (List<Usuario>) request.getAttribute("diestistas");

%>
<html>
<head>
    <title>Asignar trabajador</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/styles.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/opcionesAdmin.css">
</head>
<body>
<jsp:include page="navbarAdmin.jsp"/>
<h1>Asignar Entrenador/Dietista</h1>
<form method="post" action="/admin/asignado">
    <input type="hidden" name="id" value="<%= cliente.getId()%>">
    <input type="hidden" name="entrenadorPre" value="<%=cliente.getEntrenador()==null?0:cliente.getEntrenador().getId()%>">
    <input type="hidden" name="dietistaPre" value="<%=cliente.getDietista()==null?0:cliente.getDietista().getId()%>">

    <table border="0">
        <tr>
            <td>Entrenador:
                <select name="entrenador">
                    <option value=0>Sin Asignar</option>
                    <%
                        for (Usuario entrenador : entrenadores) {
                            String seleccionado = "";
                            if(cliente.getEntrenador()!=null){
                                if (entrenador.getId() == cliente.getEntrenador().getId()) {
                                    seleccionado = "selected";
                                }

                            }

                    %>
                    <option value="<%=entrenador.getId() %>" <%=seleccionado %>>
                        <%=entrenador.getNombre() %> <%=entrenador.getApellidos() %> -
                        <%=entrenador.getTrabajador().getRol().getId() == 1 ? "Dietista" :
                                entrenador.getTrabajador().getRol().getId() == 2 ? "Entrenador Cross-training" :
                                        "Entrenador Bodybuilding" %>
                    </option>
                    <%
                        }
                    %>
                </select>

            </td>
            <td>Dietista:
                <select name="dietista">
                    <option value=0>Sin Asignar</option>
                    <%
                        for (Usuario dietista: dietistas) {
                            String seleccionado = "";

                            if(cliente.getDietista()!=null){
                                if (dietista.getId() == cliente.getDietista().getId()) {
                                    seleccionado = "selected";
                                }
                            }
                    %>
                    <option value="<%=dietista.getId() %>"  <%=seleccionado %>  ><%=dietista.getNombre()%> <%=dietista.getApellidos()%></option>

                    <%
                        }
                    %>
                </select>
            </td>
        </tr>

        <tr>
            <td colspan="2"> <button>Enviar</button></td>
        </tr>
    </table>
</form>


</body>
</html>
