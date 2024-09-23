<%@include file="header.html"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>
    <%
    String msg=request.getParameter("msg");
    if("valid".equals(msg))
    {
        %>
        <center><font color="red" size="5">successfully updated</font></center>
   <% }
   %>
        <%

    if("invalid".equals(msg))
    {
        %>
        <center><font color="red" size="5">something went wrong.</font></center>
   <% }
   %>
        
        
        
    
    
<% 

try{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from donor");
 /*   if(rs.first()){
        id=rs.getInt(1);
        id+=1;
    }*/%>
    <div class="container">
  
    <%
}catch(Exception e)
{}
%>
<div class="container">
    <form action="addNewDonorAction.jsp" method="GET">
        <h2>ID</h2>
        <input type="text" placeholder="Enter ID" name="id">
        <hr>
        <h2>Name</h2>
        <input type="text" placeholder="Enter Name" name="name">
        <hr>
        <h2>Father name</h2>
        <input type="text" placeholder="Enter Father Name" name="father">
        <hr>
        <h2>Mother Name</h2>
        <input type="text" placeholder="Enter Mother Name" name="mother">
        <hr>
        <h2>Mobile number</h2>
        <input type="number" placeholder="Enter Mobile Number" name="mobilenumber">
        <hr>
        <h2>gender</h2>
        <select name="gender">
            <option value="Male">Male</option>
                        <option value="female">Female</option>
            <option value="Others">Others</option>
        </select>
        <hr>
        <h2>email</h2>
        <input type="email" placeholder="Enter Email id" name="email">
        <hr>
        <h2>blood group</h2>
        <select name="bloodgroup">
            <option value="A+">A+</option>
            <option value="A-">A-</option
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>

        </select>
        <h2>Address</h2>
        <input type="text" placeholder="Enter Address" name="address">
        <br>
        <center><button type="submit" class="button">Save</button></center>
      
    </form>
</div>

 

<br>
<br>
<br>
<br>


</body>
</html>