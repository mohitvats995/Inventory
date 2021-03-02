<%@page import="java.sql.*"%>
<html>
<head>
    <title>Purchase Entered</title>
    <link href="css/purchasedetailentered.css" rel="stylesheet" type="text/css">
</head> 
<body>
    <header>
        
    <div class="row">
        <div class="logo">
        </div>
            
    <ul class="main-nav">    
        <li><a href="home.jsp">HOME</a></li>
    </ul>    
        
    </div>
        
    <div class="hero">
    
 	 <%
 	 	   Connection con=null;
           String amount=null;
           long psum=0;
           long ssum=0;
           
           try
           {
        	   Class.forName("oracle.jdbc.driver.OracleDriver");
        	   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");   
        	   Statement  stmt=con.createStatement();
        	   String sql="select* from purchase";
        	   ResultSet rs=stmt.executeQuery(sql);
        	   while(rs.next())
        	   {
        		   long a;
        		  
        		   amount=rs.getString(6);
        		   a=Integer.parseInt(amount);
        		   psum+=a;
        		   System.out.println(psum);
        		  }
        	   %>
        	   
        	   <tr>
		    	<th><h2>total puchase amount :<%=psum%></h2></th>
		    	
		    </tr><br>
<% 		         sql="select* from sale";
        	    rs=stmt.executeQuery(sql);
        	   while(rs.next())
        	   {
        		   long a;
        		  
        		   amount=rs.getString(6);
        		   a=Integer.parseInt(amount);
        		   ssum+=a;
        		   System.out.println(ssum);
        		  }
        	   %>
        	   
        	      
        
    <tr>
		    	<th><h2>total sell amount :<%=ssum%></h2></th>
		    	
		    </tr>
        
   
		    <% 

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
    <pre><h1>        </h1></pre>
    
    	
   
            
            
    </div>
    
    </header>


        
</body>    
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>