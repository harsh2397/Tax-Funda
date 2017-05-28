<%-- 
    Document   : sendprofile
    Created on : 15 May, 2017, 12:18:08 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

  <%
    try
    {
    String Pann=null,Pass=null;
    Pann=session.getAttribute("pann").toString();
    Pass=session.getAttribute("pass").toString();
    if((Pann!=null)&&(Pass!=null))
    {
        response.sendRedirect("profiles.jsp");
    }
    else
    {
        response.sendRedirect("login.jsp");
    }
    }
    catch(Exception e)
    {
        response.sendRedirect("login.jsp");
    }
    %>