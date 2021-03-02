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
<h1>                                     PURCHASE DETAILS                                        </h1>
</pre>
<table>
  <tr>
    <th>Invoice Number</th>
    <th>Seller Name</th>
    <th>Purchase Date</th>
    <th>Product Name</th>
    <th>Quantity</th>
    <th>Amount</th>
  </tr>
 



 	 <%
 	 Connection con=null;
           String invoice=null;
           String seller=null;
           String pdate=null;
           String pname=null;
           String quantity=null;
           String amount=null;
           
           try
           {
        	   Class.forName("oracle.jdbc.driver.OracleDriver");
        	   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");   
        	   Statement  stmt=con.createStatement();
        	   String sql="select * from purchase";
        	   ResultSet rs=stmt.executeQuery(sql);
        	   while(rs.next())
        	   {
        		   invoice=rs.getString(1);
        		   seller=rs.getString(2);
        		   pdate=rs.getString(3);
        		   pname=rs.getString(4);
        		   quantity=rs.getString(5);
        		   amount=rs.getString(6);
        		    %>
        		    
        		    <tr>
        		    	<th><%=invoice%></th>
        		    	<th><%=seller%></th>
        		    	<th><%=pdate%></th>
        		    	<th><%=pname%></th>
        		    	<th><%=quantity%></th>
        		    	<th><%=amount%></th>
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