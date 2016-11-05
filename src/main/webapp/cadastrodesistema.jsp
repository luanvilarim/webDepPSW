<%-- 
    Document   : cadastrodesistema
    Created on : Nov 5, 2016, 8:24:05 PM
    Author     : Luan
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <body>
        <form>
            <fieldset>
                <legend>Sistema</legend>
                Nome do Sistema: <input type="text"/><br>
                Servidor: <select><option>Apache</option></select>
            </fieldset>
            <fieldset>
                <legend>Logs</legend>
                Formato Logs de Acesso: <select><option>Common</option></select><br>
                Pasta dos Logs de Acesso: <input type="text"/><br>
                Prefixo dos Logs de Acesso: <input type="text"/><input value="Testar Acesso"><br>
                Pasta dos Logs de Erro: <input type="text"/><br>
                Prefixo dos Logs de Erro: <input type="text"/><input value="Testar Acesso"><br>
            </fieldset>
            <fieldset>
                <legend></legend>
            </fieldset>
        </form>
    </body>
</html>
