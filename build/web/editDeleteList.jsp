<%@include file="header.html"%>

<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<br>
<%
    String msg=request.getParameter("msg");
    if("valid".equals(msg))
    {%>
<center><font color="red" size="5">successfully updated</font></center>

    <%
        
    }
    %>
    <%
   
    if("invalid".equals(msg))
    {%>
<center><font color="red" size="5">something went wrong</font></center>

    <%
        
    }
    %>
    
    <%
    
    if("deleted".equals(msg))
    {%>
<center><font color="red" size="5">successfully deleted</font></center>

    <%
        
    }
    %>
    
<center>
    <table id="customers">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Father Name</th>
            <th>Mother Name</th>
            <th>Mobile number</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Blood Group</th>
            <th>Address</th>
           
        </tr>
       
            <%
              try{  
                  Connection con=ConnectionProvider.getCon();
                  Statement st=con.createStatement();
                  ResultSet rs=st.executeQuery("select * from donor");
                  while(rs.next())
                  {
                %>
                <tr>
                    <td><%=rs.getInt(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(9)%></td>
                    
                    
                    
                </tr>    
                    <%
                    
                  }
                  
              }
              catch(Exception e)
              {
                  System.out.println(e);
                  
              }
                        
               %> 
               
       </tr>
    </table>
</center>
<form action="updateDonor.jsp" method="GET">
<hr>
        <h2>Edit</h2>
        <input type="number" placeholder="Edit Details" name="id">
                <center><button type="submit" class="button">Edit</button></center>
</form>
<form action="deleteDonor.jsp" method="GET">
<hr>
        <h2>Delete</h2>
        <input type="number" placeholder="Delete Donor id" name="id">
                <center><button type="submit" class="button">Delete</button></center>
</form>






<br>
<br>
<br>

</body>
</html>