<%@page import="java.sql.*"%>
<html>
<head>
<style>
body
{
    margin: 0;
    padding: 0;
    background: url(companylist.jpg);
    font-size: 16px;
    color: #777;
    font-family: sans-serif;
    font-weight: bold;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
<pre>
<h1>                                        COMPANIES                                        </h1>
</pre>
<table>
  <tr>
    <th>Company Name</th>
    <th>GST Number</th>
    <th>Contact Number</th>
    <th>Email-id</th>
    <th>Address</th>
  </tr>
 	 <%
 	 Connection con=null;
           String cname=null;
           String cgstin=null;
           String cmobile=null;
           String cemail=null;
           String caddress=null;
           
           try
           {
        	   Class.forName("oracle.jdbc.driver.OracleDriver");
        	   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");   
        	   Statement  stmt=con.createStatement();
        	   String sql="select * from company";
        	   ResultSet rs=stmt.executeQuery(sql);
        	   while(rs.next())
        	   {
        		    cname=rs.getString(1);
        		    cgstin=rs.getString(2);
        		    cmobile=rs.getString(3);
        		    cemail=rs.getString(4);
        		    caddress=rs.getString(5);
        		    %>
        		    
        		    <tr>
        		    	<th><%=cname%></th>
        		    	<th><%=cgstin%></th>
        		    	<th><%=cmobile%></th>
        		    	<th><%=cemail%></th>
        		    	<th><%=caddress%></th>
        		    </tr>
        		    
        		    <%
        		  }

        	  } catch (SQLException e) {
        	    		System.out.println("DataBase error " + e.getMessage());
        	    		e.printStackTrace();
        	    	} catch (Exception e) {
        	    		System.out.println("ERROR " + e.getMessage());
        	    		e.printStackTrace();
        	    	} finally {
        	    		if (con != null) {
        	    			try {
        	    				con.close();
        	    			} catch (Exception e) {
        	    				System.out.println("connection closing problem " + e.getMessage());
        	    			}
        	    		}

        	    	} //finally
        	    %>
</table>

</body>
</html>