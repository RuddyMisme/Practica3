<%@page import="com.emergentes.entidades.Contacto"%>
<%@page import="java.util.List"%>
<%
    List<Contacto> lista = (List<Contacto>) request.getAttribute("contactos");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table {
                width: 500px;
                border: 2px solid yellow;
                border-collapse: collapse;
                background: black;
            }

            td {
                border: 1px solid black;
                padding: 8px;
                text-align: left;
                color: aqua;
                text-align: center;
                border-bottom: 2px solid yellow;
                border-left: 2px solid yellow;
                border-top: 2px solid yellow;

            }
            th {
                border: 1px solid black;
                padding: 8px;
                text-align: left;
                color: greenyellow;
                text-align: center;

            }
            a{
                color: white;
            }
            #aa{
             color: blueviolet;
             font-size: 20px;
            }
            h1{
                color: brown;
            }
        </style>

    </head>

    <body>
    <center>
        <h1>CONTACTOS</h1>
        <a id="aa" href="MainController?action=add">Nuevo</a>
    </center>

    <center>
        <table border="1" cellspacing="0" cellpadding="10"  width="50%"  >
            <tr id="idth">
                <th>Id</th>
                <th>Nombre</th>
                <th>Correo</th>
                <th>Telefono</th>
                <th colspan="2">Acciones</th>
            </tr>
            <%
                for (Contacto item : lista) {
            %>

            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getNombre()%></td>
                <td><%= item.getCorreo()%></td>
                <td><%= item.getTelefono()%></td>
                <td><a href="MainController?action=edit&id=<%= item.getId()%>">Editar</a></td>
                <td><a href="MainController?action=dele&id=<%= item.getId()%>" onclick="return(confirm('Eliminar??'))">Eliminar</a></td>
            </tr>
            <%
                }
            %>
        </table>
    </center>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>
