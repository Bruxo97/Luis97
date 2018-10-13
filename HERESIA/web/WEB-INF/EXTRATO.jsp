<%-- 
    Document   : EXTRATO
    Created on : 13/10/2018, 18:25:35
    Author     : Infoworld
--%>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Timestamp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EXTRATO</title>
    </head>
    <body>
       <%
          try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c =  DriverManager.getConnection("jdbc:mysql://localhost/projeto?zeroDateTimeBehavior=convertToNull","root","");
            PreparedStatement  p =  c.prepareStatement("select * from movimento ORDER BY id ASC LIMIT 100");
            ResultSet r =  p.executeQuery() ; %>

<div class="container">
<br> <br> <h2>EXTRATO</h2>
 <a href="movimento.jsp" onClick="">Fazer um novo movimento</a>
<br><br> 
<table class="table table-striped table-responsive">
    <thead>
      <tr>
        <th>Conta</th>
        <th>Cpf Responsável</th>
        <th>Data da Operação</th>
        <th>Valor Operação</th>
        <% while (r.next()){ %>
      </tr>
    </thead>
    <tbody>
      <tr>
         <td><%=r.getString("conta")%> </td>  
        <td><%=r.getString("cpf")%> </td>
        <td><%=r.getString("data")%> </td>
        <td><%=r.getDouble("valor")%>R$ </td>
      </tr>
      
      <%}
        } catch (Exception ex) {
          response.getWriter().print("Erro: " + ex.getMessage());

}
%>
    </tbody>
  </table>
  </div>
  <br><br><br>
  <%
          try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/projeto","root",""); 
Statement st=con.createStatement();
String strQuery = "SELECT SUM(valor) FROM movimento";
ResultSet rs = st.executeQuery(strQuery);
Double Countrun;

  %>
  <div class="container">
      <%while(rs.next()){%>
  <h4> 
      <%Countrun = rs.getDouble(1);
    DecimalFormat df = new DecimalFormat("0.##");  
    out.println("Saldo: "+df.format(Countrun)+"R$");%>
  </h4>

<%}
        } catch (Exception ex) {
          response.getWriter().print("Erro: " + ex.getMessage());

}
%>
