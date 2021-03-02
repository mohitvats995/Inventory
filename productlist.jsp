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
<h1>                                        PRODUCTS                                        </h1>
</pre>
<table>
  <tr>
    <th>Product Name</th>
    <th>Product ID</th>
    <th>HSN Code</th>
    <th>Quantity</th>
    <th>Price</th>
  </tr>
 	 <%
 	 Connection con=null;
           String pname=null;
           String pid=null;
           String phsn=null;
           String pquantity=null;
           String pprice=null;
           
           try
           {
        	   Class.forName("oracle.jdbc.driver.OracleDriver");
        	   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");   
        	   Statement  stmt=con.createStatement();
        	   String sql="select * from product";
        	   ResultSet rs=stmt.executeQuery(sql);
        	   while(rs.next())
        	   {
        		    pname=rs.getString(1);
        		    pid=rs.getString(2);
        		    phsn=rs.getString(3);
        		    pquantity=rs.getString(4);
        		    pprice=rs.getString(5);
        		    %>
        		    
        		    <tr>
        		    	<th><%=pname%></th>
        		    	<th><%=pid%></th>
        		    	<th><%=phsn%></th>
        		    	<th><%=pquantity%></th>
        		    	<th><%=pprice%></th>
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