<html>
<head>
<title> Add Company Form </title>   
    <link rel="stylesheet" type="text/css" href="css/purchase.css">
</head>
<body>
    <div id="login-box">
      <div class="left-box">
	  <form action="purchase"  onsubmit="return confirm()"  method="post">
        
 
		  <input type="text" name="invoiceno" placeholder="Invoice Number" autocomplete="off"/>
		  
						
						
		  				
		  
          <input type="text"  name="sellername" placeholder="Seller Company" autocomplete="off"/>
		  
						
						
		  <input type="date" name="date" autocomplete="off" placeholder="DD/MM/YYYY"/>
		  
		  
		  
		  
		  <input type="text" name="productname" placeholder="Product Name" autocomplete="off"/>
	      
<input type="text" name="quantity" placeholder="Quantity" autocomplete="off" required/>
<input type="text" name="amount" placeholder="Amount" autocomplete="off" required/>
		 
						
          <input type="submit" name="signup-button" value="ADD"/>
		  </form>
		</div>
    </div>
</body>    
</html>