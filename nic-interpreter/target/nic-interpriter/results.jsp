<%-- 
    Document   : results
    Created on : Sep 11, 2013, 9:37:44 PM
    Author     : DANUSHKA
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@page import="cse.maven.sample.NicInterpreter"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center"><u>NIC Interpretation-Results</u></h1>
        
        <%  try{ 
             String number =  request.getParameter("nic");
             NicInterpreter nic = new NicInterpreter(number);
        %>
        <br>
        <h2> Birthday Information :</h2>
        <% out.println("Year : "+nic.getYear()); %>
        <% out.println("Month : "+nic.getMonth()); %>
        <% out.println("Date : "+nic.getDate()); %>
        <br>
        <h2> Gender Information :</h2>
        <% out.println(nic.getGender()); %>
        <br>
        <h2>Voting information :</h2>
        <% out.println("Is voter: "+nic.isVoter());%>
        <%    }
             catch(Exception ex){
                    out.println("Enter NIC number correctly");
                }
        %>
           
            
    </body>
</html>
