<html>
<head>
<title> Add Company Form </title>   
    <link rel="stylesheet" type="text/css" href="css/addproduct.css">
</head>
<body>
    <div id="login-box">
      <div class="left-box">
	  <form action="addproduct"  onsubmit="return confirm()"  method="post">
	  <!--   <img src="Signup-logotype-V1.png" class="avatar"> -->
        
 
		  <input type="text" name="productname" placeholder="Product Name" autocomplete="off"/>
		  
						
						
		  				
		  
          <input type="text"  name="productid" placeholder="PRODUCT ID" autocomplete="off"/>
		  
						
						
		  <input type="mobile" name="hsncode" autocomplete="off" placeholder="HSN CODE"/>
		  
		  
		  
		  
		  <input type="text" name="cp" placeholder="Cost Price" autocomplete="off"/>
	      
<input type="text" name="sp" placeholder="Selling Price" autocomplete="off" required/>
		 
						
          <input type="submit" name="signup-button" value="ADD"/>
		  </form>
		</div>
    </div>
</body>    
</html>