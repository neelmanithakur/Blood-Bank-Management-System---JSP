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
<center>
<table id="customers">
    <tr>
        <th>Name</th>
        <th>Mobile Number</th>
        <th>Email</th>
        <th>Blood Group</th>
        <th>Done</th>
        
        
    </tr>

        <%
        try{
            Connection con=ConnectionProvider.getCon();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from bloodrequest where  status='pending'");
            while(rs.next())
            {       
        %>
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><a href="requestForBloodDone.jsp?mobilenumber=<%=rs.getString(2)%>">Done</a></td
        
    </tr>
  <%
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
  
  %>
</table>
<form action="requestForBloodDelete.jsp" method="GET">
<hr>
        <h2>Mobile number</h2>
        <input type="number" placeholder="Enter Mobile Number" name="mobilenumber">
                <center><button type="submit" class="button">Delete</button></center>
</form>
</center>
<br>
<br>
<br>
<br>

</body>
</html>