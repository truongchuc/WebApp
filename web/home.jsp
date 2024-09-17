<%-- 
    Document   : home
    Created on : Sep 12, 2024, 8:51:23 AM
    Author     : tranq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="toan.dev.data.dao.Database" %>
<%@page import="toan.dev.data.dao.DatabaseDao" %>
<%@page import="toan.dev.data.dao.CategoryDao" %>
<%@page import="toan.dev.data.model.Category" %>
<%@page import="java.util.List" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String countries[] = {"Viet Nam", "Thai Lan", "Singapore"};
            DatabaseDao.init(new Database());
            CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
            List<Category> categoryList = categoryDao.findAll();
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Country</th>
                </tr>
            </thead>
            <tbody>
                <% for(int i=0; i < categoryList.size(); i++){ 
                    Category cat = categoryList.get(i);
                %>
                <tr>
                    <td><%= i+1 %></td>
                    <td><%= cat.getName() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>

    </body>
</html>
